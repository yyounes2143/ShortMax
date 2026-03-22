package com.bytedance.adsdk.ZYk;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.LinkedHashMap;
import java.util.Locale;
/* loaded from: classes3.dex */
public class WcQ<K, V> {
    private int Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f11490ba;
    private int cFZ;
    private int ex;
    private final LinkedHashMap<K, V> oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f11491so;
    private int tB;

    public WcQ(int i10) {
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
        V put;
        if (k10 != null) {
            synchronized (this) {
                try {
                    V v10 = this.oJ.get(k10);
                    if (v10 != null) {
                        this.cFZ++;
                        return v10;
                    }
                    this.f11491so++;
                    V ZYk = ZYk(k10);
                    if (ZYk == null) {
                        return null;
                    }
                    synchronized (this) {
                        try {
                            this.Pfn++;
                            put = this.oJ.put(k10, ZYk);
                            if (put != null) {
                                this.oJ.put(k10, put);
                            } else {
                                this.ZYk += tB(k10, ZYk);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (put != null) {
                        return put;
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
            int i12 = this.f11491so + i11;
            if (i12 != 0) {
                i10 = (i11 * 100) / i12;
            } else {
                i10 = 0;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.tB), Integer.valueOf(this.cFZ), Integer.valueOf(this.f11491so), Integer.valueOf(i10));
    }

    protected V ZYk(K k10) {
        return null;
    }

    public final V oJ(K k10, V v10) {
        V put;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                try {
                    this.ex++;
                    this.ZYk += tB(k10, v10);
                    put = this.oJ.put(k10, v10);
                    if (put != null) {
                        this.ZYk -= tB(k10, put);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            oJ(this.tB);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
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
            if (r0 < 0) goto L51
            java.util.LinkedHashMap<K, V> r0 = r3.oJ     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L14
            int r0 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L51
            goto L14
        L12:
            r4 = move-exception
            goto L70
        L14:
            int r0 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            if (r0 <= r4) goto L4f
            java.util.LinkedHashMap<K, V> r0 = r3.oJ     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L21
            goto L4f
        L21:
            java.util.LinkedHashMap<K, V> r0 = r3.oJ     // Catch: java.lang.Throwable -> L12
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L12
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L12
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L12
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L12
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L12
            java.util.LinkedHashMap<K, V> r2 = r3.oJ     // Catch: java.lang.Throwable -> L12
            r2.remove(r1)     // Catch: java.lang.Throwable -> L12
            int r2 = r3.ZYk     // Catch: java.lang.Throwable -> L12
            int r0 = r3.tB(r1, r0)     // Catch: java.lang.Throwable -> L12
            int r2 = r2 - r0
            r3.ZYk = r2     // Catch: java.lang.Throwable -> L12
            int r0 = r3.f11490ba     // Catch: java.lang.Throwable -> L12
            int r0 = r0 + 1
            r3.f11490ba = r0     // Catch: java.lang.Throwable -> L12
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            goto L0
        L4f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L12
            return
        L51:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L12
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L12
            r0.<init>()     // Catch: java.lang.Throwable -> L12
            java.lang.Class r1 = r3.getClass()     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L12
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L12
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L12
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L12
            throw r4     // Catch: java.lang.Throwable -> L12
        L70:
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.WcQ.oJ(int):void");
    }
}
