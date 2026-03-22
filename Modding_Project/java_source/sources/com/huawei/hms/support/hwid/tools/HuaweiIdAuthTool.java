package com.huawei.hms.support.hwid.tools;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.support.hwid.common.HuaweiIdAuthException;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParamsHelper;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthService;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthServiceImpl;
import com.huawei.hms.utils.HMSPackageManager;
import ib.b;
import ib.k0;
import ib.m0;
import ib.q0;
import ib.t;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import ua.d;
import ua.e;
import ua.f;
/* loaded from: classes5.dex */
public class HuaweiIdAuthTool {
    protected static final String TAG = "[HUAWEIIDSDK]HuaweiIdAuthTool";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f22315a;

        private a() {
        }

        void a(int i10) {
            this.f22315a = i10;
        }

        int a() {
            return this.f22315a;
        }
    }

    private HuaweiIdAuthTool() {
    }

    private static void a(final f<Void> fVar) throws HuaweiIdAuthException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final a aVar = new a();
        fVar.c(new e<Void>() { // from class: com.huawei.hms.support.hwid.tools.HuaweiIdAuthTool.2
            @Override // ua.e
            /* renamed from: a */
            public void onSuccess(Void r32) {
                t.b(HuaweiIdAuthTool.TAG, "deleteAuthInfo Success.", true);
                countDownLatch.countDown();
                aVar.a(0);
            }
        }).b(new d() { // from class: com.huawei.hms.support.hwid.tools.HuaweiIdAuthTool.1
            @Override // ua.d
            public void onFailure(Exception exc) {
                int statusCode = ((ApiException) f.this.d()).getStatusCode();
                t.b(HuaweiIdAuthTool.TAG, "deleteAuthInfo fail: " + statusCode, true);
                countDownLatch.countDown();
                aVar.a(statusCode);
            }
        });
        try {
        } catch (InterruptedException unused) {
            aVar.a(8);
        }
        if (!countDownLatch.await(10L, TimeUnit.SECONDS)) {
            throw new HuaweiIdAuthException("connection timeout[907135004 ].");
        }
        if (aVar.a() != 0) {
            if (aVar.a() != 8) {
                if (aVar.a() == 2010) {
                    t.c(TAG, "invalid arguments[907135000].", true);
                }
            } else {
                throw new HuaweiIdAuthException("unknown interruption[8].");
            }
        }
        t.b(TAG, "deleteAuthInfo return[success]", true);
    }

    private static Account b(Context context, String str) throws HuaweiIdAuthException {
        if (context != null) {
            String hMSPackageName = HMSPackageManager.getInstance(context).getHMSPackageName();
            t.b(TAG, "get package name of hms is " + hMSPackageName, true);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(hMSPackageName)) {
                return new Account(str, hMSPackageName);
            }
            return null;
        }
        t.b(TAG, "context is null", true);
        throw new HuaweiIdAuthException("context is null");
    }

    public static void deleteAuthInfo(Context context, String str) throws HuaweiIdAuthException {
        a(context, str);
    }

    @Deprecated
    public static String requestAccessToken(Context context, String str, List<Scope> list, Bundle bundle) throws HuaweiIdAuthException {
        return requestAccessToken(context, b(context, str), list, bundle);
    }

    public static String requestUnionId(Context context, String str) throws HuaweiIdAuthException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Scope("openid"));
        return a(context, b(context, str), arrayList, new Bundle(), "requestUnionId").f();
    }

    public static void deleteAuthInfo(Activity activity, String str) throws HuaweiIdAuthException {
        a(activity, str);
    }

    @Deprecated
    public static String requestAccessToken(Activity activity, String str, List<Scope> list, Bundle bundle) throws HuaweiIdAuthException {
        return requestAccessToken(activity, b(activity, str), list, bundle);
    }

    @Deprecated
    public static String requestAccessToken(Context context, String str, List<Scope> list) throws HuaweiIdAuthException {
        return requestAccessToken(context, b(context, str), list, new Bundle());
    }

    @Deprecated
    public static String requestAccessToken(Activity activity, String str, List<Scope> list) throws HuaweiIdAuthException {
        return requestAccessToken(activity, b(activity, str), list, new Bundle());
    }

    public static String requestAccessToken(Context context, Account account, List<Scope> list) throws HuaweiIdAuthException {
        return requestAccessToken(context, account, list, new Bundle());
    }

    public static String requestUnionId(Activity activity, String str) throws HuaweiIdAuthException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Scope("openid"));
        return a(activity, b(activity, str), arrayList, new Bundle(), "requestUnionId").f();
    }

    public static String requestAccessToken(Activity activity, Account account, List<Scope> list) throws HuaweiIdAuthException {
        return requestAccessToken(activity, account, list, new Bundle());
    }

    public static String requestAccessToken(Context context, Account account, List<Scope> list, Bundle bundle) throws HuaweiIdAuthException {
        return a(context, account, list, bundle, "requestAccessToken").d();
    }

    public static String requestAccessToken(Activity activity, Account account, List<Scope> list, Bundle bundle) throws HuaweiIdAuthException {
        return a(activity, account, list, bundle, "requestAccessToken").d();
    }

    private static void a(Context context, String str) throws HuaweiIdAuthException {
        boolean z10;
        k0.a();
        q0.d();
        if (context != null) {
            if (context instanceof Activity) {
                z10 = true;
            } else {
                a(context);
                z10 = false;
            }
            if (TextUtils.isEmpty(str)) {
                t.b(TAG, "accessToken is null or empty.", true);
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(CommonConstant.KEY_ACCESS_TOKEN, str);
                HuaweiIdAuthServiceImpl huaweiIdAuthServiceImpl = new HuaweiIdAuthServiceImpl(context, (HuaweiIdAuthParams) null, 60900100);
                if (z10) {
                    huaweiIdAuthServiceImpl = new HuaweiIdAuthServiceImpl((Activity) context, (HuaweiIdAuthParams) null, 60900100);
                }
                a((f<Void>) huaweiIdAuthServiceImpl.doWrite(new b(CommonNaming.signout, jSONObject.toString(), HiAnalyticsClient.reportEntry(context, CommonNaming.signout, 60900100))));
                return;
            } catch (JSONException unused) {
                throw new HuaweiIdAuthException("json error.");
            }
        }
        throw new HuaweiIdAuthException("Context or Activity is null.");
    }

    private static m0 a(Context context, Account account, List<Scope> list, Bundle bundle, String str) throws HuaweiIdAuthException {
        boolean z10;
        HuaweiIdAuthServiceImpl huaweiIdAuthServiceImpl;
        k0.a();
        if (context != null) {
            if (context instanceof Activity) {
                z10 = true;
            } else {
                a(context);
                z10 = false;
            }
            a(context, account, list, bundle);
            HuaweiIdAuthParams createParams = new HuaweiIdAuthParamsHelper().setAccessToken().setScopeList(list).createParams();
            String str2 = account == null ? "" : account.name;
            if (z10) {
                huaweiIdAuthServiceImpl = new HuaweiIdAuthServiceImpl((Activity) context, createParams, str2, 60900100);
            } else {
                huaweiIdAuthServiceImpl = new HuaweiIdAuthServiceImpl(context, createParams, str2, 60900100);
            }
            return a(huaweiIdAuthServiceImpl, str);
        }
        throw new HuaweiIdAuthException("Context or Activity is null.");
    }

    private static void a(Context context) throws HuaweiIdAuthException {
        int isHuaweiMobileServicesAvailable = new AvailableAdapter(40000300).isHuaweiMobileServicesAvailable(context);
        t.b(TAG, "checkDependentHMSVersion result is: " + isHuaweiMobileServicesAvailable, true);
        if (1 == isHuaweiMobileServicesAvailable) {
            throw new HuaweiIdAuthException("hms apk is not exist[2013]");
        }
        if (2 == isHuaweiMobileServicesAvailable) {
            throw new HuaweiIdAuthException("hms apk version is low[2013]");
        }
    }

    private static void a(Context context, Account account, List<Scope> list, Bundle bundle) throws HuaweiIdAuthException {
        String hMSPackageName = HMSPackageManager.getInstance(context).getHMSPackageName();
        t.b(TAG, "get package name of hms is " + hMSPackageName, true);
        String str = (account == null || hMSPackageName.equals(account.type)) ? null : "Account type is not supported.";
        if (!TextUtils.isEmpty(str)) {
            throw new HuaweiIdAuthException(str);
        }
    }

    private static m0 a(HuaweiIdAuthService huaweiIdAuthService, String str) throws HuaweiIdAuthException {
        t.b(TAG, "start countDownLatch innerSignIn:" + str, true);
        final m0 m0Var = new m0();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        f<AuthHuaweiId> silentSignIn = huaweiIdAuthService.silentSignIn();
        silentSignIn.c(new e<AuthHuaweiId>() { // from class: com.huawei.hms.support.hwid.tools.HuaweiIdAuthTool.3
            @Override // ua.e
            /* renamed from: a */
            public void onSuccess(AuthHuaweiId authHuaweiId) {
                t.b(HuaweiIdAuthTool.TAG, "silentSignIn success", true);
                m0.this.b(0);
                m0.this.c(authHuaweiId.getAccessToken());
                m0.this.e(authHuaweiId.getUnionId());
                countDownLatch.countDown();
            }
        });
        silentSignIn.b(new d() { // from class: com.huawei.hms.support.hwid.tools.HuaweiIdAuthTool.4
            @Override // ua.d
            public void onFailure(Exception exc) {
                t.b(HuaweiIdAuthTool.TAG, "silentSignIn fail", true);
                if (exc instanceof ApiException) {
                    m0.this.b(((ApiException) exc).getStatusCode());
                }
                countDownLatch.countDown();
            }
        });
        boolean z10 = false;
        try {
            z10 = countDownLatch.await(10L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            t.d(TAG, "innerSignIn InterruptedException.", true);
            m0Var.b(8);
        }
        if (!z10) {
            throw new HuaweiIdAuthException("connection timeout[907135004 ].");
        }
        t.b(TAG, str + " end countDownLatch awaitValue:" + z10, true);
        int a10 = m0Var.a();
        if (a10 == 0) {
            return m0Var;
        }
        t.d(TAG, str + " fail, error code is:" + a10, true);
        throw new HuaweiIdAuthException(str + " error[" + a10 + "]");
    }
}
