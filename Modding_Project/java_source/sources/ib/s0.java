package ib;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.hwid.RevokeAccessResult;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import org.json.JSONException;
/* compiled from: HuaweiIdCancelAuthorizationTaskApiCall.java */
/* loaded from: classes5.dex */
public class s0 extends TaskApiCall<n0, Void> {
    public s0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: b */
    public void a(n0 n0Var, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        t.b("HuaweiIdCancelAuthorizationTaskApiCall", "HuaweiIdCancelAuthorizationTaskApiCall doExecute", true);
        q0.d();
        if (responseErrorCode == null) {
            t.b("HuaweiIdCancelAuthorizationTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        int errorCode = responseErrorCode.getErrorCode();
        if (errorCode != 0 && CommonCode.Resolution.HAS_RESOLUTION.equals(responseErrorCode.getResolution())) {
            t.b("HuaweiIdCancelAuthorizationTaskApiCall", "apk version is low or is not exist.", true);
            Status status = new Status(errorCode, responseErrorCode.getErrorReason());
            p.c(responseErrorCode, status);
            gVar.b(new ResolvableApiException(status));
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            if (JsonUtils.EMPTY_JSON.equals(str)) {
                t.b("HuaweiIdCancelAuthorizationTaskApiCall", "CancelAuthorization complete, body is null", true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
                return;
            }
            try {
                RevokeAccessResult fromJson = new RevokeAccessResult().fromJson(str);
                if (!fromJson.isSuccess()) {
                    Status status2 = fromJson.getStatus();
                    gVar.b(new ApiException(new Status(status2.getStatusCode(), status2.getStatusMessage())));
                } else {
                    gVar.c(null);
                }
            } catch (JSONException e10) {
                t.b("HuaweiIdCancelAuthorizationTaskApiCall", "JSONException:" + e10.getClass().getSimpleName(), true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
            }
        } else {
            gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
        }
        if (n0Var != null) {
            HiAnalyticsClient.reportExit(n0Var.getContext(), CommonNaming.revokeAccess, getTransactionId(), s.a(errorCode), errorCode);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 1;
    }
}
