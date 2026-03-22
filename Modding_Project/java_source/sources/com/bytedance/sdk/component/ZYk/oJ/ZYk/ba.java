package com.bytedance.sdk.component.ZYk.oJ.ZYk;
/* loaded from: classes3.dex */
final class ba {
    static long ZYk;
    static Pfn oJ;

    private ba() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pfn oJ() {
        synchronized (ba.class) {
            Pfn pfn = oJ;
            if (pfn != null) {
                oJ = pfn.f12606ba;
                pfn.f12606ba = null;
                ZYk -= 8192;
                return pfn;
            }
            return new Pfn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void oJ(Pfn pfn) {
        if (pfn.f12606ba == null && pfn.cFZ == null) {
            if (pfn.ex) {
                return;
            }
            synchronized (ba.class) {
                try {
                    long j10 = ZYk;
                    if (j10 + 8192 > 65536) {
                        return;
                    }
                    ZYk = j10 + 8192;
                    pfn.f12606ba = oJ;
                    pfn.tB = 0;
                    pfn.ZYk = 0;
                    oJ = pfn;
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
