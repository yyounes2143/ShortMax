package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.PiB;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex implements ba {
    private final WeakReference<Context> Pfn;
    protected int ex;
    protected String oJ;
    protected boolean ZYk = false;
    protected final AtomicBoolean tB = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12854ba = false;

    public ex(Context context, String str) {
        this.Pfn = new WeakReference<>(context);
        this.oJ = str;
        "====tag===".concat(String.valueOf(str));
        if (si.oJ() == null) {
            si.ZYk(context);
        }
    }

    public boolean ZYk(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, 1, null);
        if (cYVar.TNk() != null) {
            String oJ = cYVar.TNk().oJ();
            if (!TextUtils.isEmpty(oJ)) {
                Uri parse = Uri.parse(oJ);
                Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                intent.setData(parse);
                HyG.ZYk oJ2 = HyG.oJ(oJ(), intent);
                if (oJ2.ZYk > 0) {
                    if (!(oJ() instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    try {
                        HashMap hashMap = new HashMap();
                        oJ(cYVar, hashMap);
                        hashMap.put("matched_count", Integer.valueOf(oJ2.ZYk));
                        hashMap.put("url", oJ);
                        ComponentName componentName = oJ2.oJ;
                        if (componentName != null) {
                            intent.setComponent(componentName);
                        }
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.oJ, "open_url_app", hashMap);
                        oJ().startActivity(intent);
                        PiB.oJ().oJ(hashMap).oJ(cYVar, this.oJ);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ("dp_start_act_success", cYVar, this.oJ, hashMap);
                        return true;
                    } catch (Throwable th2) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("exception", th2.getMessage());
                            jSONObject.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.toString());
                            jSONObject.put("can_query_install", 1);
                        } catch (Exception unused) {
                        }
                        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, -4, jSONObject);
                    }
                } else {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.toString());
                        jSONObject2.put("can_query_install", 1);
                    } catch (Exception unused2) {
                    }
                    com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, -3, jSONObject2);
                }
            } else {
                com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, -2, cYVar.TNk().ex());
            }
            if (!this.ZYk || this.tB.get()) {
                this.ZYk = true;
                HashMap hashMap2 = new HashMap();
                oJ(cYVar, hashMap2);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.oJ, "open_fallback_url", hashMap2);
                return false;
            }
            return false;
        }
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, -1, null);
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public boolean ex(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.model.ba Wd = cYVar.Wd();
        this.tB.set(true);
        if (Wd == null || !oJ(oJ(), cYVar, Wd.oJ(), Wd.tB())) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public boolean oJ(cY cYVar) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void tB(cY cYVar) {
        if (oJ() == null) {
            return;
        }
        if (ZYk(cYVar)) {
            this.tB.set(true);
            cYVar.Pfn(true);
        } else if (oJ(cYVar)) {
            cYVar.Pfn(true);
        } else if (oJ(cYVar, false)) {
        } else {
            if (ex(cYVar)) {
                cYVar.Pfn(true);
            } else if (cYVar.Wd() == null && cYVar.Oof() != null) {
                XAo.oJ(oJ(), cYVar.Oof(), cYVar, HyG.oJ(this.oJ), this.oJ, true);
                cYVar.Pfn(true);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void oJ(boolean z10) {
        this.f12854ba = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public void oJ(int i10) {
        this.ex = i10;
    }

    public boolean oJ(Context context, cY cYVar, String str, String str2) {
        return oJ(context, str, str2, this.oJ, cYVar);
    }

    public static boolean oJ(Context context, String str, String str2, String str3, cY cYVar) {
        if (tB.oJ()) {
            return Pfn.oJ(context, str, str2, str3, cYVar);
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    public Context oJ() {
        WeakReference<Context> weakReference = this.Pfn;
        return (weakReference == null || weakReference.get() == null) ? si.oJ() : this.Pfn.get();
    }

    private void oJ(cY cYVar, Map<String, Object> map) {
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
        }
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(this.ex >= 11));
        }
        map.put("can_query_install", 1);
    }

    public boolean oJ(cY cYVar, boolean z10) {
        IPMiBroadcastReceiver oJ;
        if (cYVar != null) {
            try {
                IUZ hZN = cYVar.hZN();
                if (hZN != null && !TextUtils.isEmpty(hZN.jFA())) {
                    if (hZN.cFZ() && cYVar.Wd() != null && !TextUtils.isEmpty(cYVar.Wd().tB()) && (oJ = IPMiBroadcastReceiver.oJ(oJ())) != null) {
                        oJ.oJ(cYVar.Wd().tB(), cYVar);
                    }
                    final boolean oJ2 = ZYk.oJ(oJ(), hZN.jFA(), cYVar);
                    ofl.ZYk(new so("task_oem_store") { // from class: com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (oJ2) {
                                jFA.oJ("oem_store", "1");
                            } else {
                                jFA.oJ("oem_store", "-2");
                            }
                        }
                    });
                    return oJ2;
                }
            } catch (Throwable th2) {
                QSm.tB("GPDownLoader", th2.getMessage());
            }
        }
        return false;
    }
}
