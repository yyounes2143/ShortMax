package com.ss.ttvideoengine.selector.gracie;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.selector.Selector;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class GracieSelector implements Selector {
    private static final int DEFAULT_ONCE_TYPE = 8;
    public static final int SELECT_SCENE_PRELOAD = 0;
    public static final int SELECT_SCENE_STARTUP = 1;
    private static int sSpeedType = 4;
    private final int mOnceT;
    private final int mScene;

    /* loaded from: classes6.dex */
    public static class Params {
        Map<Integer, Object> mMaps = new HashMap();

        public Params abrMax(int i10, String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.GRACIE_MAX_RESOLUTION_QUALITY.ordinal()), str);
            }
            if (i10 >= 0) {
                this.mMaps.put(Integer.valueOf(ParamsKey.GRACIE_MAX_RESOLUTION_INDEX.ordinal()), Integer.valueOf(i10));
            }
            return this;
        }

        public Params aggressivePortraitLowBitrate(int i10) {
            this.mMaps.put(Integer.valueOf(ParamsKey.AGGR_PORTRAIT_LOW_BIT.ordinal()), Integer.valueOf(i10));
            return this;
        }

        public Map<Integer, Object> build() {
            return this.mMaps;
        }

        public Params cellularMax(int i10, String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.CELLULAR_MAX_RESOLUTION_QUALITY.ordinal()), str);
            }
            if (i10 >= 0) {
                this.mMaps.put(Integer.valueOf(ParamsKey.CELLULAR_MAX_RESOLUTION_INDEX.ordinal()), Integer.valueOf(i10));
            }
            return this;
        }

        public Params displaySize(int i10, int i11) {
            this.mMaps.put(Integer.valueOf(ParamsKey.DISPLAY_WIDTH.ordinal()), Integer.valueOf(i10));
            this.mMaps.put(Integer.valueOf(ParamsKey.DISPLAY_HEIGHT.ordinal()), Integer.valueOf(i11));
            return this;
        }

        public Params downgrade(int i10, String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.DOWNGRADE_RESOLUTION_QUALITY.ordinal()), str);
            }
            if (i10 >= 0) {
                this.mMaps.put(Integer.valueOf(ParamsKey.DOWNGRADE_RESOLUTION_INDEX.ordinal()), Integer.valueOf(i10));
            }
            return this;
        }

        public Params screenSize(int i10, int i11) {
            this.mMaps.put(Integer.valueOf(ParamsKey.SCREEN_WIDTH.ordinal()), Integer.valueOf(i10));
            this.mMaps.put(Integer.valueOf(ParamsKey.SCREEN_HEIGHT.ordinal()), Integer.valueOf(i11));
            return this;
        }

        public Params srStrategyConfig(SRStrategyConfig sRStrategyConfig) {
            if (sRStrategyConfig == null) {
                return this;
            }
            sRStrategyConfig.setStrategyType(0);
            this.mMaps.put(Integer.valueOf(ParamsKey.SR_STRATEGY_CONFIG.ordinal()), sRStrategyConfig);
            return this;
        }

        public Params tags(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.TAG.ordinal()), str);
            }
            if (!TextUtils.isEmpty(str2)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.SUB_TAG.ordinal()), str2);
            }
            return this;
        }

        public Params userExpected(int i10, String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.USER_EXPECTED_RESOLUTION_QUALITY.ordinal()), str);
            }
            if (i10 >= 0) {
                this.mMaps.put(Integer.valueOf(ParamsKey.USER_EXPECTED_RESOLUTION_INDEX.ordinal()), Integer.valueOf(i10));
            }
            return this;
        }

        public Params wifiDefault(int i10, String str) {
            if (!TextUtils.isEmpty(str)) {
                this.mMaps.put(Integer.valueOf(ParamsKey.WIFI_DEFAULT_RESOLUTION_QUALITY.ordinal()), str);
            }
            if (i10 >= 0) {
                this.mMaps.put(Integer.valueOf(ParamsKey.WIFI_DEFAULT_RESOLUTION_INDEX.ordinal()), Integer.valueOf(i10));
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public enum ParamsKey {
        SCREEN_WIDTH,
        SCREEN_HEIGHT,
        DISPLAY_WIDTH,
        DISPLAY_HEIGHT,
        WIFI_DEFAULT_RESOLUTION_INDEX,
        WIFI_DEFAULT_RESOLUTION_QUALITY,
        CELLULAR_MAX_RESOLUTION_INDEX,
        CELLULAR_MAX_RESOLUTION_QUALITY,
        USER_EXPECTED_RESOLUTION_INDEX,
        USER_EXPECTED_RESOLUTION_QUALITY,
        GRACIE_MAX_RESOLUTION_INDEX,
        GRACIE_MAX_RESOLUTION_QUALITY,
        DOWNGRADE_RESOLUTION_INDEX,
        DOWNGRADE_RESOLUTION_QUALITY,
        SR_STRATEGY_CONFIG,
        TAG,
        SUB_TAG,
        AGGR_PORTRAIT_LOW_BIT
    }

    public GracieSelector(int i10) {
        this(i10, 8);
    }

    private static int getBitrate(int i10, int i11, @NonNull Map<Integer, Object> map, @NonNull IVideoModel iVideoModel) {
        int i12;
        Object obj = map.get(Integer.valueOf(i10));
        if (obj instanceof Integer) {
            i12 = ((Integer) obj).intValue();
        } else {
            i12 = -1;
        }
        Object obj2 = map.get(Integer.valueOf(i11));
        if ((i12 == -1 || i12 == Resolution.Auto.getIndex()) && obj2 == null) {
            return -1;
        }
        HashMap hashMap = new HashMap();
        hashMap.clear();
        if (obj2 instanceof String) {
            hashMap.put(32, (String) obj2);
        }
        VideoInfo videoInfo = iVideoModel.getVideoInfo(Resolution.valueOf(i12), (Map<Integer, String>) hashMap, true);
        if (videoInfo == null) {
            return -1;
        }
        return videoInfo.getValueInt(3);
    }

    public static void setSpeedType(int i10) {
        sSpeedType = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x05d4  */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Object, com.bytedance.vcloud.abrmodule.ABRVideoStream] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14, types: [int] */
    /* JADX WARN: Type inference failed for: r11v26 */
    @Override // com.ss.ttvideoengine.selector.Selector
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ss.ttvideoengine.selector.SelectedInfo select(@androidx.annotation.Nullable com.ss.ttvideoengine.model.IVideoModel r26, @androidx.annotation.Nullable java.util.Map<java.lang.Integer, java.lang.Object> r27) {
        /*
            Method dump skipped, instructions count: 1513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.selector.gracie.GracieSelector.select(com.ss.ttvideoengine.model.IVideoModel, java.util.Map):com.ss.ttvideoengine.selector.SelectedInfo");
    }

    public GracieSelector(int i10, int i11) {
        this.mScene = i10;
        this.mOnceT = i11;
    }
}
