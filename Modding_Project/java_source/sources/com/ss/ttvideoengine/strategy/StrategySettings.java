package com.ss.ttvideoengine.strategy;

import com.ss.ttvideoengine.setting.SettingsHelper;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategySettings {
    public static final String COMMON = "recomm_default";
    public static final String PRELOAD = "strategy_preload";
    public static final String PRE_RENDER = "strategy_prerender";
    public static final String SHORT_VIDEO = "scene_short_video";
    public static final String SMALL_VIDEO = "scene_small_video";
    public static final String STATIC = "strategy_static";
    public static final String STRATEGY = "strategy_center_v1";
    private JSONObject mCommon;
    private JSONObject mShortStatic;
    private JSONObject mShortVideoPreload;
    private JSONObject mSmallStatic;
    private JSONObject mSmallVideoPreRender;
    private JSONObject mSmallVideoPreload;

    /* loaded from: classes6.dex */
    private static class Holder {
        private static final StrategySettings instance = new StrategySettings();

        private Holder() {
        }
    }

    public static StrategySettings getInstance() {
        return Holder.instance;
    }

    private void reset() {
        this.mCommon = null;
        this.mSmallVideoPreload = null;
        this.mSmallVideoPreRender = null;
        this.mSmallStatic = null;
        this.mShortVideoPreload = null;
        this.mShortStatic = null;
    }

    public JSONObject getCommon() {
        return this.mCommon;
    }

    public JSONObject getPreRender(int i10) {
        return this.mSmallVideoPreRender;
    }

    public JSONObject getPreload(int i10) {
        if (i10 != 1) {
            return this.mSmallVideoPreload;
        }
        return this.mShortVideoPreload;
    }

    public JSONObject getStatic(int i10) {
        if (i10 == 0) {
            return this.mSmallStatic;
        }
        if (i10 == 1) {
            return this.mShortStatic;
        }
        return null;
    }

    public void update() {
        reset();
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject(STRATEGY);
        if (vodJsonObject == null) {
            return;
        }
        this.mCommon = vodJsonObject.optJSONObject(COMMON);
        JSONObject optJSONObject = vodJsonObject.optJSONObject(SMALL_VIDEO);
        if (optJSONObject != null) {
            this.mSmallVideoPreload = optJSONObject.optJSONObject(PRELOAD);
            this.mSmallVideoPreRender = optJSONObject.optJSONObject(PRE_RENDER);
            this.mSmallStatic = optJSONObject.optJSONObject(STATIC);
        }
        JSONObject optJSONObject2 = vodJsonObject.optJSONObject(SHORT_VIDEO);
        if (optJSONObject2 != null) {
            this.mShortVideoPreload = optJSONObject2.optJSONObject(PRELOAD);
            this.mShortStatic = optJSONObject2.optJSONObject(STATIC);
        }
    }

    private StrategySettings() {
        update();
    }
}
