package d6;

import com.ss.ttm.player.MediaPlayer;
/* compiled from: TsUtil.java */
/* loaded from: classes4.dex */
public final class j0 {
    public static int a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] != 71) {
            i10++;
        }
        return i10;
    }

    public static boolean b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = -4; i14 <= 4; i14++) {
            int i15 = (i14 * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) + i12;
            if (i15 >= i10 && i15 < i11 && bArr[i15] == 71) {
                i13++;
                if (i13 == 5) {
                    return true;
                }
            } else {
                i13 = 0;
            }
        }
        return false;
    }

    public static long c(b7.g0 g0Var, int i10, int i11) {
        g0Var.P(i10);
        if (g0Var.a() < 5) {
            return -9223372036854775807L;
        }
        int n10 = g0Var.n();
        if ((8388608 & n10) != 0 || ((2096896 & n10) >> 8) != i11 || (n10 & 32) == 0 || g0Var.D() < 7 || g0Var.a() < 7 || (g0Var.D() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        g0Var.j(bArr, 0, 6);
        return d(bArr);
    }

    private static long d(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
