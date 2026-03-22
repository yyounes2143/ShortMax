package com.huawei.hms.adapter.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
/* loaded from: classes5.dex */
public class NotInstalledHmsAdapter implements IBridgeActivityDelegate {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f21852c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f21853d;

    /* renamed from: a  reason: collision with root package name */
    private Activity f21854a;

    /* renamed from: b  reason: collision with root package name */
    private Dialog f21855b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f21856a;

        public a(Activity activity) {
            this.f21856a = activity;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            HMSLog.i("NotInstalledHmsAdapter", "<Dialog onCancel>");
            SystemManager.getInstance().notifyUpdateResult(13);
            this.f21856a.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f21857a;

        public b(Activity activity) {
            this.f21857a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            HMSLog.i("NotInstalledHmsAdapter", "<Dialog onClick>");
            SystemManager.getInstance().notifyUpdateResult(30);
            this.f21857a.finish();
        }
    }

    private void a(Activity activity) {
        Dialog dialog = this.f21855b;
        if (dialog != null && dialog.isShowing()) {
            this.f21855b.setOnCancelListener(null);
            this.f21855b.cancel();
        }
        this.f21855b = NotInstalledHmsDialogHelper.getDialogBuilder(activity).setPositiveButton(NotInstalledHmsDialogHelper.getConfirmResId(activity), new b(activity)).setOnCancelListener(new a(activity)).show();
    }

    public static boolean getShowLock() {
        synchronized (f21852c) {
            try {
                HMSLog.i("NotInstalledHmsAdapter", "<canShowDialog> sIsShowingDialog: " + f21853d);
                if (f21853d) {
                    return false;
                }
                f21853d = true;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        HMSLog.i("NotInstalledHmsAdapter", "<getRequestCode>");
        return 0;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityCreate>");
        if (activity != null && !activity.isFinishing()) {
            this.f21854a = activity;
            a(activity);
            return;
        }
        HMSLog.e("NotInstalledHmsAdapter", "<onBridgeActivityCreate> activity is null or finishing");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityDestroy>");
        synchronized (f21852c) {
            f21853d = false;
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityResult>");
        return false;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeConfigurationChanged>");
        Activity activity = this.f21854a;
        if (activity != null && !activity.isFinishing()) {
            a(this.f21854a);
        } else {
            HMSLog.e("NotInstalledHmsAdapter", "<onBridgeConfigurationChanged> mActivity is null or finishing");
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
        HMSLog.i("NotInstalledHmsAdapter", "<onKeyUp>");
    }
}
