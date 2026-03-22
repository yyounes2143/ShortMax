package com.huawei.hms.adapter;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.AndroidException;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.common.HmsCheckedState;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.AgHmsUpdateState;
/* loaded from: classes5.dex */
public class AvailableUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f21797a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f21798b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f21799c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f21800a;

        a(Context context) {
            this.f21800a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.i("AvailableUtil", "enter asyncCheckHmsV3UpdateInfo");
            if (!AvailableUtil.isInstallerLibExist(this.f21800a)) {
                AgHmsUpdateState.getInstance().setCheckedState(HmsCheckedState.NOT_NEED_UPDATE);
                HMSLog.e("AvailableUtil", "asyncCheckHmsV3UpdateInfo installer is not exist");
                return;
            }
            UpdateAdapter.invokeMethod("com.huawei.hms.adapter.ui.InstallerAdapter", "checkHmsUpdateInfo", new Object[]{this.f21800a});
            HMSLog.i("AvailableUtil", "quit asyncCheckHmsV3UpdateInfo");
        }
    }

    public static void asyncCheckHmsUpdateInfo(Context context) {
        if (HmsCheckedState.UNCHECKED != AgHmsUpdateState.getInstance().getCheckedState()) {
            HMSLog.i("AvailableUtil", "asyncCheckHmsUpdateInfo, not need to check");
        } else {
            new Thread(new a(context), "Thread-asyncCheckHmsV3UpdateInfo").start();
        }
    }

    public static boolean isInstallerLibExist(Context context) {
        Bundle bundle;
        Object obj;
        boolean z10;
        if (f21798b) {
            HMSLog.i("AvailableUtil", "installerInit exist: " + f21799c);
            return f21799c;
        }
        synchronized (f21797a) {
            if (!f21798b) {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    HMSLog.e("AvailableUtil", "In isAvailableLibExist, Failed to get 'PackageManager' instance.");
                    try {
                        Class.forName("com.huawei.hms.update.manager.UpdateManager");
                        z10 = true;
                    } catch (ClassNotFoundException unused) {
                        HMSLog.e("AvailableUtil", "In isInstallerLibExist, Failed to find class UpdateManager.");
                    }
                } else {
                    try {
                        ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && (obj = bundle.get("availableHMSCoreInstaller")) != null && String.valueOf(obj).equalsIgnoreCase("yes")) {
                            HMSLog.i("AvailableUtil", "available exist: true");
                            z10 = true;
                        }
                    } catch (AndroidException unused2) {
                        HMSLog.e("AvailableUtil", "In isInstallerLibExist, Failed to read meta data for the availableHMSCoreInstaller.");
                    } catch (RuntimeException e10) {
                        HMSLog.e("AvailableUtil", "In isInstallerLibExist, Failed to read meta data for the availableHMSCoreInstaller.", e10);
                    }
                    z10 = false;
                }
                f21799c = z10;
                f21798b = true;
            }
        }
        HMSLog.i("AvailableUtil", "available exist: " + f21799c);
        return f21799c;
    }
}
