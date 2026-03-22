package com.bytedance.sdk.openadsdk.utils;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes3.dex */
public class cFZ {
    static float ZYk = 0.0f;
    static int oJ = -1;
    private static long tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public final float ZYk;
        public final int oJ;

        public oJ(int i10, float f10) {
            this.oJ = i10;
            this.ZYk = f10;
        }
    }

    private static void oJ(Intent intent) {
        if (intent.getIntExtra("status", -1) == 2) {
            oJ = 1;
        } else {
            oJ = 0;
        }
        ZYk = (intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / intent.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
    }

    @NonNull
    public static oJ oJ() {
        if (tB == 0 || SystemClock.elapsedRealtime() - tB > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
            Intent registerReceiver = com.bytedance.sdk.openadsdk.core.si.oJ().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            Log.d("BatteryDataWatcher", "obtainCurrentState: registerReceiver result is ".concat(String.valueOf(registerReceiver)));
            if (registerReceiver != null) {
                oJ(registerReceiver);
                tB = SystemClock.elapsedRealtime();
            }
        }
        return new oJ(oJ, ZYk);
    }
}
