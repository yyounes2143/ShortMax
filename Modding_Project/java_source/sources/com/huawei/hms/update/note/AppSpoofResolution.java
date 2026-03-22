package com.huawei.hms.update.note;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.ui.AbstractDialog;
import com.huawei.hms.ui.AbstractPromptDialog;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
/* loaded from: classes5.dex */
public class AppSpoofResolution implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    private Activity f22339a;

    /* renamed from: b  reason: collision with root package name */
    private b f22340b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements AbstractDialog.Callback {
        a() {
        }

        @Override // com.huawei.hms.ui.AbstractDialog.Callback
        public void onCancel(AbstractDialog abstractDialog) {
            com.huawei.hms.availableupdate.a.f21917c.a(true);
            AppSpoofResolution.this.f22340b = null;
            AppSpoofResolution.this.b();
        }

        @Override // com.huawei.hms.ui.AbstractDialog.Callback
        public void onDoWork(AbstractDialog abstractDialog) {
            com.huawei.hms.availableupdate.a.f21917c.a(true);
            AppSpoofResolution.this.f22340b = null;
            AppSpoofResolution.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b extends AbstractPromptDialog {
        private b() {
        }

        @Override // com.huawei.hms.ui.AbstractDialog
        public String onGetMessageString(Context context) {
            String str = "com.huawei.hwid";
            String applicationName = new PackageManagerHelper(context).getApplicationName("com.huawei.hwid");
            if (!TextUtils.isEmpty(applicationName)) {
                str = applicationName;
            }
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context);
            }
            return ResourceLoaderUtil.getString("hms_is_spoof", str);
        }

        @Override // com.huawei.hms.ui.AbstractDialog
        public String onGetPositiveButtonString(Context context) {
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context);
            }
            return ResourceLoaderUtil.getString("hms_confirm");
        }

        @Override // com.huawei.hms.ui.AbstractPromptDialog, com.huawei.hms.ui.AbstractDialog
        public String onGetTitleString(Context context) {
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context);
            }
            return ResourceLoaderUtil.getString("hms_spoof_hints");
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Activity e10 = e();
        if (e10 != null && !e10.isFinishing()) {
            HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution finishBridgeActivity：");
            if (com.huawei.hms.availableupdate.a.f21917c.a().compareAndSet(true, false)) {
                SystemManager.getInstance().notifyNoticeResult(29);
            }
            e10.finish();
        }
    }

    private void d() {
        Activity e10 = e();
        if (e10 != null && !e10.isFinishing()) {
            b bVar = this.f22340b;
            if (bVar == null) {
                this.f22340b = new b(null);
            } else {
                bVar.dismiss();
            }
            HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution showPromptdlg to resolve conn error");
            this.f22340b.show(e10, new a());
        }
    }

    protected Activity e() {
        return this.f22339a;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 0;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution onBridgeActivityCreate");
        if (activity != null && !activity.isFinishing()) {
            this.f22339a = activity;
            com.huawei.hms.availableupdate.a aVar = com.huawei.hms.availableupdate.a.f21917c;
            aVar.a(activity);
            aVar.a(false);
            d();
            return;
        }
        HMSLog.e("AppSpoofResolution", "activity is null or finishing");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution onBridgeActivityDestroy");
        com.huawei.hms.availableupdate.a aVar = com.huawei.hms.availableupdate.a.f21917c;
        if (aVar.a().compareAndSet(true, false)) {
            SystemManager.getInstance().notifyNoticeResult(29);
        }
        aVar.b(this.f22339a);
        this.f22339a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        if (i10 != getRequestCode()) {
            return false;
        }
        HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution onBridgeActivityResult");
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        if (this.f22340b == null) {
            return;
        }
        HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution re show prompt dialog");
        d();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
        HMSLog.i("AppSpoofResolution", "enter AppSpoofResolution On key up when resolve spoof error");
    }
}
