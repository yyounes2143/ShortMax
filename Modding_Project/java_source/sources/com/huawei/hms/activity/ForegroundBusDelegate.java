package com.huawei.hms.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hms.activity.internal.BusResponseCallback;
import com.huawei.hms.activity.internal.BusResponseResult;
import com.huawei.hms.activity.internal.ForegroundBusResponseMgr;
import com.huawei.hms.activity.internal.ForegroundInnerHeader;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.IntentUtil;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.UIUtil;
import com.huawei.hms.utils.Util;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes5.dex */
public class ForegroundBusDelegate implements IBridgeActivityDelegate {
    public static final String HMS_FOREGROUND_REQ_BODY = "HMS_FOREGROUND_REQ_BODY";
    public static final String HMS_FOREGROUND_REQ_HEADER = "HMS_FOREGROUND_REQ_HEADER";
    public static final String HMS_FOREGROUND_REQ_INNER = "HMS_FOREGROUND_REQ_INNER";
    public static final String HMS_FOREGROUND_RESP_HEADER = "HMS_FOREGROUND_RESP_HEADER";
    public static final String INNER_PKG_NAME = "INNER_PACKAGE_NAME";

    /* renamed from: a  reason: collision with root package name */
    private RequestHeader f21772a;

    /* renamed from: b  reason: collision with root package name */
    private String f21773b;

    /* renamed from: c  reason: collision with root package name */
    private ForegroundInnerHeader f21774c = new ForegroundInnerHeader();

    /* renamed from: d  reason: collision with root package name */
    private ResponseHeader f21775d;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<Activity> f21776e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f21777f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b implements AvailableAdapter.AvailableCallBack {
        private b() {
        }

        @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
        public void onComplete(int i10) {
            if (i10 == 0) {
                ForegroundBusDelegate.this.o();
                return;
            }
            HMSLog.i("ForegroundBusDelegate", "version check failed");
            ForegroundBusDelegate.this.c(0, "apk version is invalid");
        }
    }

