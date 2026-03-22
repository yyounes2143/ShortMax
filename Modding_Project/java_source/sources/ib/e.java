package ib;

import android.text.TextUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.common.CommonNaming;
import com.huawei.hms.support.api.hwid.SignOutResult;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import org.json.JSONException;
/* compiled from: HuaweiIdSignOutTaskApiCall.java */
/* loaded from: classes5.dex */
public class e extends TaskApiCall<n0, Void> {
    public e(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(ResponseErrorCode responseErrorCode, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("headerErrorCode:" + responseErrorCode.getErrorCode());
        t.b("[HUAWEIIDSDK]HuaweiIdSignOutTaskApiCall", sb2.toString(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(n0 n0Var, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        if (responseErrorCode == null) {
            t.b("[HUAWEIIDSDK]HuaweiIdSignOutTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        b(responseErrorCode, str);
        int errorCode = responseErrorCode.getErrorCode();
        if (!TextUtils.isEmpty(str)) {
            try {
                SignOutResult fromJson = new SignOutResult().fromJson(str);
                errorCode = fromJson.getStatus().getStatusCode();
                if (fromJson.isSuccess()) {
                    gVar.c(null);
                } else {
                    gVar.b(new ApiException(fromJson.getStatus()));
                }
            } catch (JSONException unused) {
                gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
            }
        } else {
            gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
        }
        if (n0Var != null) {
            HiAnalyticsClient.reportExit(n0Var.getContext(), CommonNaming.signout, getTransactionId(), s.a(errorCode), errorCode);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 1;
    }
}
