package com.facebook.ads.redexgen.X;

import android.media.MediaFormat;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.util.Arrays;
import java.util.Random;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.hY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2366hY {
    public static String A00;
    public static String A01;
    public static byte[] A02;
    public static final Random A03;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 10);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{39, 0, 8, 13, 4, 5, 65, 21, 14, 65, 19, 4, 21, 19, 8, 4, 23, 4, 65, 44, 4, 5, 8, 0, 39, 14, 19, 12, 0, 21, 73, 100, 115, 110, 68, 121, 110, 84, 117, 104, 109, 9, 43, 54, 33, 32, 116, 10, 45, 56, 45, 44, 42, 126, 72, 89, 13, 108, 100, 13, 107, ByteCompanionObject.MAX_VALUE, 110, 13, 78, 66, 67, 75, 68, 74, 88, 95, 76, 89, 68, 66, 67, 13, 89, 66, 13, 28, 59, 13, 28, 72, 41, 33, 72, 46, 58, 43, 72, 30, 1, 12, 13, 7, 72, 12, 29, 26, 9, 28, 1, 7, 6, 72, 28, 7, 72, 77, 12, 55, 58, 54, 56, 55, 43, 57, 36, 32, 40, 34, 56, 57, 18, 57, 63, 52, 36, 35, 42, 18, 57, 34, 18, 43, 36, 35, 41, 18, 62, 40, 42, 32, 40, 35, 57, 18, 36, 35, 18, 34, 36, 33, 17, 2, 9, 3, 8, 21, 73, 20, 2, 4, 74, 6, 14, 1, 21, 4, 74, 19, 21, 6, 9, 20, 1, 2, 21, 74, 21, 2, 22, 18, 2, 20, 19, 73, 17, 6, 11, 18, 2, 15, 28, 23, 29, 22, 11, 87, 10, 28, 26, 84, 24, 16, 31, 11, 26, 84, 15, 16, 29, 28, 22, 84, 29, 12, 11, 24, 13, 16, 22, 23, 87, 15, 24, 21, 12, 28, 113, 111, 98, 114, 110};
    }

    static {
        A02();
        A00 = A01(41, 12, 83);
        A01 = A01(119, 37, 71);
        A03 = new Random();
    }

    public static int A00(int i10, int i11) {
        if (i11 != 0) {
            return (int) ((Math.pow(2.0d, i10 - 1) * i11 * 1000.0d) + A03.nextInt(2000));
        }
        return (int) Math.min(((i10 - 1) * 1000) + 500, 5000L);
    }

    public static void A03(C2389hv c2389hv, MediaFormat mediaFormat) {
        String A012 = A01(0, 30, 107);
        String A013 = A01(30, 11, 11);
        if (!c2389hv.A01) {
            return;
        }
        try {
            if (C2364hW.A02()) {
                if (c2389hv.A0O && !C2364hW.A03(mediaFormat.getInteger(A01(VideoRef.VALUE_VIDEO_REF_CATEGORY, 5, 12)), mediaFormat.getInteger(A01(113, 6, 85)))) {
                    return;
                }
                long j10 = c2389hv.A00;
                if (j10 > 0) {
                    mediaFormat.setLong(A01(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 37, 115), j10);
                    AbstractC2294gL.A01(A013, A01(82, 31, 98), Long.valueOf(j10));
                }
                mediaFormat.setInteger(A01(156, 39, 109), 1);
                AbstractC2294gL.A00(A013, A01(53, 29, 39));
            }
        } catch (ClassCastException e10) {
            AbstractC2294gL.A02(A013, A012, e10);
        } catch (NullPointerException e11) {
            AbstractC2294gL.A02(A013, A012, e11);
        }
    }

    public static boolean A04(C2389hv c2389hv, int i10, int i11, int i12, int i13) {
        if (c2389hv.A01 && c2389hv.A0O && C2364hW.A03(i10, i11) != C2364hW.A03(i12, i13)) {
            return true;
        }
        return false;
    }
}
