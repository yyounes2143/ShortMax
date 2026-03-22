package ib;

import android.text.TextUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
/* compiled from: HuaweiIdDeleteAuthInfoTaskApiCall.java */
/* loaded from: classes5.dex */
public class b extends TaskApiCall<n0, Void> {
    public b(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(ResponseErrorCode responseErrorCode, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("headerErrorCode:" + responseErrorCode.getErrorCode());
        t.b("[HUAWEIIDSDK]HuaweiIdDeleteAuthInfoTaskApiCall", sb2.toString(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(n0 n0Var, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        if (responseErrorCode == null) {
            t.b("[HUAWEIIDSDK]HuaweiIdDeleteAuthInfoTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        b(responseErrorCode, str);
        if (!TextUtils.isEmpty(str)) {
            if (responseErrorCode.getErrorCode() == 0) {
                gVar.c(null);
                return;
            } else {
                gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode())));
                return;
            }
        }
        gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 1;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 40000300;
    }
}
