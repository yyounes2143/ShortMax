package ib;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.account.result.AssistTokenResult;
import com.huawei.hms.support.account.result.GetAssistTokenResult;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.account.AccountNaming;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import org.json.JSONException;
/* compiled from: GetAssistTokenTaskApiCall.java */
/* loaded from: classes5.dex */
public class i0 extends TaskApiCall<v, AssistTokenResult> {
    public i0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(v vVar, int i10) {
        if (vVar != null) {
            HiAnalyticsClient.reportExit(vVar.getContext(), AccountNaming.getAssistToken, getTransactionId(), s.a(i10), i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<AssistTokenResult> gVar) {
        if (responseErrorCode == null) {
            t.b("[AccountSDK]GetAssistTokenTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        int errorCode = responseErrorCode.getErrorCode();
        if (!TextUtils.isEmpty(str) && !JsonUtils.EMPTY_JSON.equals(str)) {
            try {
                AssistTokenResult assistTokenResult = new AssistTokenResult();
                GetAssistTokenResult fromJson = new GetAssistTokenResult().fromJson(str);
                if (fromJson.isSuccess()) {
                    t.b("[AccountSDK]GetAssistTokenTaskApiCall", "getAssistToken success", true);
                    b(vVar, errorCode);
                    assistTokenResult.setAssistToken(fromJson.getAssistToken());
                    gVar.c(assistTokenResult);
                } else {
                    t.b("[AccountSDK]GetAssistTokenTaskApiCall", "getAssistToken failed", true);
                    b(vVar, errorCode);
                    gVar.b(new ApiException(fromJson.getStatus()));
                }
                return;
            } catch (JSONException unused) {
                t.d("[AccountSDK]GetAssistTokenTaskApiCall", "getAssistToken complete, but parser json exception", true);
                b(vVar, errorCode);
                gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
                return;
            }
        }
        t.b("[AccountSDK]GetAssistTokenTaskApiCall", "getAssistToken complete, response or body is null, failed", true);
        b(vVar, errorCode);
        gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
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
