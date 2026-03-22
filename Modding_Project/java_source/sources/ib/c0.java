package ib;

import android.app.PendingIntent;
import android.text.TextUtils;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.account.AccountNaming;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
/* compiled from: AccountLogoutTaskApiCall.java */
/* loaded from: classes5.dex */
public class c0 extends TaskApiCall<v, Void> {
    public c0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(ResponseErrorCode responseErrorCode) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("headerErrorCode:" + responseErrorCode.getErrorCode());
        t.b("AccountLogoutTaskApiCall", sb2.toString(), true);
    }

    private void c(v vVar, ResponseErrorCode responseErrorCode) {
        if (vVar != null && responseErrorCode != null) {
            HiAnalyticsClient.reportExit(vVar.getContext(), AccountNaming.logout, getTransactionId(), s.a(responseErrorCode.getErrorCode()), responseErrorCode.getErrorCode());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: d */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        t.b("AccountLogoutTaskApiCall", "AccountLogoutTaskApiCall doExecute", true);
        if (responseErrorCode == null) {
            t.b("AccountLogoutTaskApiCall", "response is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        b(responseErrorCode);
        if (responseErrorCode.getErrorCode() != 0) {
            if (CommonCode.Resolution.HAS_RESOLUTION.equals(responseErrorCode.getResolution())) {
                t.b("AccountLogoutTaskApiCall", "hms apk version is low or is not exist.", true);
                gVar.b(new ResolvableApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason(), (PendingIntent) responseErrorCode.getParcelable())));
            } else {
                t.b("AccountLogoutTaskApiCall", "AccountLogoutTaskApiCall callback.", true);
                if (responseErrorCode.getErrorCode() != 2031) {
                    gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
                }
            }
            gVar.c(null);
            c(vVar, responseErrorCode);
        } else if (TextUtils.isEmpty(str)) {
            gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason())));
            c(vVar, responseErrorCode);
        } else {
            gVar.c(null);
            c(vVar, responseErrorCode);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 16;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 60000000;
    }
}
