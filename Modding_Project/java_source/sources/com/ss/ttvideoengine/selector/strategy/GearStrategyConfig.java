package com.ss.ttvideoengine.selector.strategy;

import android.text.TextUtils;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class GearStrategyConfig {
    private String mParsedStrategyConfigString;
    private IGearStrategyListener mGearStrategyListener = null;
    private Object mUserData = null;
    private String mExtraConfig = "";
    private final Map<Integer, Object> mConfigValue = Collections.synchronizedMap(new HashMap());
    private final Map<String, String> mParam = new HashMap();

    public double getDoubleValue(int i10) {
        return getDoubleValue(i10, -1.0d);
    }

    public String getExtraConfig() {
        return this.mExtraConfig;
    }

    public float getFloatValue(int i10) {
        return getFloatValue(i10, -1.0f);
    }

    public IGearStrategyListener getGearStrategyListener() {
        return this.mGearStrategyListener;
    }

    public int getIntValue(int i10) {
        return getIntValue(i10, -1);
    }

    public <T> T getObjectValue(int i10) {
        return (T) getObjectValue(i10, null);
    }

    public Map<String, String> getParam() {
        return this.mParam;
    }

    public String getStringValue(int i10) {
        return getStringValue(i10, null);
    }

    public Object getUserData() {
        return this.mUserData;
    }

    public void parse() {
        JSONObject jSONObject = null;
        String stringValue = getStringValue(3, null, false);
        if (TextUtils.isEmpty(stringValue)) {
            return;
        }
        synchronized (GearStrategyConfig.class) {
            try {
                GearStrategyConfig globalConfig = GearStrategy.getGlobalConfig();
                if (stringValue != null && TextUtils.equals(stringValue, globalConfig.mParsedStrategyConfigString)) {
                    TTVideoEngineLog.d(GearStrategy.TAG, "global parsed already");
                } else if (TextUtils.equals(this.mParsedStrategyConfigString, stringValue)) {
                    TTVideoEngineLog.d(GearStrategy.TAG, "parsed already");
                } else {
                    this.mParsedStrategyConfigString = stringValue;
                    try {
                        jSONObject = new JSONObject(stringValue).optJSONObject(GearStrategyConsts.GEAR_STRATEGY_CONFIG_NAME);
                        TTVideoEngineLog.d(GearStrategy.TAG, "parse success " + stringValue);
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                        TTVideoEngineLog.d(GearStrategy.TAG, "parse error " + stringValue);
                    }
                    if (jSONObject == null) {
                        return;
                    }
                    if (jSONObject.has(GearStrategy.GEAR_STRATEGY_KEY_STRATEGY_TYPE)) {
                        setIntValue(1, jSONObject.optInt(GearStrategy.GEAR_STRATEGY_KEY_STRATEGY_TYPE, -1));
                    }
                    if (jSONObject.has(GearStrategy.GEAR_STRATEGY_KEY_STRATEGY_MODULE)) {
                        setIntValue(2, jSONObject.optInt(GearStrategy.GEAR_STRATEGY_KEY_STRATEGY_MODULE, -1));
                    }
                    if (jSONObject.has("switch_cs_model")) {
                        setIntValue(44, jSONObject.optInt("switch_cs_model", 1));
                    }
                    if (jSONObject.has("fixed_level")) {
                        setIntValue(45, jSONObject.optInt("fixed_level", 2));
                    }
                    if (jSONObject.has("startup_model")) {
                        setIntValue(46, jSONObject.optInt("startup_model", 0));
                    }
                    if (jSONObject.has("startup_bandwidth_parameter")) {
                        setFloatValue(47, TTHelper.safeParseFloat(jSONObject, "startup_bandwidth_parameter", 0.9f));
                    }
                    if (jSONObject.has("startup_first_param_str")) {
                        setDoubleValue(48, TTHelper.safeParseDouble(jSONObject, "startup_first_param_str", 0.0d));
                    }
                    if (jSONObject.has("startup_second_param_str")) {
                        setDoubleValue(49, TTHelper.safeParseDouble(jSONObject, "startup_second_param_str", 2.67952228E-5d));
                    }
                    if (jSONObject.has("startup_third_param_str")) {
                        setDoubleValue(50, TTHelper.safeParseDouble(jSONObject, "startup_third_param_str", 0.151840652d));
                    }
                    if (jSONObject.has("startup_fourth_param_str")) {
                        setDoubleValue(51, TTHelper.safeParseDouble(jSONObject, "startup_fourth_param_str", 69.0106422d));
                    }
                    if (jSONObject.has("startup_use_cache")) {
                        setIntValue(52, jSONObject.optInt("startup_use_cache", 0));
                    }
                    if (jSONObject.has("flow_json")) {
                        setStringValue(53, jSONObject.optString("flow_json"));
                    }
                    if (jSONObject.has("preload_json")) {
                        setStringValue(54, jSONObject.optString("preload_json"));
                    }
                    if (jSONObject.has("startup_json")) {
                        setStringValue(55, jSONObject.optString("startup_json"));
                    }
                    if (jSONObject.has("abr_pool_enable")) {
                        setIntValue(56, jSONObject.optInt("abr_pool_enable", 0));
                    }
                    if (jSONObject.has("startup_algo_type")) {
                        setIntValue(16, jSONObject.optInt("startup_algo_type", 0));
                    }
                    if (jSONObject.has("startup_speed_type")) {
                        setIntValue(9, jSONObject.optInt("startup_speed_type", 4));
                    }
                    if (jSONObject.has("wifi_default_resolution_index")) {
                        setIntValue(17, jSONObject.optInt("wifi_default_resolution_index", -1));
                    }
                    if (jSONObject.has("wifi_max_resolution_index")) {
                        setIntValue(21, jSONObject.optInt("wifi_max_resolution_index", -1));
                    }
                    if (jSONObject.has("cellular_max_resolution_index")) {
                        setIntValue(19, jSONObject.optInt("cellular_max_resolution_index", -1));
                    }
                    if (jSONObject.has("wifi_default_resolution_quality")) {
                        setStringValue(18, jSONObject.optString("wifi_default_resolution_quality"));
                    }
                    if (jSONObject.has("wifi_max_resolution_quality")) {
                        setStringValue(22, jSONObject.optString("wifi_max_resolution_quality"));
                    }
                    if (jSONObject.has("cellular_max_resolution_quality")) {
                        setStringValue(20, jSONObject.optString("cellular_max_resolution_quality"));
                    }
                    if (jSONObject.has("startup_narrow_screen_use_width")) {
                        setIntValue(31, jSONObject.optInt("startup_narrow_screen_use_width", 0));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public GearStrategyConfig setDoubleValue(int i10, double d10) {
        this.mConfigValue.put(Integer.valueOf(i10), Double.valueOf(d10));
        return this;
    }

    public GearStrategyConfig setExtraConfig(String str) {
        this.mExtraConfig = str;
        return this;
    }

    public GearStrategyConfig setFloatValue(int i10, float f10) {
        this.mConfigValue.put(Integer.valueOf(i10), Float.valueOf(f10));
        return this;
    }

    public GearStrategyConfig setGearStrategyListener(IGearStrategyListener iGearStrategyListener) {
        this.mGearStrategyListener = iGearStrategyListener;
        return this;
    }

    public GearStrategyConfig setIntValue(int i10, int i11) {
        this.mConfigValue.put(Integer.valueOf(i10), Integer.valueOf(i11));
        return this;
    }

    public GearStrategyConfig setIntValueIfNotExist(int i10, int i11) {
        if (!this.mConfigValue.containsKey(Integer.valueOf(i10))) {
            this.mConfigValue.put(Integer.valueOf(i10), Integer.valueOf(i11));
        }
        return this;
    }

    public GearStrategyConfig setObjectValue(int i10, Object obj) {
        this.mConfigValue.put(Integer.valueOf(i10), obj);
        return this;
    }

    public GearStrategyConfig setObjectValueIfNotExist(int i10, Object obj) {
        if (!this.mConfigValue.containsKey(Integer.valueOf(i10))) {
            this.mConfigValue.put(Integer.valueOf(i10), obj);
        }
        return this;
    }

    public GearStrategyConfig setStringValue(int i10, String str) {
        this.mConfigValue.put(Integer.valueOf(i10), str);
        return this;
    }

    public GearStrategyConfig setStringValueIfNotExist(int i10, String str) {
        if (!this.mConfigValue.containsKey(Integer.valueOf(i10))) {
            this.mConfigValue.put(Integer.valueOf(i10), str);
        }
        return this;
    }

    public GearStrategyConfig setUserData(Object obj) {
        this.mUserData = obj;
        return this;
    }

    public double getDoubleValue(int i10, double d10) {
        return getDoubleValue(i10, d10, true);
    }

    public float getFloatValue(int i10, float f10) {
        return getFloatValue(i10, f10, true);
    }

    public int getIntValue(int i10, int i11) {
        return getIntValue(i10, i11, true);
    }

    public <T> T getObjectValue(int i10, T t10) {
        return (T) getObjectValue(i10, t10, true);
    }

    public String getStringValue(int i10, String str) {
        return getStringValue(i10, str, true);
    }

    public double getDoubleValue(int i10, double d10, boolean z10) {
        GearStrategyConfig globalConfig;
        Object obj = this.mConfigValue.get(Integer.valueOf(i10));
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        return (!z10 || (globalConfig = GearStrategy.getGlobalConfig()) == this) ? d10 : globalConfig.getDoubleValue(i10, d10, false);
    }

    public float getFloatValue(int i10, float f10, boolean z10) {
        GearStrategyConfig globalConfig;
        Object obj = this.mConfigValue.get(Integer.valueOf(i10));
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        return (!z10 || (globalConfig = GearStrategy.getGlobalConfig()) == this) ? f10 : globalConfig.getFloatValue(i10, f10, false);
    }

    public int getIntValue(int i10, int i11, boolean z10) {
        GearStrategyConfig globalConfig;
        Object obj = this.mConfigValue.get(Integer.valueOf(i10));
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return (!z10 || (globalConfig = GearStrategy.getGlobalConfig()) == this) ? i11 : globalConfig.getIntValue(i10, i11, false);
    }

    public <T> T getObjectValue(int i10, T t10, boolean z10) {
        GearStrategyConfig globalConfig;
        T t11 = (T) this.mConfigValue.get(Integer.valueOf(i10));
        return t11 != null ? t11 : (!z10 || (globalConfig = GearStrategy.getGlobalConfig()) == this) ? t10 : (T) globalConfig.getObjectValue(i10, t10, false);
    }

    public String getStringValue(int i10, String str, boolean z10) {
        GearStrategyConfig globalConfig;
        Object obj = this.mConfigValue.get(Integer.valueOf(i10));
        if (obj instanceof String) {
            return (String) obj;
        }
        return (!z10 || (globalConfig = GearStrategy.getGlobalConfig()) == this) ? str : globalConfig.getStringValue(i10, str, false);
    }
}
