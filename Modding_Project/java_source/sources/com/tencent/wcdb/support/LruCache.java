package com.tencent.wcdb.support;

import android.annotation.SuppressLint;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int i10) {
        if (i10 > 0) {
            this.maxSize = i10;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int safeSizeOf(K k10, V v10) {
        int sizeOf = sizeOf(k10, v10);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k10 + ContainerUtils.KEY_VALUE_DELIMITER + v10);
    }

    protected V create(K k10) {
        return null;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final V get(K k10) {
        V put;
        if (k10 != null) {
            synchronized (this) {
                try {
                    V v10 = this.map.get(k10);
                    if (v10 != null) {
                        this.hitCount++;
                        return v10;
                    }
                    this.missCount++;
                    V create = create(k10);
                    if (create == null) {
                        return null;
                    }
                    synchronized (this) {
                        try {
                            this.createCount++;
                            put = this.map.put(k10, create);
                            if (put != null) {
                                this.map.put(k10, put);
                            } else {
                                this.size += safeSizeOf(k10, create);
                            }
                        } finally {
                        }
                    }
                    if (put != null) {
                        entryRemoved(false, k10, create, put);
                        return put;
                    }
                    trimToSize(this.maxSize);
                    return create;
                } finally {
                }
            }
        }
        throw new NullPointerException("key == null");
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final V put(K k10, V v10) {
        V put;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                try {
                    this.putCount++;
                    this.size += safeSizeOf(k10, v10);
                    put = this.map.put(k10, v10);
                    if (put != null) {
                        this.size -= safeSizeOf(k10, put);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (put != null) {
                entryRemoved(false, k10, put, v10);
            }
            trimToSize(this.maxSize);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final V remove(K k10) {
        V remove;
        if (k10 != null) {
            synchronized (this) {
                try {
                    remove = this.map.remove(k10);
                    if (remove != null) {
                        this.size -= safeSizeOf(k10, remove);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (remove != null) {
                entryRemoved(false, k10, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public void resize(int i10) {
        if (i10 > 0) {
            synchronized (this) {
                this.maxSize = i10;
            }
            trimToSize(i10);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(K k10, V v10) {
        return 1;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.map);
    }

    @SuppressLint({"DefaultLocale"})
    public final synchronized String toString() {
        int i10;
        try {
            int i11 = this.hitCount;
            int i12 = this.missCount + i11;
            if (i12 != 0) {
                i10 = (i11 * 100) / i12;
            } else {
                i10 = 0;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r6) {
        /*
            r5 = this;
        L0:
            monitor-enter(r5)
            int r0 = r5.size     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L6c
            java.util.LinkedHashMap<K, V> r0 = r5.map     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L15
            int r0 = r5.size     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L6c
            goto L15
        L12:
            r6 = move-exception
            goto L8b
        L15:
            int r0 = r5.size     // Catch: java.lang.Throwable -> L12
            if (r0 <= r6) goto L6a
            java.util.LinkedHashMap<K, V> r0 = r5.map     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L22
            goto L6a
        L22:
            java.util.LinkedHashMap<K, V> r0 = r5.map     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L12
            r1 = 0
            if (r0 == 0) goto L44
            java.util.LinkedHashMap<K, V> r0 = r5.map     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            goto L45
        L44:
            r0 = r1
        L45:
            if (r0 != 0) goto L49
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            goto L6b
        L49:
            java.lang.Object r2 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, V> r3 = r5.map     // Catch: java.lang.Throwable -> L12
            r3.remove(r2)     // Catch: java.lang.Throwable -> L12
            int r3 = r5.size     // Catch: java.lang.Throwable -> L12
            int r4 = r5.safeSizeOf(r2, r0)     // Catch: java.lang.Throwable -> L12
            int r3 = r3 - r4
            r5.size = r3     // Catch: java.lang.Throwable -> L12
            int r3 = r5.evictionCount     // Catch: java.lang.Throwable -> L12
            r4 = 1
            int r3 = r3 + r4
            r5.evictionCount = r3     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            r5.entryRemoved(r4, r2, r0, r1)
            goto L0
        L6a:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
        L6b:
            return
        L6c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r0.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.Class r1 = r5.getClass()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L12
            throw r6     // Catch: java.lang.Throwable -> L12
        L8b:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wcdb.support.LruCache.trimToSize(int):void");
    }

    protected void entryRemoved(boolean z10, K k10, V v10, V v11) {
    }
}
