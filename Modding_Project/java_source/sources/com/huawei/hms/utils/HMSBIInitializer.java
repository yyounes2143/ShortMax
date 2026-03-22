package com.huawei.hms.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hianalytics.process.HiAnalyticsConfig;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.stats.HianalyticsExist;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public class HMSBIInitializer {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f22371d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static HMSBIInitializer f22372e;

    /* renamed from: f  reason: collision with root package name */
    private static HiAnalyticsInstance f22373f;

    /* renamed from: a  reason: collision with root package name */
    private final Context f22374a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f22375b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private boolean f22376c = HianalyticsExist.isHianalyticsExist();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements IQueryUrlCallBack {
        a() {
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackFail(int i10) {
            HMSLog.e("HMSBIInitializer", "get grs failed, the errorcode is " + i10);
            HMSBIInitializer.this.f22375b.set(false);
            com.huawei.hms.stats.a.c().a();
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackSuccess(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (HMSBIInitializer.this.f22376c) {
                    HMSBIInitializer.this.b(str);
                } else {
                    hb.a.c(HMSBIInitializer.this.f22374a, false, false, false, str, "com.huawei.hwid");
                }
                HMSLog.i("HMSBIInitializer", "BI URL acquired successfully");
            }
            HMSBIInitializer.this.f22375b.set(false);
            com.huawei.hms.stats.a.c().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b extends AsyncTask<String, Integer, Void> {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            HMSBIInitializer.this.f(strArr[0]);
            return null;
        }

        /* synthetic */ b(HMSBIInitializer hMSBIInitializer, a aVar) {
            this();
        }
    }

    private HMSBIInitializer(Context context) {
        this.f22374a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        HiAnalyticsInstance instanceByTag = HiAnalyticsManager.getInstanceByTag(HiAnalyticsConstant.HA_SERVICE_TAG);
        f22373f = instanceByTag;
        if (instanceByTag != null) {
            instanceByTag.setAppid("com.huawei.hwid");
            return;
        }
        HiAnalyticsConfig build = new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build();
        HiAnalyticsInstance create = new HiAnalyticsInstance.Builder(this.f22374a).setOperConf(build).setMaintConf(new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build()).create(HiAnalyticsConstant.HA_SERVICE_TAG);
        f22373f = create;
        if (create != null) {
            create.setAppid("com.huawei.hwid");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String str) {
        HMSLog.i("HMSBIInitializer", "Start to query GRS");
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setIssueCountry(str);
        new GrsClient(this.f22374a, grsBaseInfo).ayncGetGrsUrl("com.huawei.cloud.opensdkhianalytics", "ROOTV2", new a());
    }

    public static HMSBIInitializer getInstance(Context context) {
        synchronized (f22371d) {
            try {
                if (f22372e == null && context != null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        f22372e = new HMSBIInitializer(applicationContext);
                    } else {
                        f22372e = new HMSBIInitializer(context);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f22372e;
    }

    public HiAnalyticsInstance getAnalyticsInstance() {
        return f22373f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        if (this.f22375b.compareAndSet(false, true)) {
            String issueCountryCode = GrsApp.getInstance().getIssueCountryCode(this.f22374a);
            if (!TextUtils.isEmpty(issueCountryCode)) {
                issueCountryCode = issueCountryCode.toUpperCase(Locale.ENGLISH);
            }
            if (!GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(issueCountryCode) && !TextUtils.isEmpty(issueCountryCode)) {
                new b(this, null).execute(issueCountryCode);
                return;
            }
            HMSLog.e("HMSBIInitializer", "Failed to get device issue country");
            this.f22375b.set(false);
        }
    }

    public void initBI() {
        boolean initFlag;
        if (!this.f22376c) {
            initFlag = hb.a.b();
        } else {
            initFlag = HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
        }
        HMSLog.i("HMSBIInitializer", "Builder->biInitFlag :" + initFlag);
        if (initFlag || AnalyticsSwitchHolder.isAnalyticsDisabled(this.f22374a)) {
            return;
        }
        HMSLog.i("HMSBIInitializer", "Builder->biInitFlag : start initHaSDK");
        h();
    }

    public boolean isInit() {
        if (!this.f22376c) {
            return hb.a.b();
        }
        return HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }
}
