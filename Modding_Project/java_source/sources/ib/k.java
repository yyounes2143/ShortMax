package ib;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ReadSmsService.java */
/* loaded from: classes5.dex */
public class k extends HuaweiApi<Api.ApiOptions.NoOptions> {
    public k(Activity activity, Api<Api.ApiOptions.NoOptions> api, Api.ApiOptions.NoOptions noOptions, AbstractClientBuilder abstractClientBuilder) {
        super(activity, api, noOptions, abstractClientBuilder);
    }

    private g f() {
        return new g(getContext().getPackageName());
    }

    public ua.f<Void> d() {
        String a10 = f().a();
        if (TextUtils.isEmpty(a10)) {
            ua.g gVar = new ua.g();
            gVar.b(new ApiException(new Status(2020, CommonConstant.RETCODE.SMS_PARAM_ERROR)));
            return gVar.a();
        }
        return doWrite(new l(CommonNaming.startSmsRetriever, a10, HiAnalyticsClient.reportEntry(getContext(), CommonNaming.startSmsRetriever, 60900100)));
    }

    public ua.f<Void> e(String str) {
        t.b("ReadSmsService", "startConsent enter", true);
        if (str != null && str.length() > 120) {
            ua.g gVar = new ua.g();
            gVar.b(new ApiException(new Status(2020, CommonConstant.RETCODE.SMS_PARAM_ERROR)));
            return gVar.a();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("packageName", getContext().getPackageName());
            jSONObject.put(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, str);
        } catch (JSONException unused) {
            t.d("ReadSmsService", "toJson failed", true);
        }
        if (TextUtils.isEmpty(jSONObject.toString())) {
            ua.g gVar2 = new ua.g();
            gVar2.b(new ApiException(new Status(2020, CommonConstant.RETCODE.SMS_PARAM_ERROR)));
            return gVar2.a();
        }
        return doWrite(new m(CommonNaming.startConsent, jSONObject.toString(), HiAnalyticsClient.reportEntry(getContext(), CommonNaming.startConsent, 60900100)));
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        return 1;
    }

    public k(Context context, Api<Api.ApiOptions.NoOptions> api, Api.ApiOptions.NoOptions noOptions, AbstractClientBuilder abstractClientBuilder) {
        super(context, api, noOptions, abstractClientBuilder);
    }
}
