package com.bytedance.adsdk.ZYk;

import android.content.Context;
import android.os.Trace;
import java.io.File;
/* loaded from: classes3.dex */
public class Pfn {
    private static volatile com.bytedance.adsdk.ZYk.ex.cFZ BTZ = null;
    private static String[] Pfn = null;
    private static boolean ZYk = false;

    /* renamed from: ba  reason: collision with root package name */
    private static long[] f11488ba = null;
    private static int cFZ = 0;
    private static volatile com.bytedance.adsdk.ZYk.ex.so dLZ = null;
    private static boolean ex = true;
    private static com.bytedance.adsdk.ZYk.ex.ba jFA = null;
    private static com.bytedance.adsdk.ZYk.ex.Pfn kkU = null;
    public static boolean oJ = false;

    /* renamed from: so  reason: collision with root package name */
    private static int f11489so = 0;
    private static boolean tB = true;

    public static float ZYk(String str) {
        int i10 = f11489so;
        if (i10 > 0) {
            f11489so = i10 - 1;
            return 0.0f;
        } else if (ZYk) {
            int i11 = cFZ - 1;
            cFZ = i11;
            if (i11 != -1) {
                if (str.equals(Pfn[i11])) {
                    Trace.endSection();
                    return ((float) (System.nanoTime() - f11488ba[cFZ])) / 1000000.0f;
                }
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + Pfn[cFZ] + ".");
            }
            throw new IllegalStateException("Can't end trace section. There are none.");
        } else {
            return 0.0f;
        }
    }

    public static void oJ(String str) {
        if (ZYk) {
            int i10 = cFZ;
            if (i10 == 20) {
                f11489so++;
                return;
            }
            Pfn[i10] = str;
            f11488ba[i10] = System.nanoTime();
            Trace.beginSection(str);
            cFZ++;
        }
    }

    public static com.bytedance.adsdk.ZYk.ex.so oJ(Context context) {
        com.bytedance.adsdk.ZYk.ex.so soVar;
        com.bytedance.adsdk.ZYk.ex.so soVar2 = dLZ;
        if (soVar2 == null) {
            synchronized (com.bytedance.adsdk.ZYk.ex.so.class) {
                try {
                    soVar = dLZ;
                    if (soVar == null) {
                        com.bytedance.adsdk.ZYk.ex.cFZ ZYk2 = ZYk(context);
                        com.bytedance.adsdk.ZYk.ex.ba baVar = jFA;
                        if (baVar == null) {
                            baVar = new com.bytedance.adsdk.ZYk.ex.ZYk();
                        }
                        soVar = new com.bytedance.adsdk.ZYk.ex.so(ZYk2, baVar);
                        dLZ = soVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return soVar;
        }
        return soVar2;
    }

    public static com.bytedance.adsdk.ZYk.ex.cFZ ZYk(Context context) {
        com.bytedance.adsdk.ZYk.ex.cFZ cfz;
        if (tB) {
            final Context applicationContext = context.getApplicationContext();
            com.bytedance.adsdk.ZYk.ex.cFZ cfz2 = BTZ;
            if (cfz2 == null) {
                synchronized (com.bytedance.adsdk.ZYk.ex.cFZ.class) {
                    try {
                        cfz = BTZ;
                        if (cfz == null) {
                            com.bytedance.adsdk.ZYk.ex.Pfn pfn = kkU;
                            if (pfn == null) {
                                pfn = new com.bytedance.adsdk.ZYk.ex.Pfn() { // from class: com.bytedance.adsdk.ZYk.Pfn.1
                                    @Override // com.bytedance.adsdk.ZYk.ex.Pfn
                                    public File oJ() {
                                        return new File(applicationContext.getCacheDir(), "lottie_network_cache");
                                    }
                                };
                            }
                            cfz = new com.bytedance.adsdk.ZYk.ex.cFZ(pfn);
                            BTZ = cfz;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return cfz;
            }
            return cfz2;
        }
        return null;
    }

    public static boolean oJ() {
        return ex;
    }
}
