package com.bytedance.bdtracker;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import androidx.annotation.WorkerThread;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.migrate.MigrateDetectorActivity;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* loaded from: classes3.dex */
public final class g2 {

    /* renamed from: e  reason: collision with root package name */
    public static volatile g2 f12018e;

    /* renamed from: a  reason: collision with root package name */
    public final PackageManager f12019a;

    /* renamed from: b  reason: collision with root package name */
    public final ComponentName f12020b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12021c;

    /* renamed from: d  reason: collision with root package name */
    public final SharedPreferences f12022d;

    @WorkerThread
    public g2(Context context) {
        boolean z10;
        int componentEnabledSetting;
        int i10;
        Context applicationContext = context.getApplicationContext();
        SharedPreferences sharedPreferences = context.getSharedPreferences("bdtracker_dr_migrate_detector", 0);
        this.f12022d = sharedPreferences;
        PackageManager packageManager = applicationContext.getPackageManager();
        this.f12019a = packageManager;
        ComponentName componentName = new ComponentName(context, MigrateDetectorActivity.class);
        this.f12020b = componentName;
        try {
            componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
            i10 = sharedPreferences.getInt("component_state", 0);
            IAppLogLogger global = LoggerImpl.global();
            StringBuilder a10 = a.a("MigrateDetector#isMigrateInternal cs=");
            a10.append(a(componentEnabledSetting));
            a10.append(" ss=");
            a10.append(a(i10));
            global.debug(a10.toString(), new Object[0]);
        } catch (Exception unused) {
        }
        if (componentEnabledSetting == 0 && i10 == 2) {
            z10 = true;
            this.f12021c = z10;
            IAppLogLogger global2 = LoggerImpl.global();
            StringBuilder a11 = a.a("MigrateDetector#constructor migrate=");
            a11.append(z10);
            global2.debug(a11.toString(), new Object[0]);
        }
        z10 = false;
        this.f12021c = z10;
        IAppLogLogger global22 = LoggerImpl.global();
        StringBuilder a112 = a.a("MigrateDetector#constructor migrate=");
        a112.append(z10);
        global22.debug(a112.toString(), new Object[0]);
    }

    public static g2 a(Context context) {
        if (f12018e == null) {
            synchronized (g2.class) {
                try {
                    if (f12018e == null) {
                        f12018e = new g2(context);
                    }
                } finally {
                }
            }
        }
        return f12018e;
    }

    public static String a(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "STATE_DISABLED" : "STATE_ENABLED" : "STATE_DEFAULT";
    }

    public void a() {
        LoggerImpl.global().debug("MigrateDetector#disableComponent", new Object[0]);
        this.f12019a.setComponentEnabledSetting(this.f12020b, 2, 1);
        this.f12022d.edit().putInt("component_state", 2).apply();
    }
}
