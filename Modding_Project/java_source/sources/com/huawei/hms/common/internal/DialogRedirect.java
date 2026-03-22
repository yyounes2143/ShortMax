package com.huawei.hms.common.internal;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public abstract class DialogRedirect implements DialogInterface.OnClickListener {
    public static DialogRedirect getInstance(Activity activity, Intent intent, int i10) {
        return new DialogRedirectImpl(intent, activity, i10);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        try {
            try {
                redirect();
                if (dialogInterface == null) {
                }
            } finally {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        } catch (Throwable unused) {
            HMSLog.e("DialogRedirect", "Failed to start resolution intent");
        }
    }

    protected abstract void redirect();
}
