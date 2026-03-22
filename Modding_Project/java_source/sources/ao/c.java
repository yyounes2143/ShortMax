package ao;

import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import io.bidmachine.media3.common.ParserException;
import java.nio.ByteBuffer;
/* compiled from: Ac4Util.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1755a = {2002, 2000, 1920, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Ac4Util.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1756a;

        /* renamed from: b  reason: collision with root package name */
        public int f1757b;

        /* renamed from: c  reason: collision with root package name */
        public int f1758c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f1759d;

        /* renamed from: e  reason: collision with root package name */
        public int f1760e;

        /* renamed from: f  reason: collision with root package name */
        public int f1761f;

        private b() {
            this.f1756a = true;
            this.f1757b = -1;
            this.f1758c = -1;
            this.f1759d = true;
            this.f1760e = 2;
            this.f1761f = 0;
        }
    }

    /* compiled from: Ac4Util.java */
    /* renamed from: ao.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0070c {

        /* renamed from: a  reason: collision with root package name */
        public final int f1762a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1763b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1764c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1765d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1766e;

        private C0070c(int i10, int i11, int i12, int i13, int i14) {
            this.f1762a = i10;
            this.f1764c = i11;
            this.f1763b = i12;
            this.f1765d = i13;
            this.f1766e = i14;
        }
    }

    public static void a(int i10, cn.b0 b0Var) {
        b0Var.S(7);
        byte[] e10 = b0Var.e();
        e10[0] = -84;
        e10[1] = 64;
        e10[2] = -1;
        e10[3] = -1;
        e10[4] = (byte) ((i10 >> 16) & 255);
        e10[5] = (byte) ((i10 >> 8) & 255);
        e10[6] = (byte) (i10 & 255);
    }

    private static int b(int i10, boolean z10, int i11) {
        int c10 = c(i10);
        if (i10 == 11 || i10 == 12 || i10 == 13 || i10 == 14) {
            if (!z10) {
                c10 -= 2;
            }
            if (i11 != 0) {
                if (i11 == 1) {
                    return c10 - 2;
                }
                return c10;
            }
            return c10 - 4;
        }
        return c10;
    }

    private static int c(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
            case 7:
            case 9:
                return 7;
            case 6:
            case 8:
            case 10:
                return 8;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 24;
            default:
                return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.bidmachine.media3.common.a d(cn.b0 r18, java.lang.String r19, @androidx.annotation.Nullable java.lang.String r20, @androidx.annotation.Nullable io.bidmachine.media3.common.DrmInitData r21) throws io.bidmachine.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ao.c.d(cn.b0, java.lang.String, java.lang.String, io.bidmachine.media3.common.DrmInitData):io.bidmachine.media3.common.a");
    }

    public static int e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return f(new cn.a0(bArr)).f1766e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
        if (r11 != 8) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ao.c.C0070c f(cn.a0 r11) {
        /*
            r0 = 16
            int r1 = r11.h(r0)
            int r0 = r11.h(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r11.h(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r11.h(r0)
            r2 = 3
            if (r1 != r2) goto L2f
            int r4 = j(r11, r0)
            int r1 = r1 + r4
        L2f:
            r5 = r1
            r1 = 10
            int r1 = r11.h(r1)
            boolean r4 = r11.g()
            if (r4 == 0) goto L45
            int r4 = r11.h(r2)
            if (r4 <= 0) goto L45
            r11.r(r0)
        L45:
            boolean r4 = r11.g()
            r6 = 44100(0xac44, float:6.1797E-41)
            r7 = 48000(0xbb80, float:6.7262E-41)
            if (r4 == 0) goto L53
            r9 = r7
            goto L54
        L53:
            r9 = r6
        L54:
            int r11 = r11.h(r3)
            if (r9 != r6) goto L63
            r4 = 13
            if (r11 != r4) goto L63
            int[] r0 = ao.c.f1755a
            r11 = r0[r11]
            goto L91
        L63:
            if (r9 != r7) goto L90
            int[] r4 = ao.c.f1755a
            int r6 = r4.length
            if (r11 >= r6) goto L90
            r4 = r4[r11]
            int r1 = r1 % 5
            r6 = 8
            r7 = 1
            if (r1 == r7) goto L8b
            r7 = 11
            if (r1 == r0) goto L86
            if (r1 == r2) goto L8b
            if (r1 == r3) goto L7c
            goto L84
        L7c:
            if (r11 == r2) goto L82
            if (r11 == r6) goto L82
            if (r11 != r7) goto L84
        L82:
            int r4 = r4 + 1
        L84:
            r11 = r4
            goto L91
        L86:
            if (r11 == r6) goto L82
            if (r11 != r7) goto L84
            goto L82
        L8b:
            if (r11 == r2) goto L82
            if (r11 != r6) goto L84
            goto L82
        L90:
            r11 = 0
        L91:
            ao.c$c r0 = new ao.c$c
            r6 = 2
            r10 = 0
            r4 = r0
            r7 = r9
            r9 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ao.c.f(cn.a0):ao.c$c");
    }

    public static int g(byte[] bArr, int i10) {
        int i11 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i12 = ((bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        if (i12 == 65535) {
            i12 = ((bArr[4] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[5] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[6] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        } else {
            i11 = 4;
        }
        if (i10 == 44097) {
            i11 += 2;
        }
        return i12 + i11;
    }

    private static void h(cn.a0 a0Var, b bVar) throws ParserException {
        int h10 = a0Var.h(5);
        a0Var.r(2);
        if (a0Var.g()) {
            a0Var.r(5);
        }
        if (h10 >= 7 && h10 <= 10) {
            a0Var.q();
        }
        if (a0Var.g()) {
            int h11 = a0Var.h(3);
            if (bVar.f1757b == -1 && h10 >= 0 && h10 <= 15 && (h11 == 0 || h11 == 1)) {
                bVar.f1757b = h10;
            }
            if (a0Var.g()) {
                l(a0Var);
            }
        }
    }

    private static void i(cn.a0 a0Var, b bVar) throws ParserException {
        a0Var.r(2);
        boolean g10 = a0Var.g();
        int h10 = a0Var.h(8);
        for (int i10 = 0; i10 < h10; i10++) {
            a0Var.r(2);
            if (a0Var.g()) {
                a0Var.r(5);
            }
            if (g10) {
                a0Var.r(24);
            } else {
                if (a0Var.g()) {
                    if (!a0Var.g()) {
                        a0Var.r(4);
                    }
                    bVar.f1758c = a0Var.h(6) + 1;
                }
                a0Var.r(4);
            }
        }
        if (a0Var.g()) {
            a0Var.r(3);
            if (a0Var.g()) {
                l(a0Var);
            }
        }
    }

    private static int j(cn.a0 a0Var, int i10) {
        int i11 = 0;
        while (true) {
            int h10 = i11 + a0Var.h(i10);
            if (!a0Var.g()) {
                return h10;
            }
            i11 = (h10 + 1) << i10;
        }
    }

    private static boolean k(cn.a0 a0Var) {
        if (a0Var.b() < 66) {
            return false;
        }
        a0Var.r(66);
        return true;
    }

    private static void l(cn.a0 a0Var) throws ParserException {
        int h10 = a0Var.h(6);
        if (h10 >= 2 && h10 <= 42) {
            a0Var.r(h10 * 8);
            return;
        }
        throw ParserException.f(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(h10)));
    }
}
