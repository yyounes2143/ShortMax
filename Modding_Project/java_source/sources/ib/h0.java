package ib;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.hwid.StartAssistLoginResult;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import org.json.JSONException;
/* compiled from: AccountStartAssistLoginTaskApiCall.java */
/* loaded from: classes5.dex */
public class h0 extends TaskApiCall<v, Void> {
    public h0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: b */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        t.b("AccountStartAssistLoginTaskApiCall", "AccountStartAssistLoginTaskApiCall doExecute", true);
        if (responseErrorCode == null) {
            t.b("AccountStartAssistLoginTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        int errorCode = responseErrorCode.getErrorCode();
        if (errorCode != 0 && CommonCode.Resolution.HAS_RESOLUTION.equals(responseErrorCode.getResolution())) {
            t.b("AccountStartAssistLoginTaskApiCall", "apk version is low or is not exist.", true);
            Status status = new Status(errorCode, responseErrorCode.getErrorReason());
            p.c(responseErrorCode, status);
            gVar.b(new ResolvableApiException(status));
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            if (JsonUtils.EMPTY_JSON.equals(str)) {
                t.b("AccountStartAssistLoginTaskApiCall", "signIn complete, body is null", true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
                return;
            }
            try {
                StartAssistLoginResult fromJson = new StartAssistLoginResult().fromJson(str);
                if (fromJson.isSuccess()) {
                    gVar.c(null);
                } else {
                    gVar.b(new ApiException(fromJson.getStatus()));
                }
            } catch (JSONException unused) {
                t.c("AccountStartAssistLoginTaskApiCall", "tartAssistLogin complete, but parser json exception", true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
            }
        } else {
            gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
        }
        if (vVar != null) {
            HiAnalyticsClient.reportExit(vVar.getContext(), getUri(), getTransactionId(), s.a(errorCode), errorCode);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 14;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 60000000;
    }
}
