package com.bytedance.sdk.component.Pfn.tB.oJ;

import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
/* loaded from: classes3.dex */
public class tB<K, V> {
    private int Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12591ba;
    private int cFZ;
    private int ex;
    private final LinkedHashMap<K, SoftReference<V>> oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12592so;
    private int tB;

    public tB(int i10) {
        if (i10 > 0) {
            this.tB = i10;
            this.oJ = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int tB(K k10, V v10) {
        int ZYk = ZYk(k10, v10);
        if (ZYk >= 0) {
            return ZYk;
        }
        throw new IllegalStateException("Negative size: " + k10 + ContainerUtils.KEY_VALUE_DELIMITER + v10);
    }

    protected int ZYk(K k10, V v10) {
        return 1;
    }

    public final V oJ(K k10) {
        V v10;
        if (k10 != null) {
            synchronized (this) {
                try {
                    SoftReference<V> softReference = this.oJ.get(k10);
                    if (softReference != null) {
                        v10 = softReference.get();
                        if (v10 != null) {
                            this.cFZ++;
                            return v10;
                        }
                        this.oJ.remove(k10);
                    } else {
                        v10 = null;
                    }
                    this.f12592so++;
                    V ZYk = ZYk(k10);
                    if (ZYk == null) {
                        return null;
                    }
                    synchronized (this) {
                        try {
                            this.Pfn++;
                            SoftReference<V> put = this.oJ.put(k10, new SoftReference<>(ZYk));
                            if (put != null) {
                                v10 = put.get();
                            }
                            if (v10 != null) {
                                this.oJ.put(k10, put);
                            } else {
                                this.ZYk += tB(k10, ZYk);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (v10 != null) {
                        return v10;
                    }
                    oJ(this.tB);
                    return ZYk;
                } finally {
                }
            }
        }
        throw new NullPointerException("key == null");
    }

    public final synchronized String toString() {
        int i10;
        try {
            int i11 = this.cFZ;
            int i12 = this.f12592so + i11;
            if (i12 != 0) {
                i10 = (i11 * 100) / i12;
            } else {
                i10 = 0;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.tB), Integer.valueOf(this.cFZ), Integer.valueOf(this.f12592so), Integer.valueOf(i10));
    }

    protected V ZYk(K k10) {
        return null;
    }

    public final V oJ(K k10, V v10) {
        V v11;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                try {
                    this.ex++;
                    this.ZYk += tB(k10, v10);
                    SoftReference<V> put = this.oJ.put(k10, new SoftReference<>(v10));
                    if (put != null) {
                        v11 = put.get();
                        if (v11 != null) {
                            this.ZYk -= tB(k10, v11);
                        }
                    } else {
                        v11 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            oJ(this.tB);
            return v11;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
        android.util.Log.e("LruCache", "oom maybe occured, clear cache. size= " + r3.ZYk + ", maxSize: " + r4);
        r3.ZYk = 0;
        r3.oJ.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            if (r0 < 0) goto L54
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.oJ     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            goto L54
        L12:
            r4 = move-exception
            goto L7b
        L14:
            int r0 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            if (r0 > r4) goto L1a
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L1a:
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.oJ     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L2e
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L2e:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.lang.ref.SoftReference r0 = (java.lang.ref.SoftReference) r0     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r2 = r3.oJ     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L4c
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L12
            int r2 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            int r0 = r3.tB(r1, r0)     // Catch: java.lang.Throwable -> L12
            int r2 = r2 - r0
            r3.ZYk = r2     // Catch: java.lang.Throwable -> L12
        L4c:
            int r0 = r3.f12591ba     // Catch: java.lang.Throwable -> L12
            int r0 = r0 + 1
            r3.f12591ba = r0     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            goto L0
        L54:
            java.lang.String r0 = "LruCache"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            java.lang.String r2 = "oom maybe occured, clear cache. size= "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L12
            int r2 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            r1.append(r2)     // Catch: java.lang.Throwable -> L12
            java.lang.String r2 = ", maxSize: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L12
            r1.append(r4)     // Catch: java.lang.Throwable -> L12
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L12
            android.util.Log.e(r0, r4)     // Catch: java.lang.Throwable -> L12
            r4 = 0
            r3.ZYk = r4     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r4 = r3.oJ     // Catch: java.lang.Throwable -> L12
            r4.clear()     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L7b:
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Pfn.tB.oJ.tB.oJ(int):void");
    }
}
