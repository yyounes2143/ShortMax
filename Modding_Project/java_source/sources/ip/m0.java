package ip;

import com.ss.ttm.player.MediaPlayer;
/* compiled from: TsUtil.java */
/* loaded from: classes8.dex */
public final class m0 {
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

    public static long c(cn.b0 b0Var, int i10, int i11) {
        b0Var.W(i10);
        if (b0Var.a() < 5) {
            return -9223372036854775807L;
        }
        int q10 = b0Var.q();
        if ((8388608 & q10) != 0 || ((2096896 & q10) >> 8) != i11 || (q10 & 32) == 0 || b0Var.H() < 7 || b0Var.a() < 7 || (b0Var.H() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        b0Var.l(bArr, 0, 6);
        return d(bArr);
    }

    private static long d(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
