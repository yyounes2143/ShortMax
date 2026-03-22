package com.bytedance.adsdk.ZYk;
/* loaded from: classes3.dex */
public enum RZ {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    /* renamed from: com.bytedance.adsdk.ZYk.RZ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[RZ.values().length];
            oJ = iArr;
            try {
                iArr[RZ.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[RZ.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[RZ.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean oJ(int i10, boolean z10, int i11) {
        int i12 = AnonymousClass1.oJ[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 == 2) {
            return true;
        }
        if ((!z10 || i10 >= 28) && i11 <= 4 && i10 > 25) {
            return false;
        }
        return true;
    }
}
