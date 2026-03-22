package com.huawei.hms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.support.api.client.Status;
/* loaded from: classes5.dex */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(Status status) {
        super(status);
    }

    public PendingIntent getResolution() {
        return this.f21943a.getResolution();
    }

    public Intent getResolutionIntent() {
        return this.f21943a.getResolutionIntent();
    }

    public void startResolutionForResult(Activity activity, int i10) throws IntentSender.SendIntentException {
        this.f21943a.startResolutionForResult(activity, i10);
    }

    public ResolvableApiException(ResponseErrorCode responseErrorCode) {
        super(new Status(responseErrorCode.getErrorCode(), responseErrorCode.getErrorReason()));
        if (responseErrorCode.hasResolution()) {
            if (responseErrorCode.getParcelable() instanceof PendingIntent) {
                this.f21943a.setPendingIntent((PendingIntent) responseErrorCode.getParcelable());
            } else if (responseErrorCode.getParcelable() instanceof Intent) {
                this.f21943a.setIntent((Intent) responseErrorCode.getParcelable());
            }
        }
    }
}
