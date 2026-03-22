package com.ss.ttvideoengine.model;

import com.ss.ttvideoengine.model.VideoModelPb;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoSeekTs {
    public static final String KEY_ENDING = "ending";
    public static final String KEY_OPENING = "opening";
    private static final String KEY_VER2_ENDING = "Ending";
    private static final String KEY_VER2_OPENING = "Opening";
    public static final int VALUE_VIDEO_SEEKTS_ENDING = 1;
    public static final int VALUE_VIDEO_SEEKTS_OPENING = 0;
    public float mOpening = -1.0f;
    public float mEnding = -1.0f;
    private float mOpeningVer2 = -1.0f;
    private float mEndingVer2 = -1.0f;
    private int mVersion = 1;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (!jSONObject.has(KEY_OPENING) && !jSONObject.has(KEY_ENDING)) {
            if (jSONObject.has(KEY_VER2_ENDING) || jSONObject.has(KEY_VER2_OPENING)) {
                this.mVersion = 2;
                try {
                    this.mOpeningVer2 = (float) jSONObject.optDouble(KEY_VER2_OPENING);
                    this.mEndingVer2 = (float) jSONObject.optDouble(KEY_VER2_ENDING);
                    return;
                } catch (Exception e10) {
                    TTVideoEngineLog.d(e10);
                    return;
                }
            }
            return;
        }
        this.mVersion = 1;
        try {
            this.mOpening = (float) jSONObject.optDouble(KEY_OPENING);
            this.mEnding = (float) jSONObject.optDouble(KEY_ENDING);
        } catch (Exception e11) {
            TTVideoEngineLog.d(e11);
        }
    }

    public float getValueFloat(int i10) {
        if (this.mVersion == 2) {
            if (i10 != 0) {
                if (i10 != 1) {
                    return -1.0f;
                }
                return this.mEndingVer2;
            }
            return this.mOpeningVer2;
        } else if (i10 != 0) {
            if (i10 != 1) {
                return -1.0f;
            }
            return this.mEnding;
        } else {
            return this.mOpening;
        }
    }

    public void setVersion(int i10) {
        this.mVersion = i10;
    }

    public void parseFromPb(VideoModelPb.SeekOffSet seekOffSet) {
    }
}
