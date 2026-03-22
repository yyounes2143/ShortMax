package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes6.dex */
public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    /* loaded from: classes6.dex */
    public static class CachingCounters {
        public volatile long alreadyCachedBytes;
        public volatile long contentLength = -1;
        public volatile long newlyCachedBytes;

        public long totalCachedBytes() {
            return this.alreadyCachedBytes + this.newlyCachedBytes;
        }
    }

    private CacheUtil() {
    }

    public static void cache(DataSpec dataSpec, Cache cache, DataSource dataSource, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean) throws IOException, InterruptedException {
        cache(dataSpec, cache, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, cachingCounters, atomicBoolean, false);
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    public static void getCached(DataSpec dataSpec, Cache cache, CachingCounters cachingCounters) {
        long j10;
        String key = getKey(dataSpec);
        long j11 = dataSpec.absoluteStreamPosition;
        long j12 = dataSpec.length;
        if (j12 == -1) {
            j12 = cache.getContentLength(key);
        }
        cachingCounters.contentLength = j12;
        cachingCounters.alreadyCachedBytes = 0L;
        cachingCounters.newlyCachedBytes = 0L;
        long j13 = j11;
        long j14 = j12;
        while (j14 != 0) {
            int i10 = (j14 > (-1L) ? 1 : (j14 == (-1L) ? 0 : -1));
            if (i10 != 0) {
                j10 = j14;
            } else {
                j10 = Long.MAX_VALUE;
            }
            long cachedLength = cache.getCachedLength(key, j13, j10);
            if (cachedLength > 0) {
                cachingCounters.alreadyCachedBytes += cachedLength;
            } else {
                cachedLength = -cachedLength;
                if (cachedLength == Long.MAX_VALUE) {
                    return;
                }
            }
            j13 += cachedLength;
            if (i10 == 0) {
                cachedLength = 0;
            }
            j14 -= cachedLength;
        }
    }

    public static String getKey(DataSpec dataSpec) {
        String str = dataSpec.key;
        if (str == null) {
            return generateKey(dataSpec.uri);
        }
        return str;
    }

    private static long readAndDiscard(DataSpec dataSpec, long j10, long j11, DataSource dataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i10, CachingCounters cachingCounters) throws IOException, InterruptedException {
        int length;
        DataSpec dataSpec2 = dataSpec;
        while (true) {
            if (priorityTaskManager != null) {
                priorityTaskManager.proceed(i10);
            }
            try {
                try {
                    if (!Thread.interrupted()) {
                        DataSpec dataSpec3 = new DataSpec(dataSpec2.uri, dataSpec2.postBody, j10, (dataSpec2.position + j10) - dataSpec2.absoluteStreamPosition, -1L, dataSpec2.key, dataSpec2.flags | 2);
                        try {
                            long open = dataSource.open(dataSpec3);
                            if (cachingCounters.contentLength == -1 && open != -1) {
                                cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + open;
                            }
                            long j12 = 0;
                            while (true) {
                                if (j12 == j11) {
                                    break;
                                } else if (!Thread.interrupted()) {
                                    if (j11 != -1) {
                                        length = (int) Math.min(bArr.length, j11 - j12);
                                    } else {
                                        length = bArr.length;
                                    }
                                    int read = dataSource.read(bArr, 0, length);
                                    if (read == -1) {
                                        if (cachingCounters.contentLength == -1) {
                                            cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + j12;
                                        }
                                    } else {
                                        long j13 = read;
                                        j12 += j13;
                                        cachingCounters.newlyCachedBytes += j13;
                                    }
                                } else {
                                    throw new InterruptedException();
                                }
                            }
                            Util.closeQuietly(dataSource);
                            return j12;
                        } catch (PriorityTaskManager.PriorityTooLowException unused) {
                            dataSpec2 = dataSpec3;
                        }
                    } else {
                        throw new InterruptedException();
                        break;
                    }
                } catch (Throwable th2) {
                    Util.closeQuietly(dataSource);
                    throw th2;
                }
            } catch (PriorityTaskManager.PriorityTooLowException unused2) {
            }
            Util.closeQuietly(dataSource);
        }
    }

    public static void remove(Cache cache, String str) {
        for (CacheSpan cacheSpan : cache.getCachedSpans(str)) {
            try {
                cache.removeSpan(cacheSpan);
            } catch (Cache.CacheException unused) {
            }
        }
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i10, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean, boolean z10) throws IOException, InterruptedException {
        CachingCounters cachingCounters2 = cachingCounters;
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        if (cachingCounters2 != null) {
            getCached(dataSpec, cache, cachingCounters2);
        } else {
            cachingCounters2 = new CachingCounters();
        }
        CachingCounters cachingCounters3 = cachingCounters2;
        String key = getKey(dataSpec);
        long j10 = dataSpec.absoluteStreamPosition;
        long j11 = dataSpec.length;
        if (j11 == -1) {
            j11 = cache.getContentLength(key);
        }
        long j12 = j10;
        long j13 = j11;
        while (true) {
            long j14 = 0;
            if (j13 == 0) {
                return;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            int i11 = (j13 > (-1L) ? 1 : (j13 == (-1L) ? 0 : -1));
            long cachedLength = cache.getCachedLength(key, j12, i11 != 0 ? j13 : Long.MAX_VALUE);
            if (cachedLength <= 0) {
                long j15 = -cachedLength;
                if (readAndDiscard(dataSpec, j12, j15, cacheDataSource, bArr, priorityTaskManager, i10, cachingCounters3) < j15) {
                    if (z10 && i11 != 0) {
                        throw new EOFException();
                    }
                    return;
                }
                cachedLength = j15;
            }
            j12 += cachedLength;
            if (i11 != 0) {
                j14 = cachedLength;
            }
            j13 -= j14;
        }
    }
}
