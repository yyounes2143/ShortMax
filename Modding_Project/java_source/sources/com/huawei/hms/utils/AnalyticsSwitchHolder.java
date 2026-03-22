package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.AndroidException;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtils;
import com.huawei.hms.support.log.HMSLog;
import com.vungle.ads.internal.signals.SignalManager;
import java.sql.Timestamp;
/* loaded from: classes5.dex */
public class AnalyticsSwitchHolder {
    public static final int ANALYTICS_DISABLED = 2;
    public static final int ANALYTICS_ENABLED = 1;

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f22357a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f22358b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static volatile Long f22359c = 0L;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f22360d = false;

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f22361e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22362a;

        a(Context context) {
            this.f22362a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnalyticsSwitchHolder.f(this.f22362a);
            HMSLog.i("AnalyticsSwitchHolder", "getStateForHmsAnalyticsProvider");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f22363a;

        b(Context context) {
            this.f22363a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.i("AnalyticsSwitchHolder", "enter setAnalyticsStateAndTimestamp");
            AnalyticsSwitchHolder.f(this.f22363a);
            HMSLog.i("AnalyticsSwitchHolder", "quit setAnalyticsStateAndTimestamp");
        }
    }

    private static boolean b(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bireport.setting");
                }
            } catch (AndroidException unused) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.");
            } catch (RuntimeException e10) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.", e10);
            }
        }
        HMSLog.i("AnalyticsSwitchHolder", "In getBiIsReportSetting, configuration not found for bi report setting.");
        return false;
    }

    private static void c(Context context) {
        f22359c = Long.valueOf(new Timestamp(System.currentTimeMillis()).getTime());
        new Thread(new a(context), "Thread-getStateForHmsAnalyticsProvider").start();
    }

    private static boolean d(Context context) {
        return RegionUtils.isChinaROM(context);
    }

    private static void e(Context context) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        if (timestamp.getTime() - f22359c.longValue() >= SignalManager.TWENTY_FOUR_HOURS_MILLIS && f22359c.longValue() > 0) {
            f22359c = Long.valueOf(timestamp.getTime());
            new Thread(new b(context), "Thread-refreshOobeAnalyticsState").start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Context context) {
        if (context == null) {
            HMSLog.e("AnalyticsSwitchHolder", "In setAnalyticsState、, context is null.");
        } else if (HiAnalyticsUtils.getInstance().getOobeAnalyticsState(context) == 1) {
            synchronized (f22358b) {
                f22357a = 1;
            }
            if (!HiAnalyticsUtils.getInstance().getInitFlag() && !f22360d) {
                HMSBIInitializer.getInstance(context).h();
                f22360d = true;
            }
        } else {
            synchronized (f22358b) {
                f22357a = 2;
            }
            com.huawei.hms.stats.a.c().a();
        }
    }

    public static int getAndRefreshAnalyticsState(Context context) {
        int i10;
        synchronized (f22358b) {
            isAnalyticsDisabled(context);
            i10 = f22357a;
        }
        return i10;
    }

    public static boolean getBiSetting(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bi.setting");
                }
            } catch (AndroidException unused) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.");
            } catch (RuntimeException e10) {
                HMSLog.e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.", e10);
            }
        }
        HMSLog.i("AnalyticsSwitchHolder", "In getBiSetting, configuration not found for bisetting.");
        return false;
    }

    public static boolean isAnalyticsDisabled(Context context) {
        synchronized (f22358b) {
            try {
                if (f22357a == 0) {
                    if (context == null) {
                        return true;
                    }
                    if (b(context)) {
                        HMSLog.i("AnalyticsSwitchHolder", "Builder->biReportSetting :true");
                        f22357a = 1;
                    } else if (getBiSetting(context)) {
                        HMSLog.i("AnalyticsSwitchHolder", "Builder->biSetting :true");
                        f22357a = 2;
                    } else if (d(context)) {
                        f22357a = 1;
                    } else {
                        HMSLog.i("AnalyticsSwitchHolder", "not ChinaROM");
                        f22357a = 3;
                        f22361e = true;
                        c(context);
                    }
                } else if (f22361e) {
                    e(context);
                }
                if (f22357a != 1) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
