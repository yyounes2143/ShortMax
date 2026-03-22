package q5;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import java.nio.ByteBuffer;
/* compiled from: Ac4Util.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f65069a = {2002, 2000, 1920, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* compiled from: Ac4Util.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f65070a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65071b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65072c;

        /* renamed from: d  reason: collision with root package name */
        public final int f65073d;

        /* renamed from: e  reason: collision with root package name */
        public final int f65074e;

        private b(int i10, int i11, int i12, int i13, int i14) {
            this.f65070a = i10;
            this.f65072c = i11;
            this.f65071b = i12;
            this.f65073d = i13;
            this.f65074e = i14;
        }
    }

    public static void a(int i10, b7.g0 g0Var) {
        g0Var.L(7);
        byte[] d10 = g0Var.d();
        d10[0] = -84;
        d10[1] = 64;
        d10[2] = -1;
        d10[3] = -1;
        d10[4] = (byte) ((i10 >> 16) & 255);
        d10[5] = (byte) ((i10 >> 8) & 255);
        d10[6] = (byte) (i10 & 255);
    }

    public static v0 b(b7.g0 g0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        int i10;
        g0Var.Q(1);
        if (((g0Var.D() & 32) >> 5) == 1) {
            i10 = 48000;
        } else {
            i10 = 44100;
        }
        return new v0.b().S(str).e0("audio/ac4").H(2).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return d(new b7.f0(bArr)).f65074e;
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
    public static q5.c.b d(b7.f0 r11) {
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
            int r4 = f(r11, r0)
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
            int[] r0 = q5.c.f65069a
            r11 = r0[r11]
            goto L91
        L63:
            if (r9 != r7) goto L90
            int[] r4 = q5.c.f65069a
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
            q5.c$b r0 = new q5.c$b
            r6 = 2
            r10 = 0
            r4 = r0
            r7 = r9
            r9 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q5.c.d(b7.f0):q5.c$b");
    }

    public static int e(byte[] bArr, int i10) {
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

    private static int f(b7.f0 f0Var, int i10) {
        int i11 = 0;
        while (true) {
            int h10 = i11 + f0Var.h(i10);
            if (!f0Var.g()) {
                return h10;
            }
            i11 = (h10 + 1) << i10;
        }
    }
}
