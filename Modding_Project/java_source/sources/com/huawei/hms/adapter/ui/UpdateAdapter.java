package com.huawei.hms.adapter.ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.AvailableUtil;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.availableupdate.c;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.update.ui.UpdateBean;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class UpdateAdapter implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f21858a;

    /* renamed from: b  reason: collision with root package name */
    private Context f21859b;

    /* renamed from: c  reason: collision with root package name */
    private int f21860c;

    /* renamed from: d  reason: collision with root package name */
    private UpdateBean f21861d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21862e = false;

    private static Object a(String str, String str2, Object[] objArr) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            HMSLog.e("UpdateAdapter", "className is empty.");
            return null;
        } else if (TextUtils.isEmpty(str2)) {
            HMSLog.e("UpdateAdapter", "methodName is empty.");
            return null;
        } else if (objArr == null) {
            HMSLog.e("UpdateAdapter", "args is null.");
            return null;
        } else {
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof Activity) {
                    clsArr[i10] = Activity.class;
                } else if (obj instanceof Context) {
                    clsArr[i10] = Context.class;
                } else if (obj instanceof UpdateBean) {
                    clsArr[i10] = UpdateBean.class;
                } else if (obj instanceof Integer) {
                    clsArr[i10] = Integer.TYPE;
                } else if (obj instanceof Boolean) {
                    clsArr[i10] = Boolean.TYPE;
                } else {
                    HMSLog.e("UpdateAdapter", "not set args[" + i10 + "] type");
                }
            }
            Class<?> cls = Class.forName(str);
            return cls.getMethod(str2, clsArr).invoke(cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), objArr);
        }
    }

    private void b() {
        Activity f10 = f();
        if (f10 != null && !f10.isFinishing()) {
            f10.finish();
        }
    }

    private void c(Intent intent) {
        int i10 = -1;
        try {
            i10 = intent.getIntExtra(BridgeActivity.EXTRA_RESULT, -1);
        } catch (Throwable unused) {
            HMSLog.w("UpdateAdapter", "get extra_result failed, throwable occur.");
        }
        if (i10 == 0) {
            HMSLog.i("UpdateAdapter", "Error resolved successfully!");
            SystemManager.getInstance().notifyUpdateResult(0);
        } else if (i10 == 13) {
            HMSLog.i("UpdateAdapter", "Resolve error process canceled by user!");
            SystemManager.getInstance().notifyUpdateResult(13);
        } else if (i10 == 8) {
            HMSLog.i("UpdateAdapter", "Internal error occurred, recommended retry.");
            SystemManager.getInstance().notifyUpdateResult(8);
        } else {
            HMSLog.i("UpdateAdapter", "Other error codes.");
            SystemManager.getInstance().notifyUpdateResult(i10);
        }
    }

    private boolean d(Context context, String str, int i10) {
        if (context != null && !TextUtils.isEmpty(str) && i10 != 0) {
            PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
            if (!PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(packageManagerHelper.getPackageStates(str)) && packageManagerHelper.getPackageVersionCode(str) >= i10) {
                return false;
            }
            return true;
        }
        HMSLog.w("UpdateAdapter", "Please check your params, one of params is invalid.");
        return false;
    }

    private boolean e(Intent intent, Activity activity) {
        if (!intent.getBooleanExtra(CommonCode.MapKey.NEW_UPDATE, false)) {
            return false;
        }
        HMSLog.i("UpdateAdapter", "4.0 framework HMSCore upgrade process");
        String hMSPackageName = HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName();
        if (TextUtils.isEmpty(hMSPackageName)) {
            HMSLog.w("UpdateAdapter", "hmsPackageName is empty, update invalid.");
            g();
            return true;
        }
        ComponentName componentName = new ComponentName(hMSPackageName, "com.huawei.hms.fwksdk.stub.UpdateStubActivity");
        Intent intent2 = new Intent();
        intent2.putExtra(KpmsConstant.CALLER_PACKAGE_NAME, activity.getApplicationContext().getPackageName());
        intent2.putExtra(KpmsConstant.UPDATE_PACKAGE_NAME, hMSPackageName);
        intent2.setComponent(componentName);
        activity.startActivityForResult(intent2, 1001);
        return true;
    }

    private Activity f() {
        WeakReference<Activity> weakReference = this.f21858a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private void g() {
        SystemManager.getInstance().notifyUpdateResult(8);
        b();
    }

    public static Object invokeMethod(String str, String str2, Object[] objArr) {
        try {
            return a(str, str2, objArr);
        } catch (Throwable th2) {
            HMSLog.e("UpdateAdapter", "invoke " + str + "." + str2 + " fail. " + th2.getMessage());
            return null;
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1001;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        if (activity == null) {
            HMSLog.i("UpdateAdapter", "activity == null");
            g();
        } else if (activity.isFinishing()) {
            HMSLog.i("UpdateAdapter", "activity is finishing");
            g();
        } else {
            this.f21859b = activity.getApplicationContext();
            this.f21858a = new WeakReference<>(activity);
            if (!c.f21924b.a(f())) {
                return;
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                g();
                return;
            }
            try {
                this.f21860c = intent.getIntExtra(CommonCode.MapKey.UPDATE_VERSION, 0);
            } catch (Throwable th2) {
                HMSLog.e("UpdateAdapter", "get update_version:" + th2.getMessage());
            }
            if (this.f21860c == 0) {
                g();
                return;
            }
            if (intent.hasExtra("installHMS")) {
                this.f21862e = true;
            }
            if (e(intent, activity)) {
                return;
            }
            try {
                if (AvailableUtil.isInstallerLibExist(this.f21859b)) {
                    UpdateBean updateBean = (UpdateBean) a("com.huawei.hms.adapter.ui.InstallerAdapter", "setUpdateBean", new Object[]{activity, Integer.valueOf(this.f21860c), Boolean.valueOf(this.f21862e)});
                    this.f21861d = updateBean;
                    a("com.huawei.hms.adapter.ui.InstallerAdapter", "startUpdateHms", new Object[]{activity, updateBean, 1001});
                    this.f21861d = null;
                }
            } catch (Throwable th3) {
                HMSLog.e("UpdateAdapter", "InstallerAdapter.startUpdateHms is failed. message：" + th3.getMessage());
                g();
            }
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("UpdateAdapter", "onBridgeActivityDestroy");
        c.f21924b.b(f());
        this.f21858a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        int i12;
        if (i10 != getRequestCode()) {
            this.f21861d = null;
            return false;
        }
        HMSLog.i("UpdateAdapter", "onBridgeActivityResult " + i11);
        if (AvailableUtil.isInstallerLibExist(this.f21859b) && i11 == 1214) {
            HMSLog.i("UpdateAdapter", "Enter update escape route");
            Activity f10 = f();
            if (f10 == null) {
                HMSLog.e("UpdateAdapter", "bridgeActivity is null, update escape failed ");
                this.f21861d = null;
                return true;
            }
            invokeMethod("com.huawei.hms.update.manager.UpdateManager", "startUpdate", new Object[]{f10, 1001, this.f21861d});
            this.f21861d = null;
        }
        if (i11 == -1) {
            if (intent != null) {
                try {
                    i12 = intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0);
                } catch (Throwable unused) {
                    HMSLog.w("UpdateAdapter", "get kit_update_result failed, throwable occur.");
                    i12 = 0;
                }
                if (i12 == 1) {
                    HMSLog.i("UpdateAdapter", "new framework update process,Error resolved successfully!");
                    SystemManager.getInstance().notifyUpdateResult(0);
                    this.f21861d = null;
                    b();
                    return true;
                }
                c(intent);
            }
        } else if (i11 == 0) {
            HMSLog.i("UpdateAdapter", "Activity.RESULT_CANCELED");
            this.f21861d = null;
            Activity f11 = f();
            if (f11 == null) {
                return true;
            }
            String hMSPackageName = HMSPackageManager.getInstance(f11.getApplicationContext()).getHMSPackageName();
            if (TextUtils.isEmpty(hMSPackageName)) {
                hMSPackageName = "com.huawei.hwid";
            }
            if (!this.f21862e && !d(f11, hMSPackageName, this.f21860c)) {
                SystemManager.getInstance().notifyUpdateResult(0);
            } else {
                HMSLog.i("UpdateAdapter", "Resolve error, process canceled by user clicking back button!");
                SystemManager.getInstance().notifyUpdateResult(13);
            }
        } else if (i11 == 1) {
            SystemManager.getInstance().notifyUpdateResult(28);
        }
        b();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("UpdateAdapter", "onBridgeConfigurationChanged");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
        HMSLog.i("UpdateAdapter", "On key up when resolve conn error");
    }
}
