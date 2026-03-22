package com.ss.ttvideoengine;

import androidx.annotation.NonNull;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MediaTrackInfoModel implements MediaTrackInfoModelProvider {
    private final String mGroupId;
    private final int mIndex;
    private final String mLanguage;
    private final String mName;
    private final int mType;

    public MediaTrackInfoModel(@NonNull JSONObject jSONObject) {
        this.mIndex = jSONObject.optInt(TextureRenderKeys.KEY_IS_INDEX);
        this.mType = jSONObject.optInt("type");
        this.mLanguage = jSONObject.optString(MediaFormat.KEY_LANGUAGE);
        this.mName = jSONObject.optString("name");
        this.mGroupId = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_GROUP_ID);
    }

    public String getGroupId() {
        return this.mGroupId;
    }

    public int getIndex() {
        return this.mIndex;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public String getName() {
        return this.mName;
    }

    public int getType() {
        return this.mType;
    }

    @Override // com.ss.ttvideoengine.MediaTrackInfoModelProvider
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, this.mIndex);
            jSONObject.put("type", this.mType);
            jSONObject.put(MediaFormat.KEY_LANGUAGE, this.mLanguage);
            jSONObject.put("name", this.mName);
            jSONObject.put(MetricsSQLiteCacheKt.METRICS_GROUP_ID, this.mGroupId);
        } catch (JSONException e10) {
            TTVideoEngineLog.d(e10);
        }
        return jSONObject;
    }
}
