package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.awB;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.IUZ;
import com.bytedance.sdk.openadsdk.core.model.PiB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Id;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.ss.ttvideoengine.model.VideoThumbInfo;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn implements ba {
    public static Boolean oJ;
    protected String ZYk;
    private final WeakReference<Context> ex;
    protected int tB;

    public Pfn(Context context, String str) {
        this.ex = new WeakReference<>(context);
        this.ZYk = str;
        "====tag===".concat(String.valueOf(str));
        if (si.oJ() == null) {
            si.ZYk(context);
        }
    }

    private static boolean ZYk() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public boolean ex(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.ba Wd;
        if (cYVar == null || (Wd = cYVar.Wd()) == null) {
            return false;
        }
        return oJ(oJ(), cYVar, Wd.oJ(), Wd.tB());
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void oJ(boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void tB(cY cYVar) {
        if (oJ() != null && cYVar != null) {
            if (ZYk(cYVar)) {
                cYVar.Pfn(true);
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            } else if (oJ(cYVar)) {
                cYVar.Pfn(true);
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            } else if (oJ(cYVar, false)) {
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            } else if (ex(cYVar)) {
                cYVar.Pfn(true);
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            } else if (cYVar.Wd() == null && cYVar.Oof() != null) {
                XAo.oJ(oJ(), cYVar.Oof(), cYVar, HyG.oJ(this.ZYk), this.ZYk, true);
                cYVar.Pfn(true);
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            }
        }
    }

    public static boolean oJ(Context context, String str, String str2, String str3, cY cYVar) {
        if (!TextUtils.isEmpty(str3) && str3.contains("_landingpage")) {
            str3 = str3.replace("_landingpage", "");
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
                intent.setFlags(268435456);
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str3, "store_open", (JSONObject) null);
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                return true;
            } catch (Throwable unused) {
            }
        }
        if (context != null && str2 != null && !TextUtils.isEmpty(str2)) {
            try {
                Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                Uri parse = Uri.parse("market://details?id=".concat(str2));
                intent2.setData(parse);
                for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent2, 65536)) {
                    if (resolveInfo.activityInfo.packageName.equals("com.android.vending") && context.getPackageManager().getLaunchIntentForPackage("com.android.vending") != null) {
                        Intent intent3 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                        intent3.setData(parse);
                        intent3.setPackage("com.android.vending");
                        if (!(context instanceof Activity)) {
                            intent3.setFlags(268435456);
                        }
                        context.startActivity(intent3);
                        com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str3, "store_open", (JSONObject) null);
                        com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("gotoGooglePlayByPackageNameAndUrl error", "gotoGooglePlay", th2);
            }
        }
        return false;
    }

    public boolean ZYk(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.ZYk, 1, null);
        PiB TNk = cYVar.TNk();
        if (TNk == null) {
            com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.ZYk, -1, null);
            return false;
        }
        HashMap hashMap = new HashMap();
        oJ(cYVar, hashMap);
        if (tB.oJ(oJ(), TNk.oJ(), cYVar, HyG.ZYk(cYVar), hashMap, true)) {
            return true;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.ZYk, "open_fallback_url", hashMap);
        return false;
    }

    public static boolean ZYk(cY cYVar, Context context, boolean z10) {
        String tB;
        IPMiBroadcastReceiver oJ2;
        if (cYVar != null && context != null) {
            try {
                IUZ hZN = cYVar.hZN();
                if (hZN != null && !TextUtils.isEmpty(hZN.jFA())) {
                    if (hZN.so() && oJ(cYVar, context, z10)) {
                        return true;
                    }
                    if (hZN.cFZ()) {
                        if (cYVar.PiB() == 1) {
                            tB = hZN.oJ();
                        } else {
                            tB = (cYVar.Wd() == null || TextUtils.isEmpty(cYVar.Wd().tB())) ? null : cYVar.Wd().tB();
                        }
                        if (!TextUtils.isEmpty(tB) && (oJ2 = IPMiBroadcastReceiver.oJ(context)) != null) {
                            oJ2.oJ(tB, cYVar);
                        }
                    }
                    final boolean oJ3 = tB.oJ(context, hZN.jFA(), cYVar, HyG.ZYk(cYVar), oJ(cYVar, z10, hZN), true);
                    ofl.ZYk(new so("task_oem_store") { // from class: com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (oJ3) {
                                jFA.oJ("oem_store", "1");
                            } else {
                                jFA.oJ("oem_store", "-2");
                            }
                        }
                    });
                    return oJ3;
                }
            } catch (Throwable th2) {
                QSm.tB("GPDownLoader", th2.getMessage());
            }
        }
        return false;
    }

    public static boolean oJ(cY cYVar, String str, Context context, String str2, Map<String, Object> map) {
        Intent oJ2;
        if (cYVar != null && cYVar.Tvw() == 0) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(str) || (oJ2 = HyG.oJ(context, str)) == null) {
                return false;
            }
            oJ2.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(context instanceof Activity)) {
                oJ2.addFlags(268435456);
            }
            context.startActivity(oJ2);
            if (map == null) {
                map = new HashMap<>();
            }
            if (cYVar != null && cYVar.GSK() == 0) {
                map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
            }
            map.put("can_query_install", Integer.valueOf(ZYk() ? 1 : 0));
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str2, "click_open", map);
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void oJ(int i10) {
        this.tB = i10;
    }

    public boolean oJ(Context context, cY cYVar, String str, String str2) {
        return oJ(context, str, str2, this.ZYk, cYVar);
    }

    protected Context oJ() {
        WeakReference<Context> weakReference = this.ex;
        return (weakReference == null || weakReference.get() == null) ? si.oJ() : this.ex.get();
    }

    private void oJ(cY cYVar, Map<String, Object> map) {
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
        }
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(this.tB >= 11));
        }
        map.put("can_query_install", Integer.valueOf(ZYk() ? 1 : 0));
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public boolean oJ(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.ba Wd;
        if (cYVar == null || (Wd = cYVar.Wd()) == null || cYVar.Tvw() == 0) {
            return false;
        }
        String tB = Wd.tB();
        if (TextUtils.isEmpty(tB)) {
            return false;
        }
        return oJ(cYVar, tB, oJ(), this.ZYk, new HashMap());
    }

    public boolean oJ(cY cYVar, boolean z10) {
        return ZYk(cYVar, oJ(), z10);
    }

    private static void oJ(JSONObject jSONObject, JSONObject jSONObject2, cY cYVar, String str, int i10) {
        try {
            jSONObject.put("status", i10);
            jSONObject2.put("pag_json_data", jSONObject.toString());
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, "gp_mini_card_status", jSONObject2);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public static boolean oJ(cY cYVar, Context context, boolean z10) {
        if (cYVar != null && cYVar.hZN() != null && cYVar.hZN().so() && !TextUtils.isEmpty(cYVar.hZN().jFA()) && context != null) {
            try {
                IUZ hZN = cYVar.hZN();
                String oJ2 = HyG.oJ(cYVar);
                JSONObject jSONObject = new JSONObject();
                JSONObject kkU = hZN.kkU();
                kkU.put("from_web", z10 ? 1 : 0);
                kkU.put("is_w2a", cYVar.PiB());
                kkU.put("status", 0);
                jSONObject.put("pag_json_data", kkU.toString());
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, oJ2, "gp_mini_card_status", jSONObject);
                Intent oJ3 = oJ(context, hZN);
                if (oJ3 == null) {
                    oJ(kkU, jSONObject, cYVar, oJ2, -2);
                    return false;
                }
                if (context instanceof Activity) {
                    if (!Id.oJ((Activity) context)) {
                        context = null;
                    }
                } else {
                    Activity ZYk = awB.oJ().Pfn().ZYk();
                    if (ZYk != null && Id.oJ(ZYk)) {
                        context = ZYk;
                    }
                }
                if (!(context instanceof Activity)) {
                    oJ(kkU, jSONObject, cYVar, oJ2, -5);
                    return false;
                }
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && oJ3.resolveActivity(packageManager) != null) {
                    ((Activity) context).startActivityForResult(oJ3, 0);
                    oJ(kkU, jSONObject, cYVar, oJ2, 1);
                    return true;
                }
                oJ(kkU, jSONObject, cYVar, oJ2, -4);
                return false;
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return false;
    }

    private static Intent oJ(Context context, IUZ iuz) {
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            String ex = iuz.ex();
            if (!TextUtils.isEmpty(ex)) {
                intent.setPackage(ex);
            } else {
                intent.setPackage("com.android.vending");
            }
            intent.setData(Uri.parse(iuz.jFA()));
            boolean z10 = true;
            if (iuz.ZYk() != 1) {
                z10 = false;
            }
            intent.putExtra("overlay", z10);
            if (TextUtils.isEmpty(iuz.tB())) {
                intent.putExtra("callerId", context.getPackageName());
            } else {
                intent.putExtra("callerId", iuz.tB());
            }
            iuz.oJ(intent);
            return intent;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    @NonNull
    private static Map<String, Object> oJ(cY cYVar, boolean z10, IUZ iuz) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("oem_vendor_type", iuz.ba());
            jSONObject.put("from_web", z10 ? 1 : 0);
            jSONObject.put("is_w2a", cYVar.PiB());
            hashMap.put("pag_json_data", jSONObject.toString());
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    public static boolean oJ(String str, cY cYVar) {
        String queryParameter;
        if (str != null && !str.isEmpty()) {
            try {
                Uri parse = Uri.parse(str);
                String scheme = parse.getScheme();
                String host = parse.getHost();
                if ("market".equals(scheme) && "details".equals(host)) {
                    return true;
                }
                if ((!ProxyConfig.MATCH_HTTP.equals(scheme) && !"https".equals(scheme)) || (!"play.google.com".equals(host) && !"market.android.com".equals(host))) {
                    if ("market".equals(scheme) && "webstoreredirect".equals(host) && (queryParameter = parse.getQueryParameter(VideoThumbInfo.KEY_URI)) != null) {
                        return oJ(queryParameter, cYVar);
                    }
                }
                return true;
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return false;
    }

    public static boolean oJ(cY cYVar, String str) {
        if (cYVar == null || cYVar.hZN() == null) {
            return false;
        }
        String Pfn = cYVar.hZN().Pfn();
        if (TextUtils.isEmpty(Pfn)) {
            return false;
        }
        return Pattern.compile(Pfn).matcher(str).matches();
    }
}
