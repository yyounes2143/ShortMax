package com.bytedance.sdk.openadsdk.ex.oJ;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import com.adjust.sdk.Constants;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.IUZ;
import com.bytedance.sdk.openadsdk.utils.LpP;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.jr;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private final String Pfn;
    private int ZYk;
    private final boolean ex;
    private long oJ;
    private final Context tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        private static final tB oJ = new tB();
    }

    private String Pfn() {
        if (DeviceUtils.tB(this.tB)) {
            return "tv";
        }
        if (DeviceUtils.ZYk(this.tB)) {
            return "android_pad";
        }
        return "android";
    }

    private String ba() {
        StringBuilder sb2 = new StringBuilder();
        try {
            if (IUZ.Pfn()) {
                sb2.append("MIUI-");
            } else if (IUZ.ZYk()) {
                sb2.append("FLYME-");
            } else {
                String WcQ = IUZ.WcQ();
                if (IUZ.oJ(WcQ)) {
                    sb2.append("EMUI-");
                }
                if (!TextUtils.isEmpty(WcQ)) {
                    sb2.append(WcQ);
                    sb2.append("-");
                }
            }
            sb2.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused) {
        }
        return sb2.toString();
    }

    private int ex() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / Constants.ONE_HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static tB oJ() {
        return oJ.oJ;
    }

    private boolean tB() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public List<com.bytedance.sdk.openadsdk.ex.oJ> ZYk(List<com.bytedance.sdk.openadsdk.ex.oJ> list) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.ex.oJ oJVar : list) {
            try {
                JSONObject tB = oJVar.tB();
                tB.putOpt("_ad_staging_flag", 1);
                arrayList.add(new com.bytedance.sdk.openadsdk.ex.oJ(oJVar.oJ, tB));
            } catch (Exception e10) {
                QSm.tB("AdLogParamsGenerate", e10.getMessage());
            }
        }
        return arrayList;
    }

    private tB() {
        this.ex = tB();
        this.tB = si.oJ().getApplicationContext();
        this.Pfn = Pfn();
    }

    public String oJ(List<com.bytedance.sdk.openadsdk.ex.oJ> list) {
        String str;
        if (list.size() > 0 && list.get(0) != null && list.get(0).tB() != null) {
            str = list.get(0).tB().optString("app_log_url");
        } else {
            str = "";
        }
        return HyG.Pfn(str);
    }

    private void oJ(com.bytedance.sdk.openadsdk.ex.oJ oJVar, boolean z10) {
        if (oJVar == null) {
            return;
        }
        try {
            String optString = z10 ? oJVar.tB().optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS).optString("log_extra", "") : oJVar.tB().optString("log_extra", "");
            long oJ2 = cY.oJ(optString);
            int ex = cY.ex(optString);
            if (oJ2 == 0) {
                oJ2 = this.oJ;
            }
            this.oJ = oJ2;
            if (ex == 0) {
                ex = this.ZYk;
            }
            this.ZYk = ex;
        } catch (Exception e10) {
            QSm.tB("AdLogParamsGenerate", "getInfoFromLogExtra exception", e10.getMessage());
        }
    }

    @SuppressLint({"HardwareIds"})
    public JSONObject ZYk() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ua", HyG.ex());
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("app_version", HyG.so());
            jSONObject.put("sim_op", oJ(this.tB));
            jSONObject.put("root", this.ex ? 1 : 0);
            jSONObject.put("timezone", ex());
            jSONObject.put("access", jr.oJ(this.tB));
            jSONObject.put("os", "Android");
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, this.Pfn);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put(MediaFormat.KEY_LANGUAGE, Locale.getDefault().getLanguage());
            jSONObject.put("resolution", cdg.Pfn(this.tB) + TextureRenderKeys.KEY_IS_X + cdg.tB(this.tB));
            jSONObject.put("display_density", oJ(cdg.kkU(this.tB)));
            jSONObject.put("density_dpi", cdg.kkU(this.tB));
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, "1371");
            jSONObject.put("device_id", com.bytedance.sdk.openadsdk.core.BTZ.oJ(this.tB));
            jSONObject.put("rom", ba());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("ut", this.ZYk);
            jSONObject.put(CommonConstant.KEY_UID, this.oJ);
            jSONObject.put("google_aid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            jSONObject.put("locale_language", DeviceUtils.ex());
            jSONObject.put("screen_bright", Math.ceil(DeviceUtils.Pfn() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", !DeviceUtils.ZYk() ? 1 : 0);
            com.bytedance.sdk.openadsdk.core.settings.ba ex = si.ex();
            jSONObject.put("force_language", com.bytedance.sdk.component.utils.cY.oJ(this.tB, "tt_choose_language"));
            if (ex.tb("mnc")) {
                jSONObject.put("mnc", LpP.tB());
            }
            if (ex.tb("mcc")) {
                jSONObject.put("mcc", LpP.ZYk());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public JSONObject oJ(List<com.bytedance.sdk.openadsdk.ex.oJ> list, long j10, JSONObject jSONObject, boolean z10) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            oJ(list.get(0), z10);
            jSONObject2.put("header", jSONObject);
            JSONArray jSONArray = new JSONArray();
            for (com.bytedance.sdk.openadsdk.ex.oJ oJVar : list) {
                jSONArray.put(oJVar.oJ(z10));
            }
            if (z10) {
                jSONObject2.put("event_v3", jSONArray);
                jSONObject2.put("magic_tag", "ss_app_log");
            } else {
                jSONObject2.put(NotificationCompat.CATEGORY_EVENT, jSONArray);
            }
            jSONObject2.put("_gen_time", j10);
            jSONObject2.put("local_time", j10 / 1000);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public List<com.bytedance.sdk.openadsdk.ex.oJ> oJ(List<com.bytedance.sdk.openadsdk.ex.oJ> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.ex.oJ oJVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject tB = oJVar.tB();
                jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, tB.optString("label"));
                long optLong = tB.optLong("event_ts", System.currentTimeMillis());
                jSONObject.putOpt("local_time_ms", Long.valueOf(optLong));
                jSONObject.putOpt("datetime", com.bytedance.sdk.openadsdk.ex.ba.tB.format(new Date(optLong)));
                JSONObject jSONObject2 = new JSONObject();
                Iterator<String> keys = tB.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.equals(next, "label")) {
                        jSONObject2.putOpt(next, tB.opt(next));
                    }
                }
                if (z10) {
                    jSONObject2.putOpt("_ad_staging_flag", 3);
                }
                jSONObject.putOpt(MetricsSQLiteCacheKt.METRICS_PARAMS, jSONObject2);
                arrayList.add(new com.bytedance.sdk.openadsdk.ex.ba(oJVar.oJ, jSONObject));
            } catch (Exception e10) {
                QSm.tB("AdLogParamsGenerate", e10.getMessage());
            }
        }
        return arrayList;
    }

    private String oJ(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            if (telephonyManager == null) {
                return "";
            }
            return telephonyManager.getSimOperator();
        } catch (Throwable unused) {
            return "";
        }
    }

    private String oJ(int i10) {
        if (i10 != 120) {
            if (i10 != 160) {
                if (i10 != 240) {
                    if (i10 != 320) {
                        if (i10 != 480) {
                            if (i10 != 640) {
                                return "mdpi";
                            }
                            return "xxxhdpi";
                        }
                        return "xxhdpi";
                    }
                    return "xhdpi";
                }
                return "hdpi";
            }
            return "mdpi";
        }
        return "ldpi";
    }
}
