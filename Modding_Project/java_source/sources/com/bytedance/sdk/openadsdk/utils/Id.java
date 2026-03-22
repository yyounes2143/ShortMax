package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import com.bytedance.sdk.openadsdk.activity.TTBaseActivity;
import com.bytedance.sdk.openadsdk.core.act.AdActAction;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class Id {
    /* JADX INFO: Access modifiers changed from: private */
    public static com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk(String str, int i10, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk = new com.bytedance.sdk.openadsdk.awB.oJ.ZYk();
        zYk.oJ(str);
        zYk.oJ(cYVar);
        zYk.ZYk(HyG.oJ(cYVar));
        zYk.oJ(i10);
        zYk.oJ(false);
        zYk.ZYk(cYVar.sQ());
        return zYk;
    }

    public static boolean oJ(Context context, final String str, final com.bytedance.sdk.openadsdk.core.model.cY cYVar, final String str2) {
        if (context instanceof Activity) {
            if (!oJ((Activity) context)) {
                context = null;
            }
        } else {
            Activity ZYk = com.bytedance.sdk.openadsdk.core.awB.oJ().Pfn().ZYk();
            if (ZYk != null && oJ(ZYk)) {
                context = ZYk;
            }
        }
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.si.oJ();
        }
        if (context == null) {
            return false;
        }
        final String oJ = HyG.oJ(cYVar);
        if (!com.bytedance.sdk.component.utils.Ry.oJ(str)) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk(str2, 5, cYVar));
            return false;
        }
        final String ZYk2 = com.bytedance.sdk.openadsdk.core.model.cY.ZYk(context, cYVar);
        if (!TextUtils.isEmpty(ZYk2)) {
            try {
                final CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
                builder.setUrlBarHidingEnabled(false);
                builder.setShareState(2);
                final Context context2 = context;
                new AdActAction(context, cYVar, str2, str).oJ(new AdActAction.BindCustomTabsServiceCallback() { // from class: com.bytedance.sdk.openadsdk.utils.Id.1
                    @Override // com.bytedance.sdk.openadsdk.core.act.AdActAction.BindCustomTabsServiceCallback
                    public void onBindFail(int i10, String str3) {
                        com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk3 = Id.ZYk(str2, i10, cYVar);
                        ZYk3.tB(str3);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk3);
                        Id.ZYk(context2, str, cYVar, str2, oJ);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.act.AdActAction.BindCustomTabsServiceCallback
                    public void onBindSuccess(CustomTabsSession customTabsSession) {
                        if (customTabsSession != null) {
                            try {
                                CustomTabsIntent.Builder.this.setSession(customTabsSession);
                            } catch (Throwable th2) {
                                String message = th2.getMessage();
                                com.bytedance.sdk.component.utils.QSm.tB("OpenUtils", message);
                                com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk3 = Id.ZYk(str2, 13, cYVar);
                                ZYk3.tB(message);
                                com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk3);
                                Id.ZYk(context2, str, cYVar, str2, oJ);
                                return;
                            }
                        }
                        CustomTabsIntent build = CustomTabsIntent.Builder.this.build();
                        if (!(context2 instanceof Activity)) {
                            build.intent.addFlags(268435456);
                        }
                        com.bytedance.sdk.openadsdk.core.act.tB.oJ(context2, ZYk2, build, Uri.parse(str));
                        Context context3 = context2;
                        if (context3 instanceof TTBaseActivity) {
                            ((TTBaseActivity) context3).tB(true);
                        }
                        com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk4 = Id.ZYk(str2, 100, cYVar);
                        ZYk4.oJ(true);
                        ZYk4.ZYk(8);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk4);
                    }
                });
                return true;
            } catch (Throwable th2) {
                String message = th2.getMessage();
                com.bytedance.sdk.component.utils.QSm.tB("OpenUtils", message);
                com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk3 = ZYk(str2, 12, cYVar);
                ZYk3.tB(message);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk3);
                return ZYk(context, str, cYVar, str2, oJ);
            }
        }
        return ZYk(context, str, cYVar, str2, oJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ZYk(Context context, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str2, String str3) {
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
        try {
            intent.setData(Uri.parse(str));
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            try {
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk = ZYk(str2, 100, cYVar);
                ZYk.oJ(true);
                ZYk.ZYk(2);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk);
                return true;
            } catch (Throwable th2) {
                String message = th2.getMessage();
                com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk2 = ZYk(str2, 7, cYVar);
                ZYk2.tB(message);
                ZYk2.ZYk(2);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk2);
                return false;
            }
        } catch (Throwable th3) {
            String message2 = th3.getMessage();
            com.bytedance.sdk.openadsdk.awB.oJ.ZYk ZYk3 = ZYk(str2, 6, cYVar);
            ZYk3.tB(message2);
            ZYk3.ZYk(2);
            com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk3);
            return false;
        }
    }

    public static boolean oJ(String str) {
        return !TextUtils.isEmpty(str);
    }

    public static boolean oJ(Activity activity) {
        return (activity == null || activity.isDestroyed() || activity.isFinishing()) ? false : true;
    }

    public static boolean ZYk(Context context, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str2) {
        if (context instanceof Activity) {
            if (!oJ((Activity) context)) {
                context = null;
            }
        } else {
            Activity ZYk = com.bytedance.sdk.openadsdk.core.awB.oJ().Pfn().ZYk();
            if (ZYk != null && oJ(ZYk)) {
                context = ZYk;
            }
        }
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.si.oJ();
        }
        Context context2 = context;
        if (context2 != null && oJ(str)) {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.setData(parse);
            HashMap hashMap = new HashMap();
            hashMap.put("deeplink_url", str);
            hashMap.put("jsb_deeplink", 1);
            if (com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ()) {
                return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ(context2, str, cYVar, HyG.ZYk(cYVar), hashMap, true);
            }
            try {
                if (!(context2 instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str2, "open_url_app", hashMap);
                context2.startActivity(intent);
                com.bytedance.sdk.openadsdk.ex.PiB.oJ().oJ(hashMap).oJ(cYVar, str2);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }
}
