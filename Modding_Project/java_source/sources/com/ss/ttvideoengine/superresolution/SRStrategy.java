package com.ss.ttvideoengine.superresolution;

import android.text.TextUtils;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SRStrategy {
    public static final String KEY_BITRATE_AFTER_DOWNGRADE = "bad";
    public static final String KEY_BITRATE_BEFORE_DOWNGRADE = "bbd";
    public static final String KEY_BITRATE_DOWNGRADE_TYPE = "bdt";
    public static final String KEY_CURRENT_QUALITY_DESC = "cqd";
    public static final String KEY_CURRENT_RESOLUTION = "cr";
    public static final String KEY_DISPLAY_HEIGHT = "dh";
    public static final String KEY_DISPLAY_WIDTH = "dw";
    public static final String KEY_DOWNGRADE = "do";
    public static final String KEY_ENABLE_ABR_SR = "eas";
    public static final String KEY_ENABLE_SR_STRATEGY = "ess";
    public static final String KEY_FR_PLAYER_TIME = "fpt";
    public static final String KEY_FR_TEXTURE_SET_TIME = "fts";
    public static final String KEY_FR_TEXTURE_TIME = "ftt";
    public static final String KEY_NET_STATE = "ns";
    public static final String KEY_ORIGIN_QUALITY_DESC = "oqd";
    public static final String KEY_ORIGIN_RESOLUTION = "or";
    public static final String KEY_SCREEN_HEIGHT = "sh";
    public static final String KEY_SCREEN_WIDTH = "sw";
    public static final String KEY_SR_FAIL_REASON = "sfr";
    public static final String KEY_SR_MEDIA_INFO = "smi";
    public static final String KEY_SR_OPEN = "so";
    public static final String KEY_SR_SATISFIED = "srs";
    public static final String KEY_SR_STATUS = "ss";
    public static final String KEY_SR_STRATEGY_CONFIG = "sc";
    public static final String KEY_SR_STRATEGY_MODE = "sm";
    public static final String KEY_SR_USE_TEXTURE = "sut";
    public static final String KEY_USER_EXPECTED = "ue";
    public static final String MEDIAINFO_KEY_BITRATE = "br";
    public static final String MEDIAINFO_KEY_CACHE_SIZE = "cs";
    public static final String MEDIAINFO_KEY_RESOLUTION = "res";
    public static final String MEDIAINFO_KEY_SUPPORT_SR = "ss";
    public static final String MEDIAINFO_KEY_WIDTH = "w";
    private static final int PRELOAD_INFO_CACHE_SIZE = 100;
    public static final int SCENE_DETAIL = 2;
    public static final int SCENE_FULLSCREEN = 4;
    public static final int SCENE_LIST = 1;
    public static final int SCENE_NONE = 0;
    public static final int SR_CHECK_TYPE_PLAY = 1;
    public static final int SR_CHECK_TYPE_PRELOAD = 0;
    public static final int SR_STATUS_CLOSE = 0;
    public static final int SR_STATUS_NONE = -1;
    public static final int SR_STATUS_OPEN_FAIL = 2;
    public static final int SR_STATUS_OPEN_SUCCESS = 1;
    public static final int SR_STRATEGY_MODE_AUTO = 0;
    public static final int SR_STRATEGY_MODE_USER = 1;
    private static final String TAG = "TTVideoEngine.SRStrategy";
    public static final int VIDEO_FORMAT_TYPE_DASH = 2;
    public static final int VIDEO_FORMAT_TYPE_MP4 = 1;
    private SRStrategyConfig mSRConfig = new SRStrategyConfig();
    private ISRStrategyListener mSRStrategyListener = null;
    private int mSRStrategyMode = 1;
    private boolean mSRSatisfied = false;
    private boolean mShouldUseSRTexture = false;
    private int mSRNotUseReason = 0;
    private int mSRStatus = -1;
    private Map<Integer, List<Integer>> mSRBenchmark = new HashMap();
    private Map<String, Object> mStrategyInfo = new HashMap();

    public SRStrategy() {
        resetAll();
        this.mSRBenchmark.put(2, new ArrayList(Arrays.asList(3)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b0, code lost:
        if (r1.compareTo(java.lang.Integer.valueOf(r0.intValue() & r1.intValue())) != 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f9, code lost:
        if (r1.compareTo(java.lang.Integer.valueOf(r0.intValue() & r1.intValue())) != 0) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSatisfied() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.superresolution.SRStrategy.checkSatisfied():void");
    }

    public static int getResolutionIndex(VideoInfo videoInfo) {
        int i10;
        Resolution resolution = videoInfo.getResolution();
        if (resolution != null) {
            i10 = resolution.getIndex();
        } else {
            i10 = -1;
        }
        String valueStr = videoInfo.getValueStr(32);
        if (valueStr != null) {
            try {
                return Integer.parseInt(valueStr);
            } catch (Exception unused) {
                return i10;
            }
        }
        return i10;
    }

    public String configString() {
        return this.mSRConfig.toString();
    }

    public SRStrategyConfig getConfig() {
        return this.mSRConfig;
    }

    public JSONObject getConfigJson() {
        return this.mSRConfig.getJson();
    }

    public Integer getMaxHeight() {
        return this.mSRConfig.getMaxHeight();
    }

    public Integer getMaxWidth() {
        return this.mSRConfig.getMaxWidth();
    }

    public Map<Integer, List<Integer>> getSRBenchmark() {
        return this.mSRBenchmark;
    }

    public int getSRNotUseReason() {
        return this.mSRNotUseReason;
    }

    public int getSRStatus() {
        return this.mSRStatus;
    }

    public int getSRStrategyMode() {
        return this.mSRStrategyMode;
    }

    public Map<String, Object> getStrategyInfo() {
        return this.mStrategyInfo;
    }

    public boolean isSREnabled() {
        Boolean enableSR = this.mSRConfig.getEnableSR();
        if (enableSR != null) {
            return enableSR.booleanValue();
        }
        return false;
    }

    public boolean isSRSatisfied() {
        return this.mSRSatisfied;
    }

    public void onSRStatus(int i10, int i11) {
        int i12 = this.mSRStatus;
        if (i10 == i12) {
            return;
        }
        if (i10 == 0 && 2 == i12) {
            return;
        }
        this.mSRStatus = i10;
        if (2 == i10) {
            this.mSRNotUseReason = i11;
        }
    }

    public void resetAll() {
        this.mSRConfig.resetAll();
        this.mSRConfig.enableSR(false);
        this.mSRConfig.setEnableHdr(false);
        this.mSRConfig.setIsSpeed(false);
        this.mSRStrategyListener = null;
        this.mSRStrategyMode = 1;
        this.mSRSatisfied = false;
        this.mShouldUseSRTexture = false;
        this.mSRNotUseReason = 0;
        this.mSRStatus = -1;
        this.mStrategyInfo.clear();
    }

    public void setSRStrategyListener(ISRStrategyListener iSRStrategyListener) {
        this.mSRStrategyListener = iSRStrategyListener;
    }

    public void setSRStrategyMode(int i10) {
        this.mSRStrategyMode = i10;
    }

    public void setStrategyInfo(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && !this.mStrategyInfo.containsKey(str)) {
            this.mStrategyInfo.put(str, obj);
        }
    }

    public boolean shouldUseSRTexture() {
        return this.mShouldUseSRTexture;
    }

    public void updateConfig(SRStrategyConfig sRStrategyConfig) {
        if (sRStrategyConfig == null) {
            return;
        }
        StrategyManager.instance().updateSRStrategyConfig(sRStrategyConfig);
        this.mSRConfig.updateFrom(sRStrategyConfig);
        String extraConfig = sRStrategyConfig.getExtraConfig();
        if (extraConfig != null && !extraConfig.isEmpty()) {
            String lowerCase = extraConfig.toLowerCase();
            HashMap hashMap = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject(lowerCase).getJSONObject(IVideoEventLogger.FEATURE_KEY_SR).getJSONObject("benchmark");
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    int parseInt = Integer.parseInt(next);
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        arrayList.add(Integer.valueOf(jSONArray.getInt(i10)));
                    }
                    hashMap.put(Integer.valueOf(parseInt), arrayList);
                }
                this.mSRBenchmark = hashMap;
                TTVideoEngineLog.i(TAG, "[SRLog]updateConfig mSRBenchmark=" + this.mSRBenchmark);
            } catch (Exception e10) {
                TTVideoEngineLog.i(TAG, "[SRLog]updateConfig exception=" + e10);
                e10.printStackTrace();
            }
        }
        checkSatisfied();
    }

    public Boolean videoInfoSupportSR(VideoInfo videoInfo, List<VideoInfo> list) {
        int resolutionIndex = getResolutionIndex(videoInfo);
        if (!this.mSRBenchmark.containsKey(Integer.valueOf(resolutionIndex))) {
            return Boolean.FALSE;
        }
        Integer screenWidth = this.mSRConfig.getScreenWidth();
        List<Integer> list2 = this.mSRBenchmark.get(Integer.valueOf(resolutionIndex));
        if (list2 == null) {
            return Boolean.FALSE;
        }
        VideoInfo videoInfo2 = null;
        for (VideoInfo videoInfo3 : list) {
            int resolutionIndex2 = getResolutionIndex(videoInfo3);
            for (Integer num : list2) {
                if (num.intValue() == resolutionIndex2 && (videoInfo2 == null || videoInfo2.getValueInt(3) < videoInfo3.getValueInt(3))) {
                    videoInfo2 = videoInfo3;
                    break;
                }
            }
        }
        if (videoInfo2 != null && (screenWidth == null || videoInfo2.getValueInt(1) > screenWidth.intValue())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }
}
