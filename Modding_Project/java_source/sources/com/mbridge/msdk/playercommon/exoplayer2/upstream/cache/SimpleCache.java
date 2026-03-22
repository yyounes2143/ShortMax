package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes6.dex */
public final class SimpleCache implements Cache {
    private static final String TAG = "SimpleCache";
    private static boolean cacheFolderLockingDisabled;
    private static final HashSet<File> lockedCacheDirs = new HashSet<>();
    private final File cacheDir;
    private final CacheEvictor evictor;
    private final CachedContentIndex index;
    private final HashMap<String, ArrayList<Cache.Listener>> listeners;
    private boolean released;
    private long totalSpace;

    public SimpleCache(File file, CacheEvictor cacheEvictor) {
        this(file, cacheEvictor, null, false);
    }

    private void addSpan(SimpleCacheSpan simpleCacheSpan) {
        this.index.getOrAdd(simpleCacheSpan.key).addSpan(simpleCacheSpan);
        this.totalSpace += simpleCacheSpan.length;
        notifySpanAdded(simpleCacheSpan);
    }

    @Deprecated
    public static synchronized void disableCacheFolderLocking() {
        synchronized (SimpleCache.class) {
            cacheFolderLockingDisabled = true;
            lockedCacheDirs.clear();
        }
    }

    private SimpleCacheSpan getSpan(String str, long j10) throws Cache.CacheException {
        SimpleCacheSpan span;
        CachedContent cachedContent = this.index.get(str);
        if (cachedContent == null) {
            return SimpleCacheSpan.createOpenHole(str, j10);
        }
        while (true) {
            span = cachedContent.getSpan(j10);
            if (!span.isCached || span.file.exists()) {
                break;
            }
            removeStaleSpansAndCachedContents();
        }
        return span;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize() {
        SimpleCacheSpan simpleCacheSpan;
        if (!this.cacheDir.exists()) {
            this.cacheDir.mkdirs();
            return;
        }
        this.index.load();
        File[] listFiles = this.cacheDir.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (!file.getName().equals(CachedContentIndex.FILE_NAME)) {
                if (file.length() > 0) {
                    simpleCacheSpan = SimpleCacheSpan.createCacheEntry(file, this.index);
                } else {
                    simpleCacheSpan = null;
                }
                if (simpleCacheSpan != null) {
                    addSpan(simpleCacheSpan);
                } else {
                    file.delete();
                }
            }
        }
        this.index.removeEmpty();
        try {
            this.index.store();
        } catch (Cache.CacheException e10) {
            Log.e(TAG, "Storing index file failed", e10);
        }
    }

    public static synchronized boolean isCacheFolderLocked(File file) {
        boolean contains;
        synchronized (SimpleCache.class) {
            contains = lockedCacheDirs.contains(file.getAbsoluteFile());
        }
        return contains;
    }

    private static synchronized boolean lockFolder(File file) {
        synchronized (SimpleCache.class) {
            if (cacheFolderLockingDisabled) {
                return true;
            }
            return lockedCacheDirs.add(file.getAbsoluteFile());
        }
    }

