package q5;

import com.google.android.exoplayer2.ParserException;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
/* compiled from: AacUtil.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f65052a = {96000, 88200, 64000, 48000, 44100, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 24000, 22050, 16000, 12000, 11025, 8000, AVMDLDataLoader.KeyIsEnableByteMediaNetLoader};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f65053b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* compiled from: AacUtil.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f65054a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65055b;

        /* renamed from: c  reason: collision with root package name */
        public final String f65056c;

        private b(int i10, int i11, String str) {
            this.f65054a = i10;
            this.f65055b = i11;
            this.f65056c = str;
        }
    }

    public static byte[] a(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int b(b7.f0 f0Var) {
        int h10 = f0Var.h(5);
        if (h10 == 31) {
            return f0Var.h(6) + 32;
        }
        return h10;
    }

    private static int c(b7.f0 f0Var) throws ParserException {
        int h10 = f0Var.h(4);
        if (h10 == 15) {
            return f0Var.h(24);
        }
        if (h10 < 13) {
            return f65052a[h10];
        }
        throw ParserException.b(null, null);
    }

    public static b d(b7.f0 f0Var, boolean z10) throws ParserException {
        int b10 = b(f0Var);
        int c10 = c(f0Var);
        int h10 = f0Var.h(4);
        String str = "mp4a.40." + b10;
        if (b10 == 5 || b10 == 29) {
            c10 = c(f0Var);
            b10 = b(f0Var);
            if (b10 == 22) {
                h10 = f0Var.h(4);
            }
        }
        if (z10) {
            if (b10 != 1 && b10 != 2 && b10 != 3 && b10 != 4 && b10 != 6 && b10 != 7 && b10 != 17) {
                switch (b10) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.e("Unsupported audio object type: " + b10);
                }
            }
            f(f0Var, b10, h10);
            switch (b10) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int h11 = f0Var.h(2);
                    if (h11 == 2 || h11 == 3) {
                        throw ParserException.e("Unsupported epConfig: " + h11);
                    }
            }
        }
        int i10 = f65053b[h10];
        if (i10 != -1) {
            return new b(c10, i10, str);
        }
        throw ParserException.b(null, null);
    }

    public static b e(byte[] bArr) throws ParserException {
        return d(new b7.f0(bArr), false);
    }

    private static void f(b7.f0 f0Var, int i10, int i11) {
        if (f0Var.g()) {
            b7.q.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (f0Var.g()) {
            f0Var.r(14);
        }
        boolean g10 = f0Var.g();
        if (i11 != 0) {
            if (i10 == 6 || i10 == 20) {
                f0Var.r(3);
            }
            if (g10) {
                if (i10 == 22) {
                    f0Var.r(16);
                }
                if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                    f0Var.r(3);
                }
                f0Var.r(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }
}
