package ip;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ViewUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import io.bidmachine.media3.common.ParserException;
/* compiled from: MpeghUtil.java */
/* loaded from: classes8.dex */
final class v {

    /* compiled from: MpeghUtil.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f60039a;

        /* renamed from: b  reason: collision with root package name */
        public long f60040b;

        /* renamed from: c  reason: collision with root package name */
        public int f60041c;
    }

    /* compiled from: MpeghUtil.java */
    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f60042a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60043b;

        /* renamed from: c  reason: collision with root package name */
        public final int f60044c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f60045d;

        private c(int i10, int i11, int i12, @Nullable byte[] bArr) {
            this.f60042a = i10;
            this.f60043b = i11;
            this.f60044c = i12;
            this.f60045d = bArr;
        }
    }

    private static int a(int i10) throws ParserException {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 == 4) {
                        return 4096;
                    }
                    throw ParserException.f("Unsupported coreSbrFrameLengthIndex " + i10);
                }
                return 2048;
            }
            return 1024;
        }
        return ViewUtils.EDGE_TO_EDGE_FLAGS;
    }

    private static double b(int i10) throws ParserException {
        switch (i10) {
            case 14700:
            case 16000:
                return 3.0d;
            case 22050:
            case 24000:
                return 2.0d;
            case 29400:
            case RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM /* 32000 */:
            case 58800:
            case 64000:
                return 1.5d;
            case 44100:
            case 48000:
            case 88200:
            case 96000:
                return 1.0d;
            default:
                throw ParserException.f("Unsupported sampling rate " + i10);
        }
    }

    private static int c(int i10) throws ParserException {
        switch (i10) {
            case 0:
                return 96000;
            case 1:
                return 88200;
            case 2:
                return 64000;
            case 3:
                return 48000;
            case 4:
                return 44100;
            case 5:
                return RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM;
            case 6:
                return 24000;
            case 7:
                return 22050;
            case 8:
                return 16000;
            case 9:
                return 12000;
            case 10:
                return 11025;
            case 11:
                return 8000;
            case 12:
                return AVMDLDataLoader.KeyIsEnableByteMediaNetLoader;
            case 13:
            case 14:
            default:
                throw ParserException.f("Unsupported sampling rate index " + i10);
            case 15:
                return 57600;
            case 16:
                return 51200;
            case 17:
                return TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN;
            case 18:
                return 38400;
            case 19:
                return 34150;
            case 20:
                return 28800;
            case 21:
                return 25600;
            case 22:
                return 20000;
            case 23:
                return 19200;
            case 24:
                return 17075;
            case 25:
                return 14400;
            case 26:
                return 12800;
            case 27:
                return 9600;
        }
    }

    private static int d(int i10) throws ParserException {
        if (i10 != 0 && i10 != 1) {
            int i11 = 2;
            if (i10 != 2) {
                i11 = 3;
                if (i10 != 3) {
                    if (i10 == 4) {
                        return 1;
                    }
                    throw ParserException.f("Unsupported coreSbrFrameLengthIndex " + i10);
                }
            }
            return i11;
        }
        return 0;
    }

    public static boolean e(int i10) {
        if ((i10 & ViewCompat.MEASURED_SIZE_MASK) == 12583333) {
            return true;
        }
        return false;
    }

    public static int f(cn.a0 a0Var) {
        if (a0Var.g()) {
            a0Var.r(2);
            return a0Var.h(13);
        }
        return 0;
    }

    public static boolean g(cn.a0 a0Var, b bVar) throws ParserException {
        a0Var.d();
        int k10 = k(a0Var, 3, 8, 8);
        bVar.f60039a = k10;
        if (k10 == -1) {
            return false;
        }
        long l10 = l(a0Var, 2, 8, 32);
        bVar.f60040b = l10;
        if (l10 == -1) {
            return false;
        }
        if (l10 <= 16) {
            if (l10 == 0) {
                int i10 = bVar.f60039a;
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 17) {
                            throw ParserException.b("AudioTruncation packet with invalid packet label 0", null);
                        }
                    } else {
                        throw ParserException.b("Mpegh3daFrame packet with invalid packet label 0", null);
                    }
                } else {
                    throw ParserException.b("Mpegh3daConfig packet with invalid packet label 0", null);
                }
            }
            int k11 = k(a0Var, 11, 24, 24);
            bVar.f60041c = k11;
            if (k11 == -1) {
                return false;
            }
            return true;
        }
        throw ParserException.f("Contains sub-stream with an invalid packet label " + bVar.f60040b);
    }

    public static c h(cn.a0 a0Var) throws ParserException {
        int c10;
        int h10 = a0Var.h(8);
        int h11 = a0Var.h(5);
        if (h11 == 31) {
            c10 = a0Var.h(24);
        } else {
            c10 = c(h11);
        }
        int h12 = a0Var.h(3);
        int a10 = a(h12);
        int d10 = d(h12);
        a0Var.r(2);
        p(a0Var);
        m(a0Var, j(a0Var), d10);
        byte[] bArr = null;
        if (a0Var.g()) {
            int k10 = k(a0Var, 2, 4, 8) + 1;
            for (int i10 = 0; i10 < k10; i10++) {
                int k11 = k(a0Var, 4, 8, 16);
                int k12 = k(a0Var, 4, 8, 16);
                if (k11 == 7) {
                    int h13 = a0Var.h(4) + 1;
                    a0Var.r(4);
                    byte[] bArr2 = new byte[h13];
                    for (int i11 = 0; i11 < h13; i11++) {
                        bArr2[i11] = (byte) a0Var.h(8);
                    }
                    bArr = bArr2;
                } else {
                    a0Var.r(k12 * 8);
                }
            }
        }
        byte[] bArr3 = bArr;
        double b10 = b(c10);
        return new c(h10, (int) (c10 * b10), (int) (a10 * b10), bArr3);
    }

    private static boolean i(cn.a0 a0Var) {
        a0Var.r(3);
        boolean g10 = a0Var.g();
        if (g10) {
            a0Var.r(13);
        }
        return g10;
    }

    private static int j(cn.a0 a0Var) {
        int h10 = a0Var.h(5);
        int i10 = 0;
        for (int i11 = 0; i11 < h10 + 1; i11++) {
            int h11 = a0Var.h(3);
            i10 += k(a0Var, 5, 8, 16) + 1;
            if ((h11 == 0 || h11 == 2) && a0Var.g()) {
                p(a0Var);
            }
        }
        return i10;
    }

    private static int k(cn.a0 a0Var, int i10, int i11, int i12) {
        boolean z10;
        if (Math.max(Math.max(i10, i11), i12) <= 31) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int i13 = (1 << i10) - 1;
        int i14 = (1 << i11) - 1;
        j7.d.a(j7.d.a(i13, i14), 1 << i12);
        if (a0Var.b() < i10) {
            return -1;
        }
        int h10 = a0Var.h(i10);
        if (h10 == i13) {
            if (a0Var.b() < i11) {
                return -1;
            }
            int h11 = a0Var.h(i11);
            int i15 = h10 + h11;
            if (h11 == i14) {
                if (a0Var.b() < i12) {
                    return -1;
                }
                return i15 + a0Var.h(i12);
            }
            return i15;
        }
        return h10;
    }

    private static long l(cn.a0 a0Var, int i10, int i11, int i12) {
        boolean z10;
        if (Math.max(Math.max(i10, i11), i12) <= 63) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        long j10 = (1 << i10) - 1;
        long j11 = (1 << i11) - 1;
        j7.e.a(j7.e.a(j10, j11), 1 << i12);
        if (a0Var.b() < i10) {
            return -1L;
        }
        long j12 = a0Var.j(i10);
        if (j12 == j10) {
            if (a0Var.b() < i11) {
                return -1L;
            }
            long j13 = a0Var.j(i11);
            long j14 = j12 + j13;
            if (j13 == j11) {
                if (a0Var.b() < i12) {
                    return -1L;
                }
                return j14 + a0Var.j(i12);
            }
            return j14;
        }
        return j12;
    }

    private static void m(cn.a0 a0Var, int i10, int i11) {
        int i12;
        int k10 = k(a0Var, 4, 8, 16) + 1;
        a0Var.q();
        for (int i13 = 0; i13 < k10; i13++) {
            int h10 = a0Var.h(2);
            if (h10 != 0) {
                if (h10 != 1) {
                    if (h10 == 3) {
                        k(a0Var, 4, 8, 16);
                        int k11 = k(a0Var, 4, 8, 16);
                        if (a0Var.g()) {
                            k(a0Var, 8, 16, 0);
                        }
                        a0Var.q();
                        if (k11 > 0) {
                            a0Var.r(k11 * 8);
                        }
                    }
                } else {
                    if (i(a0Var)) {
                        a0Var.q();
                    }
                    if (i11 > 0) {
                        o(a0Var);
                        i12 = a0Var.h(2);
                    } else {
                        i12 = 0;
                    }
                    if (i12 > 0) {
                        a0Var.r(6);
                        int h11 = a0Var.h(2);
                        a0Var.r(4);
                        if (a0Var.g()) {
                            a0Var.r(5);
                        }
                        if (i12 == 2 || i12 == 3) {
                            a0Var.r(6);
                        }
                        if (h11 == 2) {
                            a0Var.q();
                        }
                    }
                    int floor = ((int) Math.floor(Math.log(i10 - 1) / Math.log(2.0d))) + 1;
                    int h12 = a0Var.h(2);
                    if (h12 > 0 && a0Var.g()) {
                        a0Var.r(floor);
                    }
                    if (a0Var.g()) {
                        a0Var.r(floor);
                    }
                    if (i11 == 0 && h12 == 0) {
                        a0Var.q();
                    }
                }
            } else {
                i(a0Var);
                if (i11 > 0) {
                    o(a0Var);
                }
            }
        }
    }

    private static void n(cn.a0 a0Var, int i10) {
        int i11;
        int i12;
        int h10;
        boolean g10 = a0Var.g();
        int i13 = 5;
        if (g10) {
            i11 = 1;
        } else {
            i11 = 5;
        }
        if (g10) {
            i13 = 7;
        }
        if (g10) {
            i12 = 8;
        } else {
            i12 = 6;
        }
        int i14 = 0;
        while (i14 < i10) {
            if (a0Var.g()) {
                a0Var.r(7);
                h10 = 0;
            } else {
                if (a0Var.h(2) == 3 && a0Var.h(i13) * i11 != 0) {
                    a0Var.q();
                }
                h10 = a0Var.h(i12) * i11;
                if (h10 != 0 && h10 != 180) {
                    a0Var.q();
                }
                a0Var.q();
            }
            if (h10 != 0 && h10 != 180 && a0Var.g()) {
                i14++;
            }
            i14++;
        }
    }

    private static void o(cn.a0 a0Var) {
        a0Var.r(3);
        a0Var.r(8);
        boolean g10 = a0Var.g();
        boolean g11 = a0Var.g();
        if (g10) {
            a0Var.r(5);
        }
        if (g11) {
            a0Var.r(6);
        }
    }

    private static void p(cn.a0 a0Var) {
        int h10 = a0Var.h(2);
        if (h10 == 0) {
            a0Var.r(6);
            return;
        }
        int k10 = k(a0Var, 5, 8, 16) + 1;
        if (h10 == 1) {
            a0Var.r(k10 * 7);
        } else if (h10 == 2) {
            n(a0Var, k10);
        }
    }
}
