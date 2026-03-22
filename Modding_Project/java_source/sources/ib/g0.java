package ib;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.hwid.SignOutResult;
import org.json.JSONException;
/* compiled from: AccountSignOutTaskApiCall.java */
/* loaded from: classes5.dex */
public class g0 extends TaskApiCall<v, Void> {
    public g0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(ResponseErrorCode responseErrorCode, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("headerErrorCode:" + responseErrorCode.getErrorCode());
        t.b("[AccountSDK]AccountSignOutTaskApiCall", sb2.toString(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        if (responseErrorCode == null) {
            t.b("[AccountSDK]AccountSignOutTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        b(responseErrorCode, str);
        int errorCode = responseErrorCode.getErrorCode();
        if (errorCode != 0 && CommonCode.Resolution.HAS_RESOLUTION.equals(responseErrorCode.getResolution())) {
            t.b("[AccountSDK]AccountSignOutTaskApiCall", "apk version is low or is not exist.", true);
            Status status = new Status(errorCode, responseErrorCode.getErrorReason());
            p.c(responseErrorCode, status);
            gVar.b(new ResolvableApiException(status));
        } else if (!TextUtils.isEmpty(str)) {
            if (JsonUtils.EMPTY_JSON.equals(str)) {
                t.b("[AccountSDK]AccountSignOutTaskApiCall", "SignOut complete, body is null", true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
                return;
            }
            try {
                SignOutResult fromJson = new SignOutResult().fromJson(str);
                if (fromJson.isSuccess()) {
                    gVar.c(null);
                } else {
                    gVar.b(new ApiException(fromJson.getStatus()));
                }
            } catch (JSONException e10) {
                t.b("[AccountSDK]AccountSignOutTaskApiCall", "JSONException:" + e10.getClass().getSimpleName(), true);
                gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
            }
        } else {
            gVar.b(new ApiException(new Status(errorCode, responseErrorCode.getErrorReason())));
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 1;
    }
}
