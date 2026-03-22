package com.ss.ttvideoengine.strategy.gear;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.BaseAppInfo;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VodSettings;
import com.ss.ttvideoengine.VodSettingsKey;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyGearABR {
    public static final String ASSETS_PATH = "vod_settings/vod_gear_strategy_default.json";
    public static JSONObject sDefaultConfig;

    @NonNull
    public static synchronized JSONObject defaultConfig() {
        synchronized (StrategyGearABR.class) {
            JSONObject jSONObject = sDefaultConfig;
            if (jSONObject != null) {
                return jSONObject;
            }
            try {
                String read = read(BaseAppInfo.mContext.getAssets().open(ASSETS_PATH));
                if (!TextUtils.isEmpty(read)) {
                    sDefaultConfig = new JSONObject(read);
                }
            } catch (IOException | JSONException e10) {
                e10.printStackTrace();
            }
            if (sDefaultConfig == null) {
                sDefaultConfig = new JSONObject();
            }
            return sDefaultConfig;
        }
    }

    public static void initGlobalConfig() {
        GearStrategyConfig globalConfig = GearStrategy.getGlobalConfig();
        String vodString = VodSettings.getVodString(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
        if (vodString == null) {
            vodString = defaultConfig().optString(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
            TTVideoEngineLog.d(GearStrategy.TAG, "initGlobalConfig using default config instead online. " + vodString);
        } else {
            TTVideoEngineLog.d(GearStrategy.TAG, "initGlobalConfig using online config. " + vodString);
        }
        String stringValue = globalConfig.getStringValue(3);
        if (!TextUtils.isEmpty(vodString) && !TextUtils.equals(stringValue, vodString)) {
            globalConfig.setStringValue(3, vodString);
            GearStrategy.setGlobalConfig(globalConfig);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0034 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String read(java.io.InputStream r5) throws java.io.IOException {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2d
            r1.<init>()     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2d
            r0 = 4096(0x1000, float:5.74E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L16 java.io.IOException -> L18
        La:
            int r2 = r5.read(r0)     // Catch: java.lang.Throwable -> L16 java.io.IOException -> L18
            r3 = -1
            if (r2 == r3) goto L1a
            r3 = 0
            r1.write(r0, r3, r2)     // Catch: java.lang.Throwable -> L16 java.io.IOException -> L18
            goto La
        L16:
            r0 = move-exception
            goto L32
        L18:
            r0 = move-exception
            goto L31
        L1a:
            java.lang.String r0 = "utf-8"
            java.lang.String r0 = r1.toString(r0)     // Catch: java.lang.Throwable -> L16 java.io.IOException -> L18
            r5.close()     // Catch: java.io.IOException -> L24
        L24:
            r1.close()     // Catch: java.io.IOException -> L27
        L27:
            return r0
        L28:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L32
        L2d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L31:
            throw r0     // Catch: java.lang.Throwable -> L16
        L32:
            if (r5 == 0) goto L37
            r5.close()     // Catch: java.io.IOException -> L37
        L37:
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.io.IOException -> L3c
        L3c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.strategy.gear.StrategyGearABR.read(java.io.InputStream):java.lang.String");
    }

    public static void startSpeedPredictor() {
        JSONObject jSONObject;
        JSONObject vodJsonObject = VodSettings.getVodJsonObject(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
        if (vodJsonObject == null) {
            vodJsonObject = defaultConfig().optJSONObject(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
            TTVideoEngineLog.d(GearStrategy.TAG, "startSpeedPredictor using default config instead online. " + vodJsonObject);
        } else {
            TTVideoEngineLog.d(GearStrategy.TAG, "startSpeedPredictor using online config. " + vodJsonObject);
        }
        if (vodJsonObject != null) {
            jSONObject = vodJsonObject.optJSONObject(VodSettingsKey.KEY_VOD_STRATEGY_SPEED_PREDICT_CONFIG);
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            int optInt = jSONObject.optInt("net_speed_abr_predict_type");
            int optInt2 = jSONObject.optInt("test_speed_interval_ms");
            int optInt3 = jSONObject.optInt("is_report_speed_info");
            int optInt4 = jSONObject.optInt("report_speed_info_max_window_size");
            TTVideoEngine.setIntValue(1112, 1);
            TTVideoEngine.startSpeedPredictor(optInt, optInt2, optInt3, optInt4);
        }
    }

    public static void updateSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        String str;
        if (TextUtils.isEmpty(sRStrategyConfig.getExtraConfig())) {
            JSONObject vodJsonObject = VodSettings.getVodJsonObject(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
            if (vodJsonObject == null) {
                vodJsonObject = defaultConfig().optJSONObject(VodSettingsKey.KEY_VOD_GEAR_STRATEGY_CONFIG);
                TTVideoEngineLog.d(GearStrategy.TAG, "updateSRStrategyConfig using default config instead online. " + vodJsonObject);
            } else {
                TTVideoEngineLog.d(GearStrategy.TAG, "updateSRStrategyConfig using online config. " + vodJsonObject);
            }
            if (vodJsonObject != null) {
                str = vodJsonObject.optString(VodSettingsKey.KEY_VOD_SR_STRATEGY_EXTRA_CONFIG);
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                sRStrategyConfig.setExtraConfig(str);
            }
        }
    }
}