    private void notifySpanAdded(SimpleCacheSpan simpleCacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanAdded(this, simpleCacheSpan);
            }
        }
        this.evictor.onSpanAdded(this, simpleCacheSpan);
    }

    private void notifySpanRemoved(CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanRemoved(this, cacheSpan);
            }
        }
        this.evictor.onSpanRemoved(this, cacheSpan);
    }

    private void notifySpanTouched(SimpleCacheSpan simpleCacheSpan, CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanTouched(this, simpleCacheSpan, cacheSpan);
            }
        }
        this.evictor.onSpanTouched(this, simpleCacheSpan, cacheSpan);
    }

    private void removeStaleSpansAndCachedContents() throws Cache.CacheException {
        ArrayList arrayList = new ArrayList();
        for (CachedContent cachedContent : this.index.getAll()) {
            Iterator<SimpleCacheSpan> it = cachedContent.getSpans().iterator();
            while (it.hasNext()) {
                SimpleCacheSpan next = it.next();
                if (!next.file.exists()) {
                    arrayList.add(next);
                }
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            removeSpan((CacheSpan) arrayList.get(i10), false);
        }
        this.index.removeEmpty();
        this.index.store();
    }

    private static synchronized void unlockFolder(File file) {
        synchronized (SimpleCache.class) {
            if (!cacheFolderLockingDisabled) {
                lockedCacheDirs.remove(file.getAbsoluteFile());
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> addListener(String str, Cache.Listener listener) {
        try {
            Assertions.checkState(!this.released);
            ArrayList<Cache.Listener> arrayList = this.listeners.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.listeners.put(str, arrayList);
            }
            arrayList.add(listener);
        } catch (Throwable th2) {
            throw th2;
        }
        return getCachedSpans(str);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations) throws Cache.CacheException {
        Assertions.checkState(!this.released);
        this.index.applyContentMetadataMutations(str, contentMetadataMutations);
        this.index.store();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void commitFile(File file) throws Cache.CacheException {
        boolean z10;
        boolean z11 = true;
        Assertions.checkState(!this.released);
        SimpleCacheSpan createCacheEntry = SimpleCacheSpan.createCacheEntry(file, this.index);
        if (createCacheEntry != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkState(z10);
        CachedContent cachedContent = this.index.get(createCacheEntry.key);
        Assertions.checkNotNull(cachedContent);
        Assertions.checkState(cachedContent.isLocked());
        if (!file.exists()) {
            return;
        }
        if (file.length() == 0) {
            file.delete();
            return;
        }
        long contentLength = ContentMetadataInternal.getContentLength(cachedContent.getMetadata());
        if (contentLength != -1) {
            if (createCacheEntry.position + createCacheEntry.length > contentLength) {
                z11 = false;
            }
            Assertions.checkState(z11);
        }
        addSpan(createCacheEntry);
        this.index.store();
        notifyAll();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized long getCacheSpace() {
        Assertions.checkState(!this.released);
        return this.totalSpace;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedLength(String str, long j10, long j11) {
        long j12;
        Assertions.checkState(!this.released);
        CachedContent cachedContent = this.index.get(str);
        if (cachedContent != null) {
            j12 = cachedContent.getCachedBytesLength(j10, j11);
        } else {
            j12 = -j11;
        }
        return j12;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    @NonNull
    public synchronized NavigableSet<CacheSpan> getCachedSpans(String str) {
        TreeSet treeSet;
        try {
            Assertions.checkState(!this.released);
            CachedContent cachedContent = this.index.get(str);
            if (cachedContent != null && !cachedContent.isEmpty()) {
                treeSet = new TreeSet((Collection) cachedContent.getSpans());
            }
            treeSet = new TreeSet();
        } catch (Throwable th2) {
            throw th2;
        }
        return treeSet;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized long getContentLength(String str) {
        return ContentMetadataInternal.getContentLength(getContentMetadata(str));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized ContentMetadata getContentMetadata(String str) {
        Assertions.checkState(!this.released);
        return this.index.getContentMetadata(str);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized Set<String> getKeys() {
        Assertions.checkState(!this.released);
        return new HashSet(this.index.getKeys());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r3.getCachedBytesLength(r4, r6) >= r6) goto L8;
     */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isCached(java.lang.String r3, long r4, long r6) {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.released     // Catch: java.lang.Throwable -> L19
            r1 = 1
            r0 = r0 ^ r1
            com.mbridge.msdk.playercommon.exoplayer2.util.Assertions.checkState(r0)     // Catch: java.lang.Throwable -> L19
            com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContentIndex r0 = r2.index     // Catch: java.lang.Throwable -> L19
            com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CachedContent r3 = r0.get(r3)     // Catch: java.lang.Throwable -> L19
            if (r3 == 0) goto L1b
            long r3 = r3.getCachedBytesLength(r4, r6)     // Catch: java.lang.Throwable -> L19
            int r3 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r3 < 0) goto L1b
            goto L1c
        L19:
            r3 = move-exception
            goto L1e
        L1b:
            r1 = 0
        L1c:
            monitor-exit(r2)
            return r1
        L1e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L19
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.SimpleCache.isCached(java.lang.String, long, long):boolean");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void release() throws Cache.CacheException {
        if (this.released) {
            return;
        }
        this.listeners.clear();
        removeStaleSpansAndCachedContents();
        unlockFolder(this.cacheDir);
        this.released = true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void releaseHoleSpan(CacheSpan cacheSpan) {
        Assertions.checkState(!this.released);
        CachedContent cachedContent = this.index.get(cacheSpan.key);
        Assertions.checkNotNull(cachedContent);
        Assertions.checkState(cachedContent.isLocked());
        cachedContent.setLocked(false);
        this.index.maybeRemove(cachedContent.key);
        notifyAll();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void removeListener(String str, Cache.Listener listener) {
        if (this.released) {
            return;
        }
        ArrayList<Cache.Listener> arrayList = this.listeners.get(str);
        if (arrayList != null) {
            arrayList.remove(listener);
            if (arrayList.isEmpty()) {
                this.listeners.remove(str);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void removeSpan(CacheSpan cacheSpan) throws Cache.CacheException {
        Assertions.checkState(!this.released);
        removeSpan(cacheSpan, true);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized void setContentLength(String str, long j10) throws Cache.CacheException {
        ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
        ContentMetadataInternal.setContentLength(contentMetadataMutations, j10);
        applyContentMetadataMutations(str, contentMetadataMutations);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized File startFile(String str, long j10, long j11) throws Cache.CacheException {
        CachedContent cachedContent;
        try {
            Assertions.checkState(!this.released);
            cachedContent = this.index.get(str);
            Assertions.checkNotNull(cachedContent);
            Assertions.checkState(cachedContent.isLocked());
            if (!this.cacheDir.exists()) {
                this.cacheDir.mkdirs();
                removeStaleSpansAndCachedContents();
            }
            this.evictor.onStartFile(this, str, j10, j11);
        } catch (Throwable th2) {
            throw th2;
        }
        return SimpleCacheSpan.getCacheFile(this.cacheDir, cachedContent.f28490id, j10, System.currentTimeMillis());
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, byte[] bArr) {
        this(file, cacheEvictor, bArr, bArr != null);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized SimpleCacheSpan startReadWrite(String str, long j10) throws InterruptedException, Cache.CacheException {
        SimpleCacheSpan startReadWriteNonBlocking;
        while (true) {
            startReadWriteNonBlocking = startReadWriteNonBlocking(str, j10);
            if (startReadWriteNonBlocking == null) {
                wait();
            }
        }
        return startReadWriteNonBlocking;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache
    public synchronized SimpleCacheSpan startReadWriteNonBlocking(String str, long j10) throws Cache.CacheException {
        Assertions.checkState(!this.released);
        SimpleCacheSpan span = getSpan(str, j10);
        if (span.isCached) {
            SimpleCacheSpan simpleCacheSpan = this.index.get(str).touch(span);
            notifySpanTouched(span, simpleCacheSpan);
            return simpleCacheSpan;
        }
        CachedContent orAdd = this.index.getOrAdd(str);
        if (orAdd.isLocked()) {
            return null;
        }
        orAdd.setLocked(true);
        return span;
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, byte[] bArr, boolean z10) {
        this(file, cacheEvictor, new CachedContentIndex(file, bArr, z10));
    }

    private void removeSpan(CacheSpan cacheSpan, boolean z10) throws Cache.CacheException {
        CachedContent cachedContent = this.index.get(cacheSpan.key);
        if (cachedContent == null || !cachedContent.removeSpan(cacheSpan)) {
            return;
        }
        this.totalSpace -= cacheSpan.length;
        if (z10) {
            try {
                this.index.maybeRemove(cachedContent.key);
                this.index.store();
            } finally {
                notifySpanRemoved(cacheSpan);
            }
        }
    }

    SimpleCache(File file, CacheEvictor cacheEvictor, CachedContentIndex cachedContentIndex) {
        if (lockFolder(file)) {
            this.cacheDir = file;
            this.evictor = cacheEvictor;
            this.index = cachedContentIndex;
            this.listeners = new HashMap<>();
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("SimpleCache.initialize()") { // from class: com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.SimpleCache.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (SimpleCache.this) {
                        conditionVariable.open();
                        SimpleCache.this.initialize();
                        SimpleCache.this.evictor.onCacheInitialized();
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
