package ib;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.huawei.hms.account.internal.ui.activity.AccountSignInHubActivity;
import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.request.AccountAuthParamsHelper;
import com.huawei.hms.support.account.result.AccountAuthResult;
import com.huawei.hms.support.account.result.AuthAccount;
import com.huawei.hms.support.api.entity.account.AccountSignInRequest;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthAPIService;
import com.huawei.hms.utils.Util;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AccountAuthUtil.java */
/* loaded from: classes5.dex */
public final class y {
    public static Intent a(Context context, AccountAuthParams accountAuthParams, String str) {
        t.b("[AccountSDK]AccountAuthUtil", "getSignInIntent", true);
        return b(context, accountAuthParams, str, 0, "");
    }

    private static Intent b(Context context, AccountAuthParams accountAuthParams, String str, int i10, String str2) {
        String str3;
        JSONObject jSONObject;
        if (i10 == 1) {
            str3 = "com.huawei.hms.account.picker.signIn";
        } else {
            str3 = "com.huawei.hms.account.signIn";
        }
        Intent intent = new Intent(str3);
        try {
            intent.setPackage(context.getPackageName());
            intent.setClass(context, AccountSignInHubActivity.class);
            if (i10 == 1) {
                intent.putExtra("ACCESS_TOKEN", str2);
                intent.putExtra("INDEPENDENT_SIGN_IN_FLAG", i10);
                try {
                    String signInParams = accountAuthParams.getSignInParams();
                    if (TextUtils.isEmpty(signInParams)) {
                        jSONObject = new JSONObject();
                    } else {
                        jSONObject = new JSONObject(signInParams);
                    }
                    jSONObject.put("ACCESS_TOKEN", str2);
                    jSONObject.put("INDEPENDENT_SIGN_IN_FLAG", i10);
                    accountAuthParams.setSignInParams(jSONObject.toString());
                } catch (JSONException e10) {
                    t.d("[AccountSDK]AccountAuthUtil", "JSONException:" + e10.getClass().getSimpleName(), true);
                }
            }
            String appId = Util.getAppId(context);
            String packageName = context.getPackageName();
            u uVar = new u();
            uVar.d(appId);
            uVar.f(packageName);
            uVar.b(61200300L);
            uVar.h(str);
            AccountSignInRequest accountSignInRequest = new AccountSignInRequest();
            accountSignInRequest.setAccountAuthParams(accountAuthParams);
            try {
                intent.putExtra("HUAWEIID_CP_CLIENTINFO", uVar.g());
                intent.putExtra("HUAWEIID_SIGNIN_REQUEST", accountSignInRequest.toJson());
            } catch (JSONException e11) {
                t.d("[AccountSDK]AccountAuthUtil", "JSONException:" + e11.getClass().getSimpleName(), true);
            }
        } catch (Exception e12) {
            t.d("[AccountSDK]AccountAuthUtil", "Exception:" + e12.getClass().getSimpleName(), true);
        }
        return intent;
    }

    public static Intent c(Context context, AccountAuthParams accountAuthParams, String str, String str2) {
        t.b("[AccountSDK]AccountAuthUtil", "getIndependentSignInIntent", true);
        return b(context, accountAuthParams, str, 1, str2);
    }

    public static AccountAuthParams d(List<Scope> list) {
        AccountAuthParamsHelper accountAuthParamsHelper = new AccountAuthParamsHelper();
        if (q.b(list).booleanValue()) {
            accountAuthParamsHelper.setScopeList(list);
        }
        return accountAuthParamsHelper.createParams();
    }

    public static AccountAuthResult e(Intent intent) {
        t.b("[AccountSDK]AccountAuthUtil", "getSignInResultFromIntent", true);
        if (intent != null && intent.hasExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID)) {
            try {
                return new AccountAuthResult().fromJson(intent.getStringExtra(HuaweiIdAuthAPIService.EXTRA_AUTH_HUAWEI_ID));
            } catch (JSONException unused) {
                t.d("[AccountSDK]AccountAuthUtil", "JSONException", true);
                return null;
            }
        }
        t.d("[AccountSDK]AccountAuthUtil", "data or signInResult is null", true);
        return null;
    }

    public static void f() {
        z.a().e();
    }

    public static void g(Activity activity) {
        try {
            int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
            activity.getWindow().addFlags(Integer.MIN_VALUE);
            activity.getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility | 1024);
            int i10 = Build.VERSION.SDK_INT;
            activity.getWindow().setStatusBarColor(0);
            activity.getWindow().setNavigationBarColor(0);
            if (i10 >= 29) {
                activity.getWindow().setNavigationBarContrastEnforced(false);
            }
        } catch (Exception e10) {
            t.d("[AccountSDK]AccountAuthUtil", "exception occured:" + e10.getClass().getSimpleName(), true);
        }
    }

    public static void h(Window window) {
        if (window == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            t.b("[AccountSDK]AccountAuthUtil", "android version is Higher than 9.0", true);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
            window.getDecorView().setSystemUiVisibility(5894);
            return;
        }
        t.b("[AccountSDK]AccountAuthUtil", "android version is Below 9.0", true);
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes2), 4096);
        } catch (RuntimeException e10) {
            t.d("[AccountSDK]AccountAuthUtil", "Adapt to the digging screen occur RuntimeException" + e10.getClass().getSimpleName(), true);
        } catch (Exception e11) {
            t.d("[AccountSDK]AccountAuthUtil", "Adapt to the digging screen occur exception" + e11.getClass().getSimpleName(), true);
        }
    }

    public static AuthAccount i() {
        return z.a().d();
    }
}
