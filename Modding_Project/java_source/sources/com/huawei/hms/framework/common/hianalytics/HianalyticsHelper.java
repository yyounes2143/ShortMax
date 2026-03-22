package com.huawei.hms.framework.common.hianalytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.NonNull;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtils;
import com.huawei.hms.utils.HMSBIInitializer;
import java.security.SecureRandom;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes5.dex */
public class HianalyticsHelper {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: l  reason: collision with root package name */
    private static volatile HianalyticsHelper f22151l;

    /* renamed from: a  reason: collision with root package name */
    private boolean f22152a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22153b;

    /* renamed from: g  reason: collision with root package name */
    private ReportCallBack f22158g;

    /* renamed from: k  reason: collision with root package name */
    private boolean f22162k;

    /* renamed from: c  reason: collision with root package name */
    private String f22154c = "hms_hwid";

    /* renamed from: d  reason: collision with root package name */
    private HiAnalyticsInstance f22155d = null;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22156e = false;

    /* renamed from: f  reason: collision with root package name */
    private ExecutorService f22157f = ExecutorsUtils.newSingleThreadExecutor("report_ha");

    /* renamed from: h  reason: collision with root package name */
    private boolean f22159h = true;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22160i = true;

    /* renamed from: j  reason: collision with root package name */
    private final int f22161j = new SecureRandom().nextInt(1000);

    /* loaded from: classes5.dex */
    private static class HianalyticsRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final HianalyticsBaseData f22163a;

        /* renamed from: b  reason: collision with root package name */
        private final String f22164b;

