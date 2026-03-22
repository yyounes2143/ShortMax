package ib;

import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
/* compiled from: StartConsentTaskApiCall.java */
/* loaded from: classes5.dex */
public class m extends TaskApiCall<j, Void> {
    public m(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private boolean c(ResponseErrorCode responseErrorCode, Integer num) {
        if (num == null) {
            if (responseErrorCode.getStatusCode() != 0) {
                return false;
            }
            return true;
        } else if (num.intValue() != 0) {
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: b */
    public void a(j jVar, ResponseErrorCode responseErrorCode, String str, ua.g<Void> gVar) {
        h d10 = h.d(str);
        Integer a10 = d10.a();
        String e10 = d10.e();
        if (a10 == null) {
            a10 = Integer.valueOf(responseErrorCode.getErrorCode());
            e10 = responseErrorCode.getErrorReason();
        }
        if (c(responseErrorCode, d10.a())) {
            gVar.c(null);
        } else {
            gVar.b(new ApiException(new Status(a10.intValue(), e10)));
        }
        if (jVar != null) {
            HiAnalyticsClient.reportExit(jVar.getContext(), getUri(), getTransactionId(), s.a(a10.intValue()), a10.intValue());
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        t.b("StartConsentTaskApiCall", "startConsent getApiLevel8", true);
        return 8;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 50005300;
    }
}
