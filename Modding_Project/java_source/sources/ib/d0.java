package ib;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcelable;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.common.ActivityMgr;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.utils.UIUtil;
/* compiled from: AccountNoticeTaskApiCall.java */
/* loaded from: classes5.dex */
public class d0 extends TaskApiCall<v, Intent> {
    public d0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    private void b(Parcelable parcelable, v vVar, ResponseErrorCode responseErrorCode, ua.g<Intent> gVar) {
        Activity currentActivity = ActivityMgr.INST.getCurrentActivity();
        if (currentActivity != null && !currentActivity.isFinishing() && !currentActivity.isDestroyed()) {
            if (parcelable instanceof Intent) {
                try {
                    currentActivity.startActivity((Intent) parcelable);
                    return;
                } catch (Exception unused) {
                    t.d("AccountNoticeTaskApiCall", "Jos Notice startActivity meet exception", true);
                    return;
                }
            } else if (parcelable instanceof PendingIntent) {
                PendingIntent pendingIntent = (PendingIntent) parcelable;
                try {
                    if (UIUtil.isBackground(vVar.getContext())) {
                        t.b("AccountNoticeTaskApiCall", "ui isBackground.", true);
                        gVar.b(new ApiException(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason(), pendingIntent)));
                    } else {
                        currentActivity.startIntentSender(pendingIntent.getIntentSender(), null, 0, 0, 0);
                    }
                    return;
                } catch (IntentSender.SendIntentException unused2) {
                    t.d("AccountNoticeTaskApiCall", "Jos Notice startIntentSender meet exception", true);
                    return;
                }
            } else {
                return;
            }
        }
        t.b("AccountNoticeTaskApiCall", "launchNoticeActivity failed, launchActivity is invalid", true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: c */
    public void a(v vVar, ResponseErrorCode responseErrorCode, String str, ua.g<Intent> gVar) {
        if (responseErrorCode == null) {
            t.b("AccountNoticeTaskApiCall", "header is null.", true);
            gVar.b(new ApiException(new Status(2003, "response is null.")));
            return;
        }
        if (responseErrorCode.getStatusCode() == 0 && responseErrorCode.getErrorCode() == 0) {
            t.b("AccountNoticeTaskApiCall", "Jos Notice onResult success.", true);
            b(responseErrorCode.getParcelable(), vVar, responseErrorCode, gVar);
        } else {
            t.c("AccountNoticeTaskApiCall", "Jos Notice onResult failed:" + responseErrorCode.getErrorCode() + ",ErrReason:" + responseErrorCode.getErrorReason(), true);
        }
        if (vVar != null) {
            HiAnalyticsClient.reportExit(vVar.getContext(), getUri(), getTransactionId(), responseErrorCode.getStatusCode(), responseErrorCode.getErrorCode());
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 1;
    }
}
