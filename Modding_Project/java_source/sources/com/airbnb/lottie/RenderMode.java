package com.airbnb.lottie;
/* loaded from: classes2.dex */
public enum RenderMode {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4468a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f4468a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4468a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4468a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean useSoftwareRendering(int i10, boolean z10, int i11) {
        int i12 = a.f4468a[ordinal()];
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
