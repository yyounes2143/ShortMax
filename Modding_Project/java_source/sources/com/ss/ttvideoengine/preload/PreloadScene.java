package com.ss.ttvideoengine.preload;

import android.text.TextUtils;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PreloadScene {
    public String mSceneId;
    public String mBriefSceneId = null;
    public int mAutoPlay = 0;
    public int mMute = 0;
    public int mMaxVisibleCardCnt = 1;
    private String mConfigString = null;
    private String mAlgorithmName = null;
    private List<PreloadTaskConfig> configs = null;

    public PreloadScene(String str) {
        this.mSceneId = str;
    }

    public void setAlgorithmName(String str) {
        this.mAlgorithmName = str;
    }

    public void setConfigJsonString(String str) {
        this.mConfigString = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.mAlgorithmName = new JSONObject(str).getJSONObject("preload_strategy").getString("name");
        } catch (JSONException e10) {
            TTVideoEngineLog.i("Scene", e10.toString());
        }
    }

    public void setConfigs(List<PreloadTaskConfig> list) {
        this.configs = list;
    }

    public String toJsonString() {
        HashMap hashMap = new HashMap();
        hashMap.put("scene_id", this.mSceneId);
        hashMap.put("brief_scene_id", this.mBriefSceneId);
        hashMap.put("auto_play", Integer.valueOf(this.mAutoPlay));
        hashMap.put("mute", Integer.valueOf(this.mMute));
        hashMap.put("card_cnt", Integer.valueOf(this.mMaxVisibleCardCnt));
        hashMap.put("json", this.mConfigString);
        return new JSONObject(hashMap).toString();
    }
}
