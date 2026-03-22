package com.huawei.hms.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.adapter.ui.NotInstalledHmsAdapter;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.note.AppSpoofResolution;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSBIInitializer;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
/* loaded from: classes5.dex */
public class AvailableAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final int f21792a;

    /* renamed from: b  reason: collision with root package name */
    private AvailableCallBack f21793b;

    /* renamed from: d  reason: collision with root package name */
    private SystemObserver f21795d = new a();

    /* renamed from: c  reason: collision with root package name */
    private boolean f21794c = false;

    /* loaded from: classes5.dex */
    public interface AvailableCallBack {
        void onComplete(int i10);
    }

    /* loaded from: classes5.dex */
    class a implements SystemObserver {
        a() {
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onNoticeResult(int i10) {
            AvailableCallBack b10 = AvailableAdapter.this.b();
            if (b10 == null) {
                HMSLog.e("AvailableAdapter", "onNoticeResult baseCallBack null");
                return true;
            }
            b10.onComplete(i10);
            return true;
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onSolutionResult(Intent intent, String str) {
            return false;
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onUpdateResult(int i10) {
            AvailableCallBack b10 = AvailableAdapter.this.b();
            if (b10 == null) {
                HMSLog.e("AvailableAdapter", "onUpdateResult baseCallBack null");
                return true;
            }
            b10.onComplete(i10);
            return true;
        }
    }

    public AvailableAdapter(int i10) {
        this.f21792a = i10;
    }

    private int a(Context context) {
        if (HMSPackageManager.getInstance(context).isUseOldCertificate()) {
            HMSLog.e("AvailableAdapter", "The CP uses the old certificate to terminate the connection.");
            return 13;
        }
        PackageManagerHelper.PackageStates hMSPackageStatesForMultiService = HMSPackageManager.getInstance(context).getHMSPackageStatesForMultiService();
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is not installed");
            return 1;
        } else if (PackageManagerHelper.PackageStates.SPOOF.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is spoofed");
            return 29;
        } else if (PackageManagerHelper.PackageStates.DISABLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is disabled");
            return 3;
        } else {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AvailableCallBack b() {
        return this.f21793b;
    }

    private void d(Activity activity, AvailableCallBack availableCallBack) {
        HMSLog.i("AvailableAdapter", "<showHmsApkNotInstalledDialog> startResolution");
        if (NotInstalledHmsAdapter.getShowLock()) {
            this.f21793b = availableCallBack;
            SystemManager.getSystemNotifier().registerObserver(this.f21795d);
            activity.startActivity(BridgeActivity.getIntentStartBridgeActivity(activity, NotInstalledHmsAdapter.class.getName()));
            return;
        }
        availableCallBack.onComplete(31);
    }

    private boolean e(Activity activity) {
        if (HMSPackageManager.getInstance(activity).isUpdateHmsForThirdPartyDevice() || HMSPackageManager.getInstance(activity).getHmsVersionCode() < 40000000) {
            return false;
        }
        HMSLog.i("AvailableAdapter", "enter 4.0 HmsCore upgrade process");
        return true;
    }

    private void f(Context context) {
        HMSBIInitializer.getInstance(context).initBI();
    }

    public int checkHuaweiMobileServicesForUpdate(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        int a10 = a(context);
        if (a10 != 0) {
            return a10;
        }
        if (HMSPackageManager.getInstance(context).isApkNeedUpdate(this.f21792a)) {
            HMSLog.i("AvailableAdapter", "The current version does not meet the target version requirements");
            return 2;
        }
        return a10;
    }

    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        int a10 = a(context);
        if (a10 != 0) {
            return a10;
        }
        if (HMSPackageManager.getInstance(context).isApkUpdateNecessary(this.f21792a)) {
            HMSLog.i("AvailableAdapter", "The current version does not meet the minimum version requirements");
            return 2;
        }
        return a10;
    }

    public boolean isUserNoticeError(int i10) {
        if (i10 != 29) {
            return false;
        }
        return true;
    }

    public boolean isUserResolvableError(int i10) {
        if (i10 == 1 || i10 == 2) {
            return true;
        }
        return false;
    }

    public void setCalledBySolutionInstallHms(boolean z10) {
        this.f21794c = z10;
    }

    public void startNotice(Activity activity, AvailableCallBack availableCallBack) {
        if (activity != null && availableCallBack != null) {
            if (UIUtil.isBackground(activity)) {
                HMSLog.i("AvailableAdapter", "current app is in Background");
                availableCallBack.onComplete(28);
                return;
            }
            HMSLog.i("AvailableAdapter", "startNotice");
            this.f21793b = availableCallBack;
            SystemManager.getSystemNotifier().registerObserver(this.f21795d);
            activity.startActivity(BridgeActivity.getIntentStartBridgeActivity(activity, AppSpoofResolution.class.getName()));
        }
    }

    public void startResolution(Activity activity, AvailableCallBack availableCallBack) {
        if (activity != null && availableCallBack != null) {
            f(activity);
            if (UIUtil.isBackground(activity)) {
                HMSLog.i("AvailableAdapter", "current app is in Background");
                availableCallBack.onComplete(28);
                return;
            }
            boolean e10 = e(activity);
            if (!AvailableUtil.isInstallerLibExist(activity) && !e10) {
                d(activity, availableCallBack);
                return;
            }
            HMSLog.i("AvailableAdapter", "startResolution");
            this.f21793b = availableCallBack;
            SystemManager.getSystemNotifier().registerObserver(this.f21795d);
            Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, UpdateAdapter.class.getName());
            intentStartBridgeActivity.putExtra(CommonCode.MapKey.UPDATE_VERSION, this.f21792a);
            if (this.f21794c) {
                intentStartBridgeActivity.putExtra("installHMS", "installHMS");
            }
            intentStartBridgeActivity.putExtra(CommonCode.MapKey.NEW_UPDATE, e10);
            activity.startActivity(intentStartBridgeActivity);
        }
    }
}
