package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class CachedContent {
    private static final int VERSION_MAX = Integer.MAX_VALUE;
    private static final int VERSION_METADATA_INTRODUCED = 2;

    /* renamed from: id  reason: collision with root package name */
    public final int f28490id;
    public final String key;
    private boolean locked;
    private DefaultContentMetadata metadata = DefaultContentMetadata.EMPTY;
    private final TreeSet<SimpleCacheSpan> cachedSpans = new TreeSet<>();

    public CachedContent(int i10, String str) {
        this.f28490id = i10;
        this.key = str;
    }

    public static CachedContent readFromStream(int i10, DataInputStream dataInputStream) throws IOException {
        CachedContent cachedContent = new CachedContent(dataInputStream.readInt(), dataInputStream.readUTF());
        if (i10 < 2) {
            long readLong = dataInputStream.readLong();
            ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
            ContentMetadataInternal.setContentLength(contentMetadataMutations, readLong);
            cachedContent.applyMetadataMutations(contentMetadataMutations);
        } else {
            cachedContent.metadata = DefaultContentMetadata.readFromStream(dataInputStream);
        }
        return cachedContent;
    }

    public void addSpan(SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean applyMetadataMutations(ContentMetadataMutations contentMetadataMutations) {
        DefaultContentMetadata defaultContentMetadata = this.metadata;
        DefaultContentMetadata copyWithMutationsApplied = defaultContentMetadata.copyWithMutationsApplied(contentMetadataMutations);
        this.metadata = copyWithMutationsApplied;
        return !copyWithMutationsApplied.equals(defaultContentMetadata);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CachedContent.class != obj.getClass()) {
            return false;
        }
        CachedContent cachedContent = (CachedContent) obj;
        if (this.f28490id == cachedContent.f28490id && this.key.equals(cachedContent.key) && this.cachedSpans.equals(cachedContent.cachedSpans) && this.metadata.equals(cachedContent.metadata)) {
            return true;
        }
        return false;
    }

    public long getCachedBytesLength(long j10, long j11) {
        long j12;
        SimpleCacheSpan span = getSpan(j10);
        if (span.isHoleSpan()) {
            if (span.isOpenEnded()) {
                j12 = Long.MAX_VALUE;
            } else {
                j12 = span.length;
            }
            return -Math.min(j12, j11);
        }
        long j13 = j10 + j11;
        long j14 = span.position + span.length;
        if (j14 < j13) {
            for (SimpleCacheSpan simpleCacheSpan : this.cachedSpans.tailSet(span, false)) {
                long j15 = simpleCacheSpan.position;
                if (j15 > j14) {
                    break;
                }
                j14 = Math.max(j14, j15 + simpleCacheSpan.length);
                if (j14 >= j13) {
                    break;
                }
            }
        }
        return Math.min(j14 - j10, j11);
    }

    public ContentMetadata getMetadata() {
        return this.metadata;
    }

    public SimpleCacheSpan getSpan(long j10) {
        SimpleCacheSpan createLookup = SimpleCacheSpan.createLookup(this.key, j10);
        SimpleCacheSpan floor = this.cachedSpans.floor(createLookup);
        if (floor != null && floor.position + floor.length > j10) {
            return floor;
        }
        SimpleCacheSpan ceiling = this.cachedSpans.ceiling(createLookup);
        if (ceiling == null) {
            return SimpleCacheSpan.createOpenHole(this.key, j10);
        }
        return SimpleCacheSpan.createClosedHole(this.key, j10, ceiling.position - j10);
    }

    public TreeSet<SimpleCacheSpan> getSpans() {
        return this.cachedSpans;
    }

    public int hashCode() {
        return (headerHashCode(Integer.MAX_VALUE) * 31) + this.cachedSpans.hashCode();
    }

    public int headerHashCode(int i10) {
        int i11;
        int hashCode;
        int hashCode2 = (this.f28490id * 31) + this.key.hashCode();
        if (i10 < 2) {
            long contentLength = ContentMetadataInternal.getContentLength(this.metadata);
            i11 = hashCode2 * 31;
            hashCode = (int) (contentLength ^ (contentLength >>> 32));
        } else {
            i11 = hashCode2 * 31;
            hashCode = this.metadata.hashCode();
        }
        return i11 + hashCode;
    }

    public boolean isEmpty() {
        return this.cachedSpans.isEmpty();
    }

    public boolean isLocked() {
        return this.locked;
    }

    public boolean removeSpan(CacheSpan cacheSpan) {
        if (this.cachedSpans.remove(cacheSpan)) {
            cacheSpan.file.delete();
            return true;
        }
        return false;
    }

    public void setLocked(boolean z10) {
        this.locked = z10;
    }

    public SimpleCacheSpan touch(SimpleCacheSpan simpleCacheSpan) throws Cache.CacheException {
        Assertions.checkState(this.cachedSpans.remove(simpleCacheSpan));
        SimpleCacheSpan copyWithUpdatedLastAccessTime = simpleCacheSpan.copyWithUpdatedLastAccessTime(this.f28490id);
        if (simpleCacheSpan.file.renameTo(copyWithUpdatedLastAccessTime.file)) {
            this.cachedSpans.add(copyWithUpdatedLastAccessTime);
            return copyWithUpdatedLastAccessTime;
        }
        throw new Cache.CacheException("Renaming of " + simpleCacheSpan.file + " to " + copyWithUpdatedLastAccessTime.file + " failed.");
    }

    public void writeToStream(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.f28490id);
        dataOutputStream.writeUTF(this.key);
        this.metadata.writeToStream(dataOutputStream);
    }
}
