package ib;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.huawei.hms.hwid.internal.ui.activity.HwIdSignInHubActivity;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.hwid.HuaweiIdSignInRequest;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParamsHelper;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import com.huawei.hms.support.hwid.result.HuaweiIdAuthResult;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService;
import com.huawei.hms.utils.Util;
import java.util.List;
import org.json.JSONException;
/* compiled from: HuaweiIdAuthUtil.java */
/* loaded from: classes5.dex */
public final class q0 {
    public static Intent a(Context context, HuaweiIdAuthParams huaweiIdAuthParams, String str) {
        t.b("[HUAWEIIDSDK]HuaweiIdAuthTool", "getSignInIntent enter", true);
        Intent intent = new Intent("com.huawei.hms.jos.signIn");
        try {
            intent.setPackage(context.getPackageName());
            intent.setClass(context, HwIdSignInHubActivity.class);
            String appId = Util.getAppId(context);
            String packageName = context.getPackageName();
            l0 l0Var = new l0();
            l0Var.d(appId);
            l0Var.f(packageName);
            l0Var.b(61200300L);
            l0Var.h(str);
            HuaweiIdSignInRequest huaweiIdSignInRequest = new HuaweiIdSignInRequest();
            huaweiIdSignInRequest.setHuaweiIdAuthParams(huaweiIdAuthParams);
            try {
                intent.putExtra("HUAWEIID_CP_CLIENTINFO", l0Var.g());
                intent.putExtra("HUAWEIID_SIGNIN_REQUEST", huaweiIdSignInRequest.toJson());
            } catch (JSONException e10) {
                t.d("[HUAWEIIDSDK]HuaweiIdAuthTool", "JSONException:" + e10.getClass().getSimpleName(), true);
            }
        } catch (Exception e11) {
            t.d("[HUAWEIIDSDK]HuaweiIdAuthTool", "Exception:" + e11.getClass().getSimpleName(), true);
        }
        return intent;
    }

    public static HuaweiIdAuthParams b(List<Scope> list) {
        HuaweiIdAuthParamsHelper huaweiIdAuthParamsHelper = new HuaweiIdAuthParamsHelper();
        if (q.b(list).booleanValue()) {
            huaweiIdAuthParamsHelper.setScopeList(list);
        }
        for (Scope scope : list) {
            if (e(scope, CommonConstant.SCOPE.SCOPE_ACCOUNT_SHIPPING_ADDRESS)) {
                huaweiIdAuthParamsHelper.setShippingAddress();
            }
        }
        return huaweiIdAuthParamsHelper.createParams();
    }

    public static HuaweiIdAuthResult c(Intent intent) {
        t.b("[HUAWEIIDSDK]HuaweiIdAuthTool", "getSignInResultFromIntent", true);
        if (intent != null && intent.hasExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID)) {
            try {
                return new HuaweiIdAuthResult().fromJson(intent.getStringExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID));
            } catch (JSONException unused) {
                t.d("[HUAWEIIDSDK]HuaweiIdAuthTool", "JSONException", true);
                return null;
            }
        }
        t.d("[HUAWEIIDSDK]HuaweiIdAuthTool", "data or signInResult is null", true);
        return null;
    }

    public static void d() {
        r0.a().e();
    }

    private static boolean e(Scope scope, String str) {
        if (scope != null) {
            return TextUtils.equals(scope.getScopeUri(), str);
        }
        return false;
    }

    public static AuthHuaweiId f() {
        return r0.a().d();
    }
}
