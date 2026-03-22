package com.ss.ttvideoengine.log;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoFilterMonitor {
    private static final String TAG = "VideoFilterMonitor";
    private final ArrayList<String> mHistoryList = new ArrayList<>();
    private boolean mIsFilterOn;

    private boolean isEyeProtectionModeOn(Bundle bundle) {
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_ACTION);
        if (bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) != 2) {
            return false;
        }
        if (i10 == 21) {
            if (bundle.getInt(TextureRenderKeys.KEY_IS_USE_EFFECT) != 1) {
                return false;
            }
            return true;
        } else if (i10 != 19 || bundle.getInt(TextureRenderKeys.KEY_IS_INT_VALUE) != 1) {
            return false;
        } else {
            return true;
        }
    }

    private void updateHistory(boolean z10) {
        String str;
        HashMap hashMap = new HashMap();
        if (z10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        hashMap.put("on", str);
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        TTVideoEngineUtils.addToList(this.mHistoryList, new JSONObject(hashMap).toString());
    }

    public ArrayList<String> getList() {
        return this.mHistoryList;
    }

    public void setEffect(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) != 2) {
            TTVideoEngineLog.d(TAG, "not eye protection filter bundle");
            return;
        }
        boolean isEyeProtectionModeOn = isEyeProtectionModeOn(bundle);
        if (isEyeProtectionModeOn != this.mIsFilterOn) {
            this.mIsFilterOn = isEyeProtectionModeOn;
            updateHistory(isEyeProtectionModeOn);
        }
    }
}
