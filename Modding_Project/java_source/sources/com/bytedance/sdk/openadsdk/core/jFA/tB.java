package com.bytedance.sdk.openadsdk.core.jFA;

import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.sdk.component.utils.Pfn;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.pgl.ssdk.ces.out.PglSSManager;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private static boolean oJ = false;

    public static int Pfn() {
        if (si.ex().Rl()) {
            return ZYk.ZYk().cFZ();
        }
        return 6;
    }

    public static void ZYk(String str) {
        if (TextUtils.isEmpty(str) || !si.ex().Rl()) {
            return;
        }
        ZYk.ZYk().ZYk(str);
    }

    public static String ba() {
        if (si.ex().Rl()) {
            return ZYk.ZYk().ex();
        }
        return null;
    }

    public static long ex() {
        if (si.ex().Rl()) {
            return ZYk.ZYk().ba();
        }
        return 0L;
    }

    public static void oJ() {
        if (!oJ && si.ex().Rl()) {
            ZYk.ZYk();
            oJ = ZYk.ZYk().tB();
        }
    }

    public static String tB() {
        if (si.ex().Rl()) {
            return ZYk.ZYk().Pfn();
        }
        return "";
    }

    public static void ZYk() {
        if (si.ex().Rl()) {
            ZYk.ZYk().oJ();
        }
    }

    public static void oJ(String str) {
        if (si.ex().Rl()) {
            ZYk.ZYk().oJ(str);
        }
    }

    public static void oJ(cY cYVar, String str) {
        long j10;
        long j11;
        long j12;
        Object obj;
        if (si.ex().Rl()) {
            HashMap hashMap = new HashMap();
            hashMap.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            hashMap.put("au_show", str);
            if (cYVar != null) {
                String iPr = cYVar.iPr();
                String str2 = "-1";
                if (!TextUtils.isEmpty(iPr)) {
                    hashMap.put("request_id", iPr);
                } else {
                    hashMap.put("request_id", "-1");
                }
                try {
                    long j13 = -1;
                    if (cYVar.DTf() != null) {
                        j10 = cYVar.DTf().optLong("ad_id", -1L);
                        j11 = cYVar.DTf().optLong("rit", -1L);
                        j12 = cYVar.DTf().optLong("ad_slot_type", -1L);
                        str2 = cYVar.DTf().optString("ad_type", "-1");
                    } else {
                        j10 = -1;
                        j11 = -1;
                        j12 = -1;
                    }
                    hashMap.put("ad_id", Long.valueOf(j10));
                    hashMap.put("rit", Long.valueOf(j11));
                    hashMap.put("ad_slot_type", Long.valueOf(j12));
                    hashMap.put("ad_type", str2);
                    Map<String, Object> Zwf = cYVar.Zwf();
                    if (Zwf != null && (obj = Zwf.get(TTAdConstant.SDK_BIDDING_TYPE)) != null) {
                        j13 = Long.parseLong(obj.toString());
                    }
                    hashMap.put(TTAdConstant.SDK_BIDDING_TYPE, Long.valueOf(j13));
                    ZYk.ZYk().oJ(PglSSManager.REPORT_SCENE_ADSHOW, hashMap);
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static Map<String, String> oJ(String str, String str2) {
        if (si.ex().Rl()) {
            return ZYk.ZYk().oJ(str, str2 != null ? str2.getBytes() : new byte[0]);
        }
        return new HashMap();
    }

    public static void oJ(MotionEvent motionEvent) {
        if (si.ex().Rl()) {
            ZYk.ZYk().oJ(motionEvent);
        }
    }

    public static void oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (si.ex().Rl()) {
                oJ();
                if (Pfn() == 0) {
                    jSONObject.put("sec_did", ZYk.ZYk().ex());
                    String oJ2 = Pfn.oJ(jSONObject.toString());
                    Map<String, String> oJ3 = ZYk.ZYk().oJ("https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250", oJ2 != null ? oJ2.getBytes() : new byte[0]);
                    if (oJ3 != null && oJ3.size() > 0) {
                        for (String str : oJ3.keySet()) {
                            jSONObject.put(str, oJ3.get(str));
                        }
                        jSONObject.put("url", "https://api16-access-sg.pangle.io/api/ad/union/sdk/get_ads/?aid=1371&device_platform=android&version_code=4250");
                        jSONObject.put("pangle_m", oJ2);
                    } else {
                        jSONObject.put("pglx", "8");
                    }
                    jSONObject.put("ec", ZYk.ZYk().ba());
                    return;
                }
                jSONObject.put("pglx", String.valueOf(Pfn()));
                return;
            }
            jSONObject.put("pglx", SubsSku.SCENE_AD_2_PAY);
        } catch (Throwable th2) {
            QSm.tB("SecSdkHelperUtil", th2.getMessage());
            try {
                jSONObject.put("pglx", "7");
            } catch (JSONException unused) {
            }
        }
    }
}
