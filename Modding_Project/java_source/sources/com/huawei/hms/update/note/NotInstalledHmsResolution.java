package com.huawei.hms.update.note;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.availableupdate.b;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
/* loaded from: classes5.dex */
public class NotInstalledHmsResolution implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f22342a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f22343b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f22344a;

        public a(Activity activity) {
            this.f22344a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            HMSLog.i("NotInstalledHmsResolution", "<Dialog onClick>");
            this.f22344a.finish();
        }
    }

    private void a() {
        Dialog dialog = this.f22342a;
        if (dialog != null && dialog.isShowing()) {
            this.f22342a.cancel();
        }
    }

    private void b(Activity activity) {
        a();
        this.f22342a = NotInstalledHmsDialogHelper.getDialogBuilder(activity).setPositiveButton(NotInstalledHmsDialogHelper.getConfirmResId(activity), new a(activity)).show();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution getRequestCode>");
        return 0;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate>");
        if (activity != null && !activity.isFinishing()) {
            this.f22343b = activity;
            b.f21921b.a(activity);
            b(activity);
            return;
        }
        HMSLog.e("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate> activity is null or finishing");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityDestroy>");
        a();
        b.f21921b.b(this.f22343b);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityResult>");
        return false;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeConfigurationChanged>");
        Activity activity = this.f22343b;
        if (activity != null && !activity.isFinishing()) {
            b(this.f22343b);
        } else {
            HMSLog.e("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate> mActivity is null or finishing");
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onKeyUp>");
    }
}
