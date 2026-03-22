package com.ss.ttvideoengine.portrait;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PortraitEngine {
    public static final String LABEL_DEVICE_SCORE = "device_score";
    public static final String LABEL_FF = "ff_label";
    public static final String LABEL_FIRST_FRAME = "first_frame";
    public static final String LABEL_NET_QUALITY_SPEED = "clinet_quality_speed";
    public static final String LABEL_NET_QUALITY_STABILITY = "clinet_quality_stability";
    public static final String LABEL_REBUF = "rebuf_label";
    public static final String LABEL_REBUFFERING = "rebuffering";
    public static final String LABEL_SCENE_COUNT_PER_100VV = "scene_count_per_100vv";
    public static final String LABEL_SEEK = "seek_label";
    public static final String LABEL_USER_ENGER_FULL_SCREEN = "user_enter_full_screen";
    public static final String LABEL_USER_QUALITY_SENSITIVITY = "user_quality_sensitivity";
    public static final String LABEL_WATCH_DURATION = "watch_duration";
    public static final String PORTRAIT_ENGINE_KEY = "portrait_engine";
    private static final String TAG = "PortraitEngine";
    public static final String VOD_KEY = "vod";
    private final ConcurrentHashMap<String, Object> mLabelMap = new ConcurrentHashMap<>();
    private final CopyOnWriteArrayList<PortraitChangeListener> mListeners = new CopyOnWriteArrayList<>();
    private final IPortrait mPortraitNetwork = PortraitNetworkScore.getInstance();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Holder {
        private static final PortraitEngine Instance = new PortraitEngine();

        private Holder() {
        }
    }

    public static PortraitEngine getInstance() {
        return Holder.Instance;
    }

    private void notifyPortraitChange(String str, Object obj) {
        Iterator<PortraitChangeListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onPortraitChange(str, obj);
        }
    }

    public void addPortraitListener(PortraitChangeListener portraitChangeListener) {
        this.mListeners.add(portraitChangeListener);
    }

    @Nullable
    public Map<String, Object> getAllLabels() {
        return new HashMap(this.mLabelMap);
    }

    @Nullable
    public Object getLabel(@NonNull String str) {
        return this.mLabelMap.get(str);
    }

    @NonNull
    public IPortrait getPortrait(int i10) {
        if (i10 == 1) {
            return this.mPortraitNetwork;
        }
        return IPortrait.EMPTY;
    }

    public void removePortraitListener(PortraitChangeListener portraitChangeListener) {
        this.mListeners.remove(portraitChangeListener);
    }

    public void setLabel(@NonNull String str, @NonNull Object obj) {
        if (this.mLabelMap.containsKey(str) && this.mLabelMap.get(str) != null && !this.mLabelMap.get(str).equals(obj)) {
            notifyPortraitChange(str, obj);
        } else if (!this.mLabelMap.containsKey(str)) {
            notifyPortraitChange(str, obj);
        } else {
            TTVideoEngineLog.d(TAG, "same label");
        }
        this.mLabelMap.put(str, obj);
    }

    public void updateLabelBySettings(String str, String str2) {
        JSONObject optJSONObject;
        if (!TextUtils.isEmpty(str) && str.equals("vod")) {
            TTVideoEngineLog.d(TAG, "updateLabelBySettings key: " + str + "value: " + str2);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.has(PORTRAIT_ENGINE_KEY) && (optJSONObject = jSONObject.optJSONObject(PORTRAIT_ENGINE_KEY)) != null) {
                        if (optJSONObject.has(LABEL_NET_QUALITY_SPEED)) {
                            setLabel(LABEL_NET_QUALITY_SPEED, Integer.valueOf(optJSONObject.optInt(LABEL_NET_QUALITY_SPEED)));
                        }
                        if (optJSONObject.has(LABEL_NET_QUALITY_STABILITY)) {
                            setLabel(LABEL_NET_QUALITY_STABILITY, Integer.valueOf(optJSONObject.optInt(LABEL_NET_QUALITY_STABILITY)));
                        }
                        if (optJSONObject.has(LABEL_REBUF)) {
                            setLabel(LABEL_REBUF, Integer.valueOf(optJSONObject.optInt(LABEL_REBUF)));
                        }
                        if (optJSONObject.has(LABEL_FF)) {
                            setLabel(LABEL_FF, Integer.valueOf(optJSONObject.optInt(LABEL_FF)));
                        }
                        if (optJSONObject.has(LABEL_SEEK)) {
                            setLabel(LABEL_SEEK, Integer.valueOf(optJSONObject.optInt(LABEL_SEEK)));
                        }
                        if (optJSONObject.has(LABEL_WATCH_DURATION)) {
                            setLabel(LABEL_WATCH_DURATION, Integer.valueOf(optJSONObject.optInt(LABEL_WATCH_DURATION)));
                        }
                        if (optJSONObject.has(LABEL_FIRST_FRAME)) {
                            setLabel(LABEL_FIRST_FRAME, Integer.valueOf(optJSONObject.optInt(LABEL_FIRST_FRAME)));
                        }
                        if (optJSONObject.has(LABEL_REBUFFERING)) {
                            setLabel(LABEL_REBUFFERING, Integer.valueOf(optJSONObject.optInt(LABEL_REBUFFERING)));
                        }
                        if (optJSONObject.has("user_enter_full_screen")) {
                            setLabel("user_enter_full_screen", Integer.valueOf(optJSONObject.optInt("user_enter_full_screen")));
                        }
                        if (optJSONObject.has(LABEL_SCENE_COUNT_PER_100VV)) {
                            setLabel(LABEL_SCENE_COUNT_PER_100VV, Double.valueOf(optJSONObject.optDouble(LABEL_SCENE_COUNT_PER_100VV)));
                        }
                        if (optJSONObject.has(LABEL_USER_QUALITY_SENSITIVITY)) {
                            setLabel(LABEL_USER_QUALITY_SENSITIVITY, Double.valueOf(optJSONObject.optDouble(LABEL_USER_QUALITY_SENSITIVITY)));
                        }
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }
}
