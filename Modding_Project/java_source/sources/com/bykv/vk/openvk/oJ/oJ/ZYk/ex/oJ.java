package com.bykv.vk.openvk.oJ.oJ.ZYk.ex;

import android.os.Build;
import android.view.View;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* loaded from: classes3.dex */
public class oJ {
    private static final int oJ = Build.VERSION.SDK_INT;

    public static int oJ(long j10, long j11) {
        return Math.min(Math.max(0, j11 > 0 ? (int) (((j10 * 1.0d) / j11) * 100.0d) : 0), 100);
    }

    public static String oJ(long j10) {
        StringBuilder sb2 = new StringBuilder();
        long j11 = j10 / ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        long j12 = ((j10 % 3600000) % ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) / 1000;
        if (j11 >= 10) {
            sb2.append(j11);
        } else if (j11 > 0) {
            sb2.append(0);
            sb2.append(j11);
        } else {
            sb2.append(0);
            sb2.append(0);
        }
        sb2.append(":");
        if (j12 >= 10) {
            sb2.append(j12);
        } else if (j12 > 0) {
            sb2.append(0);
            sb2.append(j12);
        } else {
            sb2.append(0);
            sb2.append(0);
        }
        return sb2.toString();
    }

    public static void oJ(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setSystemUiVisibility(0);
            return;
        }
        int i10 = oJ;
        if (i10 >= 19) {
            view.setSystemUiVisibility(3846);
        } else if (i10 >= 16) {
            view.setSystemUiVisibility(5);
        } else {
            view.setSystemUiVisibility(1);
        }
    }
}