        HianalyticsRunnable(HianalyticsBaseData hianalyticsBaseData, String str) {
            this.f22163a = hianalyticsBaseData;
            this.f22164b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            HianalyticsHelper.getInstance().onEvent(this.f22163a.get(), this.f22164b);
        }
    }

    /* loaded from: classes5.dex */
    public interface ReportCallBack {
        void onReport(int i10, String str, LinkedHashMap<String, String> linkedHashMap);
    }

    private HianalyticsHelper() {
        boolean z10 = true;
        try {
            HiAnalyticsManager.getInitFlag("_default_config_tag");
            this.f22152a = true;
        } catch (Throwable unused) {
            Logger.i("HianalyticsHelper", "Hianalytics sdk not found");
            this.f22152a = false;
        }
        if (!this.f22152a) {
            d(ContextHolder.getAppContext());
        }
        try {
            if (ContextHolder.getAppContext().getPackageManager().getPackageInfo("com.huawei.works", 0) == null) {
                z10 = false;
            }
            this.f22162k = z10;
        } catch (Exception unused2) {
            this.f22162k = false;
        }
        Logger.v("HianalyticsHelper", "this time the ha %s, mini %s", Boolean.valueOf(this.f22152a), Boolean.valueOf(this.f22153b));
    }

    private boolean a(@NonNull Context context, boolean z10, boolean z11) {
        if (this.f22158g != null) {
            return true;
        }
        if (z10 && ((z11 && !this.f22160i) || (!z11 && !this.f22159h))) {
            return false;
        }
        if (this.f22153b) {
            return true;
        }
        if (!this.f22152a) {
            return false;
        }
        if (this.f22156e) {
            return b();
        }
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "user_experience_involved", -1) == 1) {
                return b();
            }
        } catch (IllegalStateException unused) {
            Logger.w("HianalyticsHelper", "the setting has illegalStateException");
        } catch (Throwable unused2) {
            Logger.w("HianalyticsHelper", "the setting has other error");
        }
        Logger.i("HianalyticsHelper", "user experience involved needs to be opened");
        return false;
    }

    private boolean b() {
        if (this.f22155d != null) {
            return true;
        }
        if (HiAnalyticsManager.getInitFlag("_default_config_tag")) {
            this.f22155d = HiAnalyticsManager.getInstanceByTag("_default_config_tag");
        } else {
            this.f22155d = HiAnalyticsManager.getInstanceByTag(this.f22154c);
        }
        if (this.f22155d != null) {
            return true;
        }
        return false;
    }

    private void c(Context context, String str, Map map, int i10) {
        if (context != null && map != null) {
            Logger.v("HianalyticsHelper", "data = %s", map);
            try {
                HiAnalyticsUtils.getInstance().onNewEvent(context, str, map, i10);
            } catch (NoSuchMethodError unused) {
                Logger.w("HianalyticsHelper", "may be you need upgrade stats sdk");
            } catch (Throwable unused2) {
                Logger.i("HianalyticsHelper", "the stats has other error,pls check it");
            }
        }
    }

    private void d(Context context) {
        if (context == null) {
            Logger.i("HianalyticsHelper", "the appContext hasn't init");
            return;
        }
        try {
            HMSBIInitializer.getInstance(context).initBI();
            this.f22153b = true;
        } catch (NoClassDefFoundError unused) {
            Logger.w("HianalyticsHelper", "maybe you need add base sdk!");
        } catch (Throwable unused2) {
            Logger.w("HianalyticsHelper", "the hms base has other error!");
        }
    }

    public static HianalyticsHelper getInstance() {
        if (f22151l == null) {
            synchronized (HianalyticsHelper.class) {
                try {
                    if (f22151l == null) {
                        f22151l = new HianalyticsHelper();
                    }
                } finally {
                }
            }
        }
        return f22151l;
    }

    public void enablePrivacyPolicy(boolean z10) {
        this.f22156e = z10;
    }

    public void executeReportHa(HianalyticsBaseData hianalyticsBaseData, String str) {
        getReportExecutor().execute(new HianalyticsRunnable(hianalyticsBaseData, str));
    }

    public ExecutorService getReportExecutor() {
        return this.f22157f;
    }

    public boolean inRate() {
        return this.f22159h;
    }

    public boolean isEnableReport(Context context) {
        return a(context, true, false);
    }

    public boolean isEnableReportNoSeed(Context context) {
        return a(context, false, false);
    }

    public boolean isQuicEnableReport(Context context) {
        return a(context, true, true);
    }

    public void onEvent(LinkedHashMap<String, String> linkedHashMap, String str) {
        onEvent(linkedHashMap, str, 1);
    }

    public void reportData(Context context, LinkedHashMap<String, String> linkedHashMap, String str, int i10) {
        if (!isEnableReportNoSeed(context)) {
            return;
        }
        onEvent(linkedHashMap, str, i10);
    }

    public void reportException(final Throwable th2, final String str) {
        if (!getInstance().isEnableReportNoSeed(ContextHolder.getAppContext())) {
            return;
        }
        final String name = Thread.currentThread().getName();
        try {
            this.f22157f.submit(new Runnable() { // from class: com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    CrashHianalyticsData crashHianalyticsData = new CrashHianalyticsData();
                    crashHianalyticsData.put("sdk_version", "6.0.11.300");
                    crashHianalyticsData.put(CrashHianalyticsData.CRASH_TYPE, "exception");
                    crashHianalyticsData.put(CrashHianalyticsData.THREAD_NAME, name);
                    crashHianalyticsData.put(CrashHianalyticsData.EXCEPTION_NAME, th2.getClass().getName());
                    crashHianalyticsData.put("message", StringUtils.anonymizeMessage(th2.getMessage()));
                    crashHianalyticsData.put(CrashHianalyticsData.STACK_TRACE, StringUtils.getTraceInfo(th2));
                    HianalyticsHelper.getInstance().onEvent(crashHianalyticsData.get(), str);
                }
            });
        } catch (RejectedExecutionException unused) {
            Logger.i("HianalyticsHelper", "reportException error RejectedExecutionException");
        } catch (Exception unused2) {
            Logger.i("HianalyticsHelper", "reportException error!", th2);
        }
    }

    public void setHaTag(String str) {
        this.f22154c = str;
    }

    public void setQuicRate(int i10) {
        boolean z10 = true;
        if (i10 >= 0 && i10 < 1000) {
            if (this.f22161j >= i10 && !this.f22162k) {
                z10 = false;
            }
            this.f22160i = z10;
            return;
        }
        this.f22160i = true;
    }

    public void setRate(int i10) {
        boolean z10 = true;
        if (i10 >= 0 && i10 < 1000) {
            if (this.f22161j >= i10 && !this.f22162k) {
                z10 = false;
            }
            this.f22159h = z10;
            Logger.i("HianalyticsHelper", "bReportable = " + this.f22159h + ", inuser = " + this.f22162k + ", rate = " + i10);
            return;
        }
        this.f22159h = true;
    }

    public void setReportCallback(ReportCallBack reportCallBack) {
        this.f22158g = reportCallBack;
    }

    public void onEvent(LinkedHashMap<String, String> linkedHashMap, String str, int i10) {
        if (linkedHashMap == null) {
            return;
        }
        linkedHashMap.put("in_user", "" + (this.f22162k ? 1 : 0));
        Logger.v("HianalyticsHelper", "data = %s", linkedHashMap);
        ReportCallBack reportCallBack = this.f22158g;
        if (reportCallBack != null) {
            reportCallBack.onReport(i10, str, linkedHashMap);
            return;
        }
        if (this.f22153b) {
            c(ContextHolder.getAppContext(), str, linkedHashMap, i10);
        } else if (i10 == 0) {
            Logger.v("HianalyticsHelper", "the base sdk isn't exsit, and reportType is %s", Integer.valueOf(i10));
            return;
        }
        if (this.f22152a) {
            HiAnalyticsInstance hiAnalyticsInstance = this.f22155d;
            if (hiAnalyticsInstance != null) {
                hiAnalyticsInstance.onEvent(1, str, linkedHashMap);
            } else {
                Logger.e("HianalyticsHelper", "the ha has error,has init but is null!");
            }
        }
    }

    public void onEvent(LinkedHashMap<String, String> linkedHashMap) {
        onEvent(linkedHashMap, HianalyticsBaseData.EVENT_ID);
    }
}