    private void a() {
        Map<String, String> mapFromForegroundRequestHeader = HiAnalyticsUtil.getInstance().getMapFromForegroundRequestHeader(this.f21772a);
        mapFromForegroundRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromForegroundRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.f21772a.getKitSdkVersion())));
        if (n() != null) {
            HiAnalyticsUtil.getInstance().onNewEvent(n().getApplicationContext(), HiAnalyticsConstant.HMS_SDK_BASE_ACTIVITY_STARTED, mapFromForegroundRequestHeader);
        }
    }

    private void b(int i10, Intent intent) {
        HMSLog.i("ForegroundBusDelegate", "succeedReturn");
        Activity n10 = n();
        if (n10 == null) {
            return;
        }
        n10.setResult(i10, IntentUtil.modifyIntentBehaviorsSafe(intent));
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        HMSLog.e("ForegroundBusDelegate", str);
        Activity n10 = n();
        if (n10 == null) {
            return;
        }
        BusResponseCallback h10 = h(this.f21774c.getResponseCallbackKey());
        if (h10 != null) {
            BusResponseResult innerError = h10.innerError(this.f21776e.get(), i10, str);
            if (innerError == null) {
                n10.setResult(0);
            } else {
                n10.setResult(innerError.getCode(), IntentUtil.modifyIntentBehaviorsSafe(innerError.getIntent()));
            }
        } else {
            n10.setResult(0);
        }
        m();
    }

    private static void d(Activity activity, AvailableAdapter availableAdapter, AvailableAdapter.AvailableCallBack availableCallBack) {
        if (activity == null) {
            HMSLog.i("ForegroundBusDelegate", "null activity, could not start resolution intent");
        }
        availableAdapter.startResolution(activity, availableCallBack);
    }

    private void g(String str) {
        Map<String, String> mapFromForegroundRequestHeader = HiAnalyticsUtil.getInstance().getMapFromForegroundRequestHeader(this.f21772a);
        mapFromForegroundRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromForegroundRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.f21772a.getKitSdkVersion())));
        ResponseHeader responseHeader = this.f21775d;
        if (responseHeader != null) {
            mapFromForegroundRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(responseHeader.getStatusCode()));
            mapFromForegroundRequestHeader.put("result", String.valueOf(this.f21775d.getErrorCode()));
        }
        if (n() != null) {
            HiAnalyticsUtil.getInstance().onNewEvent(n().getApplicationContext(), str, mapFromForegroundRequestHeader);
        }
    }

    private BusResponseCallback h(String str) {
        return ForegroundBusResponseMgr.getInstance().get(str);
    }

    private void i() {
        Map<String, String> mapFromForegroundRequestHeader = HiAnalyticsUtil.getInstance().getMapFromForegroundRequestHeader(this.f21772a);
        mapFromForegroundRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromForegroundRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.f21772a.getKitSdkVersion())));
        if (n() != null) {
            HiAnalyticsUtil.getInstance().onNewEvent(n().getApplicationContext(), HiAnalyticsConstant.HMS_SDK_BASE_START_CORE_ACTIVITY, mapFromForegroundRequestHeader);
        }
    }

    private void j() {
        if (this.f21772a != null) {
            g(HiAnalyticsConstant.HMS_SDK_BASE_ACTIVITY_STARTED);
        }
    }

    private void k() {
        g(HiAnalyticsConstant.HMS_SDK_BASE_START_CORE_ACTIVITY);
    }

    private void l() {
        if (n() == null) {
            HMSLog.e("ForegroundBusDelegate", "checkMinVersion failed, activity must not be null.");
            c(0, "checkMinVersion failed, activity must not be null.");
        } else if (this.f21777f) {
            o();
        } else if (!Util.isAvailableLibExist(n().getApplicationContext())) {
            if (HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(n().getApplicationContext(), this.f21774c.getApkVersion()) != 0) {
                HMSLog.e("ForegroundBusDelegate", "checkMinVersion failed, and no available lib exists.");
                c(0, "apk version is invalid");
                return;
            }
            o();
        } else {
            b bVar = new b();
            AvailableAdapter availableAdapter = new AvailableAdapter(this.f21774c.getApkVersion());
            int isHuaweiMobileServicesAvailable = availableAdapter.isHuaweiMobileServicesAvailable(n());
            if (isHuaweiMobileServicesAvailable == 0) {
                bVar.onComplete(isHuaweiMobileServicesAvailable);
            } else if (availableAdapter.isUserResolvableError(isHuaweiMobileServicesAvailable)) {
                d(n(), availableAdapter, bVar);
            } else {
                bVar.onComplete(isHuaweiMobileServicesAvailable);
            }
        }
    }

    private void m() {
        Activity n10 = n();
        if (n10 != null && !n10.isFinishing()) {
            n10.finish();
        }
    }

    private Activity n() {
        WeakReference<Activity> weakReference = this.f21776e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        String hMSPackageNameForMultiService;
        HMSLog.i("ForegroundBusDelegate", "startApkHubActivity");
        Activity n10 = n();
        if (n10 == null) {
            HMSLog.e("ForegroundBusDelegate", "startApkHubActivity but activity is null");
            return;
        }
        if (this.f21777f) {
            hMSPackageNameForMultiService = n10.getPackageName();
        } else {
            hMSPackageNameForMultiService = HMSPackageManager.getInstance(n10.getApplicationContext()).getHMSPackageNameForMultiService();
        }
        if (TextUtils.isEmpty(hMSPackageNameForMultiService)) {
            HMSLog.e("ForegroundBusDelegate", "hmsPackageName is null, Service is invalid.");
            c(0, "hmsPackageName is null, Service is invalid.");
            return;
        }
        Intent intent = new Intent(this.f21774c.getAction());
        intent.putExtra(HMS_FOREGROUND_REQ_BODY, this.f21773b);
        try {
            intent.setPackage(hMSPackageNameForMultiService);
        } catch (IllegalArgumentException unused) {
            HMSLog.e("ForegroundBusDelegate", "IllegalArgumentException when startApkHubActivity intent.setPackage");
        }
        intent.putExtra("intent.extra.isfullscreen", UIUtil.isActivityFullscreen(n10));
        intent.setClassName(hMSPackageNameForMultiService, "com.huawei.hms.core.activity.UiJumpActivity");
        intent.putExtra(HMS_FOREGROUND_REQ_HEADER, this.f21772a.toJson());
        intent.putExtra("intent.extra.hms.core.DELEGATE_NAME", "com.huawei.hms.core.activity.ForegroundBus");
        try {
            i();
            n10.startActivityForResult(intent, 431057);
        } catch (ActivityNotFoundException e10) {
            HMSLog.e("ForegroundBusDelegate", "Launch sign in Intent failed. hms is probably being updated：", e10);
            c(0, "launch bus intent failed");
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 431057;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        if (activity == null) {
            HMSLog.e("ForegroundBusDelegate", "activity is null");
            c(0, "activity is null");
        } else if (activity.isFinishing()) {
            HMSLog.e("ForegroundBusDelegate", "activity is finishing");
            c(0, "activity is finishing");
        } else {
            this.f21776e = new WeakReference<>(activity);
            try {
                Intent intent = activity.getIntent();
                if (intent == null) {
                    c(0, "intent is invalid");
                    return;
                }
                String stringExtra = intent.getStringExtra(HMS_FOREGROUND_REQ_HEADER);
                RequestHeader requestHeader = new RequestHeader();
                this.f21772a = requestHeader;
                if (!requestHeader.fromJson(stringExtra)) {
                    c(0, "header is invalid");
                    return;
                }
                this.f21773b = intent.getStringExtra(HMS_FOREGROUND_REQ_BODY);
                ForegroundInnerHeader foregroundInnerHeader = this.f21774c;
                if (foregroundInnerHeader == null) {
                    c(0, "inner header is invalid");
                    return;
                }
                foregroundInnerHeader.fromJson(intent.getStringExtra(HMS_FOREGROUND_REQ_INNER));
                if (TextUtils.isEmpty(this.f21772a.getApiName())) {
                    c(0, "action is invalid");
                    return;
                }
                a();
                if (!TextUtils.isEmpty(intent.getStringExtra(INNER_PKG_NAME))) {
                    HMSLog.i("ForegroundBusDelegate", "isUseInnerHms: true");
                    this.f21777f = true;
                }
                l();
            } catch (Throwable th2) {
                HMSLog.e("ForegroundBusDelegate", "ForegroundBusDelegate getStringExtra error:" + th2.getMessage());
                c(0, "ForegroundBusDelegate getStringExtra error:" + th2.getMessage());
            }
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        j();
        this.f21776e = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        String str;
        if (i10 == 431057) {
            if (intent != null && intent.hasExtra(HMS_FOREGROUND_RESP_HEADER)) {
                try {
                    str = intent.getStringExtra(HMS_FOREGROUND_RESP_HEADER);
                } catch (Throwable unused) {
                    HMSLog.w("ForegroundBusDelegate", "exception occur, HMS_FOREGROUND_RESP_HEADER get failed.");
                    str = "";
                }
                ResponseHeader responseHeader = new ResponseHeader();
                this.f21775d = responseHeader;
                JsonUtil.jsonToEntity(str, responseHeader);
            }
            k();
            BusResponseCallback h10 = h(this.f21774c.getResponseCallbackKey());
            if (h10 == null) {
                b(i11, intent);
                return true;
            }
            BusResponseResult succeedReturn = h10.succeedReturn(this.f21776e.get(), i11, intent);
            if (succeedReturn == null) {
                b(i11, intent);
                return true;
            }
            b(succeedReturn.getCode(), succeedReturn.getIntent());
            return true;
        }
        return false;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
    }
}
