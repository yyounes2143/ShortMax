package com.huawei.hms.adapter;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.ApkResolutionFailedManager;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.adapter.ui.BaseResolutionAdapter;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.ResponseWrap;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.framework.common.ExceptionCode;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.IntentUtil;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResolutionFlagUtil;
import com.huawei.hms.utils.Util;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.lang.ref.WeakReference;
import java.sql.Timestamp;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<ApiClient> f21801a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f21802b;

    /* renamed from: c  reason: collision with root package name */
    private BaseCallBack f21803c;

    /* renamed from: d  reason: collision with root package name */
    private String f21804d;

    /* renamed from: e  reason: collision with root package name */
    private String f21805e;

    /* renamed from: f  reason: collision with root package name */
    private Parcelable f21806f;

    /* renamed from: g  reason: collision with root package name */
    private BaseCallBack f21807g;

    /* renamed from: h  reason: collision with root package name */
    private String f21808h;

    /* renamed from: i  reason: collision with root package name */
    private Context f21809i;

    /* renamed from: j  reason: collision with root package name */
    private RequestHeader f21810j = new RequestHeader();

    /* renamed from: k  reason: collision with root package name */
    private ResponseHeader f21811k = new ResponseHeader();

    /* renamed from: l  reason: collision with root package name */
    private SystemObserver f21812l;

    /* loaded from: classes5.dex */
    public interface BaseCallBack {
        void onComplete(String str, String str2, Parcelable parcelable);

        void onError(String str);
    }

    /* loaded from: classes5.dex */
    public class BaseRequestResultCallback implements ResultCallback<ResolveResult<CoreBaseResponse>> {

        /* renamed from: a  reason: collision with root package name */
        private AtomicBoolean f21816a = new AtomicBoolean(true);

        public BaseRequestResultCallback() {
        }

        private void a(final BaseCallBack baseCallBack, CoreBaseResponse coreBaseResponse) {
            if (BaseAdapter.this.U()) {
                HMSLog.i("BaseAdapter", "HMS Core exists, need to refresh bind info");
                BaseAdapter.this.m(baseCallBack);
            } else if (Util.isAvailableLibExist(BaseAdapter.this.f21809i)) {
                Activity H = BaseAdapter.this.H();
                if (H != null && !H.isFinishing()) {
                    HMSLog.i("BaseAdapter", "start handleSolutionForHMS");
                    AvailableAdapter availableAdapter = new AvailableAdapter(ExceptionCode.CRASH_EXCEPTION);
                    availableAdapter.setCalledBySolutionInstallHms(true);
                    availableAdapter.startResolution(H, new AvailableAdapter.AvailableCallBack() { // from class: com.huawei.hms.adapter.BaseAdapter.BaseRequestResultCallback.1
                        @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
                        public void onComplete(int i10) {
                            HMSLog.i("BaseAdapter", "complete handleSolutionForHMS, result: " + i10);
                            if (i10 == 0) {
                                BaseAdapter.this.m(baseCallBack);
                                return;
                            }
                            BaseAdapter baseAdapter = BaseAdapter.this;
                            baseCallBack.onError(baseAdapter.c(i10, baseAdapter.f(i10)).toJson());
                        }
                    });
                    return;
                }
                HMSLog.e("BaseAdapter", "activity is null");
                try {
                    if (BaseAdapter.this.f21809i != null && AvailableUtil.isInstallerLibExist(BaseAdapter.this.f21809i)) {
                        HMSLog.i("BaseAdapter", "pass installHMS intent");
                        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(BaseAdapter.this.f21809i, UpdateAdapter.class.getName());
                        intentStartBridgeActivity.putExtra(CommonCode.MapKey.UPDATE_VERSION, ExceptionCode.CRASH_EXCEPTION);
                        intentStartBridgeActivity.putExtra("installHMS", "installHMS");
                        coreBaseResponse.setIntent(intentStartBridgeActivity);
                        BaseAdapter.this.n(baseCallBack, coreBaseResponse);
                    } else {
                        HMSLog.i("BaseAdapter", "pass ACTIVITY_NULL error");
                        BaseAdapter baseAdapter = BaseAdapter.this;
                        baseCallBack.onError(baseAdapter.c(-3, baseAdapter.f(-3)).toJson());
                    }
                } catch (RuntimeException unused) {
                    HMSLog.e("BaseAdapter", "handleSolutionForHms pass result failed");
                }
            } else {
                HMSLog.i("BaseAdapter", "handleSolutionForHms: no Available lib exist");
                baseCallBack.onError(BaseAdapter.this.A(-9));
            }
        }

        private void b(String str, BaseCallBack baseCallBack, CoreBaseResponse coreBaseResponse, int i10) {
            if (CommonCode.Resolution.HAS_RESOLUTION_FROM_APK.equals(str)) {
                Activity H = BaseAdapter.this.H();
                HMSLog.i("BaseAdapter", "activity is: " + H);
                if (H != null && !H.isFinishing()) {
                    PendingIntent pendingIntent = coreBaseResponse.getPendingIntent();
                    if (pendingIntent != null) {
                        if (Util.isAvailableLibExist(BaseAdapter.this.f21809i)) {
                            BaseAdapter.this.h(H, pendingIntent, coreBaseResponse);
                            return;
                        } else {
                            baseCallBack.onError(BaseAdapter.this.A(-9));
                            return;
                        }
                    }
                    Intent intent = coreBaseResponse.getIntent();
                    if (intent != null) {
                        if (Util.isAvailableLibExist(BaseAdapter.this.f21809i)) {
                            BaseAdapter.this.h(H, intent, coreBaseResponse);
                            return;
                        } else {
                            baseCallBack.onError(BaseAdapter.this.A(-9));
                            return;
                        }
                    } else if (i10 == 2) {
                        BaseAdapter baseAdapter = BaseAdapter.this;
                        baseCallBack.onError(baseAdapter.A(baseAdapter.f21811k.getErrorCode()));
                        return;
                    } else {
                        HMSLog.e("BaseAdapter", "hasResolution is true but NO_SOLUTION");
                        baseCallBack.onError(BaseAdapter.this.A(-4));
                        return;
                    }
                }
                HMSLog.e("BaseAdapter", "activity null");
                BaseAdapter.this.n(baseCallBack, coreBaseResponse);
            } else if (!"installHMS".equals(str)) {
                BaseAdapter.this.n(baseCallBack, coreBaseResponse);
            } else {
                HMSLog.i("BaseAdapter", "has resolutin: installHMS");
                a(baseCallBack, coreBaseResponse);
            }
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        public void onResult(ResolveResult<CoreBaseResponse> resolveResult) {
            HMSLog.i("BaseAdapter", "BaseRequestResultCallback onResult");
            BaseCallBack y10 = BaseAdapter.this.y();
            if (y10 == null) {
                HMSLog.e("BaseAdapter", "onResult baseCallBack null");
            } else if (resolveResult == null) {
                HMSLog.e("BaseAdapter", "result null");
                y10.onError(BaseAdapter.this.A(-1));
            } else {
                CoreBaseResponse value = resolveResult.getValue();
                if (value == null) {
                    HMSLog.e("BaseAdapter", "response null");
                    y10.onError(BaseAdapter.this.A(-1));
                } else if (!TextUtils.isEmpty(value.getJsonHeader())) {
                    JsonUtil.jsonToEntity(value.getJsonHeader(), BaseAdapter.this.f21811k);
                    if (this.f21816a.compareAndSet(true, false)) {
                        BaseAdapter baseAdapter = BaseAdapter.this;
                        baseAdapter.j(baseAdapter.f21809i, BaseAdapter.this.f21811k);
                    }
                    String resolution = BaseAdapter.this.f21811k.getResolution();
                    int statusCode = BaseAdapter.this.f21811k.getStatusCode();
                    HMSLog.i("BaseAdapter", "api is: " + BaseAdapter.this.f21811k.getApiName() + ", resolution: " + resolution + ", status_code: " + statusCode);
                    b(resolution, y10, value, statusCode);
                } else {
                    HMSLog.e("BaseAdapter", "jsonHeader null");
                    y10.onError(BaseAdapter.this.A(-1));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a extends PendingResultImpl<ResolveResult<CoreBaseResponse>, CoreBaseResponse> {
        public a(ApiClient apiClient, String str, e eVar) {
            super(apiClient, str, eVar);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        /* renamed from: a */
        public ResolveResult<CoreBaseResponse> onComplete(CoreBaseResponse coreBaseResponse) {
            ResolveResult<CoreBaseResponse> resolveResult = new ResolveResult<>(coreBaseResponse);
            resolveResult.setStatus(Status.SUCCESS);
            return resolveResult;
        }
    }

    public BaseAdapter(ApiClient apiClient) {
        this.f21801a = new WeakReference<>(apiClient);
        if (apiClient == null) {
            HMSLog.w("BaseAdapter", "BaseAdapter constructor client is null");
            return;
        }
        this.f21809i = apiClient.getContext().getApplicationContext();
        HMSLog.i("BaseAdapter", "In constructor, WeakReference is " + this.f21801a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A(int i10) {
        J(i10);
        return this.f21811k.toJson();
    }

    private void C(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    private void D(BaseCallBack baseCallBack) {
        this.f21807g = baseCallBack;
    }

    private void E(String str) {
        this.f21805e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean F(Intent intent, BaseCallBack baseCallBack) {
        if (!intent.hasExtra(KpmsConstant.KIT_UPDATE_RESULT)) {
            return false;
        }
        int intExtra = intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0);
        HMSLog.i("BaseAdapter", "kit_update_result is " + intExtra);
        if (intExtra == 1) {
            HMSLog.e("BaseAdapter", "kit update success,replay request");
            V();
        } else {
            HMSLog.e("BaseAdapter", "kit update failed");
            baseCallBack.onError(c(-10, f(intExtra)).toJson());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity H() {
        if (this.f21802b == null) {
            HMSLog.i("BaseAdapter", "activityWeakReference is " + this.f21802b);
            return null;
        }
        ApiClient apiClient = this.f21801a.get();
        if (apiClient == null) {
            HMSLog.i("BaseAdapter", "tmpApi is null");
            return null;
        }
        HMSLog.i("BaseAdapter", "activityWeakReference has " + this.f21802b.get());
        return Util.getActiveActivity(this.f21802b.get(), apiClient.getContext());
    }

    private void J(int i10) {
        this.f21811k.setTransactionId(this.f21810j.getTransactionId());
        this.f21811k.setAppID(this.f21810j.getAppID());
        this.f21811k.setApiName(this.f21810j.getApiName());
        this.f21811k.setSrvName(this.f21810j.getSrvName());
        this.f21811k.setPkgName(this.f21810j.getPkgName());
        this.f21811k.setStatusCode(1);
        this.f21811k.setErrorCode(i10);
        this.f21811k.setErrorReason("Core error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(Intent intent, BaseCallBack baseCallBack) {
        long j10;
        String stringExtra = intent.getStringExtra(CommonCode.MapKey.JSON_HEADER);
        String stringExtra2 = intent.getStringExtra(CommonCode.MapKey.JSON_BODY);
        Object infoFromJsonobject = JsonUtil.getInfoFromJsonobject(stringExtra, "status_code");
        Object infoFromJsonobject2 = JsonUtil.getInfoFromJsonobject(stringExtra, GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE);
        if (intent.hasExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI)) {
            Object infoFromJsonobject3 = JsonUtil.getInfoFromJsonobject(intent.getStringExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI), "uiDuration");
            if (infoFromJsonobject3 instanceof Long) {
                j10 = ((Long) infoFromJsonobject3).longValue();
                if (!(infoFromJsonobject instanceof Integer) && (infoFromJsonobject2 instanceof Integer)) {
                    int intValue = ((Integer) infoFromJsonobject).intValue();
                    A(((Integer) infoFromJsonobject2).intValue());
                    this.f21811k.setStatusCode(intValue);
                    k(this.f21809i, this.f21811k, j10);
                } else {
                    A(-8);
                    k(this.f21809i, this.f21811k, j10);
                }
                baseCallBack.onComplete(stringExtra, stringExtra2, null);
            }
        }
        j10 = 0;
        if (!(infoFromJsonobject instanceof Integer)) {
        }
        A(-8);
        k(this.f21809i, this.f21811k, j10);
        baseCallBack.onComplete(stringExtra, stringExtra2, null);
    }

    private String N() {
        return this.f21804d;
    }

    private String P() {
        return this.f21805e;
    }

    private Parcelable R() {
        return this.f21806f;
    }

    private void S() {
        this.f21812l = new SystemObserver() { // from class: com.huawei.hms.adapter.BaseAdapter.2
            @Override // com.huawei.hms.adapter.sysobs.SystemObserver
            public boolean onNoticeResult(int i10) {
                return false;
            }

            @Override // com.huawei.hms.adapter.sysobs.SystemObserver
            public boolean onSolutionResult(Intent intent, String str) {
                if (TextUtils.isEmpty(str)) {
                    HMSLog.e("BaseAdapter", "onSolutionResult but id is null");
                    BaseCallBack y10 = BaseAdapter.this.y();
                    if (y10 == null) {
                        HMSLog.e("BaseAdapter", "onSolutionResult baseCallBack null");
                        return true;
                    }
                    y10.onError(BaseAdapter.this.A(-6));
                    return true;
                } else if (str.equals(BaseAdapter.this.f21808h)) {
                    HMSLog.i("BaseAdapter", "onSolutionResult + id is :" + str);
                    BaseCallBack y11 = BaseAdapter.this.y();
                    if (y11 == null) {
                        HMSLog.e("BaseAdapter", "onResult baseCallBack null");
                        return true;
                    } else if (intent == null) {
                        HMSLog.e("BaseAdapter", "onSolutionResult but data is null");
                        String A = BaseAdapter.this.A(-7);
                        BaseAdapter baseAdapter = BaseAdapter.this;
                        baseAdapter.k(baseAdapter.f21809i, BaseAdapter.this.f21811k, 0L);
                        y11.onError(A);
                        return true;
                    } else if (BaseAdapter.this.F(intent, y11) || BaseAdapter.this.w(intent, y11)) {
                        return true;
                    } else {
                        HMSLog.e("BaseAdapter", "onComplete for on activity result");
                        BaseAdapter.this.K(intent, y11);
                        return true;
                    }
                } else {
                    return false;
                }
            }

            @Override // com.huawei.hms.adapter.sysobs.SystemObserver
            public boolean onUpdateResult(int i10) {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U() {
        if (new PackageManagerHelper(this.f21809i).getPackageStates(HMSPackageManager.getInstance(this.f21809i).getHMSPackageName()) == PackageManagerHelper.PackageStates.ENABLED) {
            return true;
        }
        return false;
    }

    private void V() {
        if (this.f21804d != null && this.f21807g != null) {
            this.f21811k = null;
            this.f21811k = new ResponseHeader();
            baseRequest(N(), P(), R(), a());
        }
    }

    private void W() {
        if (this.f21809i == null) {
            HMSLog.e("BaseAdapter", "sendBroadcastAfterResolutionHms, context is null");
            return;
        }
        Intent intent = new Intent("com.huawei.hms.core.action.SESSION_INVALID");
        try {
            intent.setPackage(this.f21809i.getPackageName());
            this.f21809i.sendBroadcast(intent);
        } catch (IllegalArgumentException unused) {
            HMSLog.e("BaseAdapter", "IllegalArgumentException when sendBroadcastAfterResolutionHms intent.setPackage");
        }
    }

    private BaseCallBack a() {
        return this.f21807g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResponseWrap c(int i10, String str) {
        J(i10);
        ResponseWrap responseWrap = new ResponseWrap(this.f21811k);
        responseWrap.setBody(str);
        return responseWrap;
    }

    private PendingResult<ResolveResult<CoreBaseResponse>> e(ApiClient apiClient, String str, CoreBaseRequest coreBaseRequest) {
        return new a(apiClient, str, coreBaseRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i10);
        } catch (JSONException e10) {
            HMSLog.e("BaseAdapter", "buildBodyStr failed: " + e10.getMessage());
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(Activity activity, Parcelable parcelable, CoreBaseResponse coreBaseResponse) {
        HMSLog.i("BaseAdapter", "startResolution");
        RequestHeader requestHeader = this.f21810j;
        if (requestHeader != null) {
            C(this.f21809i, requestHeader);
        }
        if (this.f21812l == null) {
            S();
        }
        SystemManager.getSystemNotifier().registerObserver(this.f21812l);
        if (Build.VERSION.SDK_INT >= 29) {
            t(coreBaseResponse);
        }
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, BaseResolutionAdapter.class.getName());
        Bundle bundle = new Bundle();
        bundle.putParcelable("resolution", parcelable);
        intentStartBridgeActivity.putExtras(bundle);
        intentStartBridgeActivity.putExtra("transaction_id", this.f21808h);
        long time = new Timestamp(System.currentTimeMillis()).getTime();
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.RESOLUTION_FLAG, time);
        ResolutionFlagUtil.getInstance().saveResolutionFlag(this.f21808h, time);
        activity.startActivity(intentStartBridgeActivity);
    }

    private void i(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Context context, ResponseHeader responseHeader) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.f21810j.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Context context, ResponseHeader responseHeader, long j10) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_WAITTIME, String.valueOf(j10));
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.f21810j.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    private void l(Parcelable parcelable) {
        this.f21806f = parcelable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(BaseCallBack baseCallBack) {
        HMSPackageManager.getInstance(this.f21809i).resetMultiServiceState();
        baseCallBack.onError(c(11, f(11)).toJson());
        W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(BaseCallBack baseCallBack, CoreBaseResponse coreBaseResponse) {
        HMSLog.i("BaseAdapter", "baseCallBack.onComplete");
        PendingIntent pendingIntent = coreBaseResponse.getPendingIntent();
        if (pendingIntent != null) {
            baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), pendingIntent);
            return;
        }
        Intent modifyIntentBehaviorsSafe = IntentUtil.modifyIntentBehaviorsSafe(coreBaseResponse.getIntent());
        if (modifyIntentBehaviorsSafe != null) {
            baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), modifyIntentBehaviorsSafe);
        } else {
            baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), null);
        }
    }

    private void t(final CoreBaseResponse coreBaseResponse) {
        HMSLog.i("BaseAdapter", "postResolutionTimeoutHandle");
        ApkResolutionFailedManager.getInstance().postTask(this.f21808h, new Runnable() { // from class: com.huawei.hms.adapter.BaseAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                HMSLog.i("BaseAdapter", "postResolutionTimeoutHandle handle");
                SystemManager.getSystemNotifier().unRegisterObserver(BaseAdapter.this.f21812l);
                ApkResolutionFailedManager.getInstance().removeValueOnly(BaseAdapter.this.f21808h);
                BaseCallBack y10 = BaseAdapter.this.y();
                if (y10 != null) {
                    BaseAdapter.this.n(y10, coreBaseResponse);
                } else {
                    HMSLog.e("BaseAdapter", "timeoutRunnable callBack is null");
                }
            }
        });
    }

    private void u(String str) {
        this.f21804d = str;
    }

    private void v(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        u(str);
        E(str2);
        l(parcelable);
        D(baseCallBack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w(Intent intent, BaseCallBack baseCallBack) {
        if (intent.hasExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT)) {
            int intExtra = intent.getIntExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT, 1001);
            if (intExtra == 1001) {
                HMSLog.i("BaseAdapter", "privacy_statement_confirm_result agreed: " + intExtra + ", replay request");
                V();
                return true;
            }
            HMSLog.i("BaseAdapter", "privacy_statement_confirm_result rejected: " + intExtra);
            baseCallBack.onError(c(CommonCode.BusInterceptor.PRIVACY_CNCEL_ERROR_CODE, f(CommonCode.BusInterceptor.PRIVACY_CNCEL_ERROR_CODE)).toJson());
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseCallBack y() {
        BaseCallBack baseCallBack = this.f21803c;
        if (baseCallBack == null) {
            HMSLog.e("BaseAdapter", "callback null");
            return null;
        }
        return baseCallBack;
    }

    public void baseRequest(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        v(str, str2, parcelable, baseCallBack);
        if (this.f21801a == null) {
            HMSLog.e("BaseAdapter", "client is null");
            baseCallBack.onError(A(-2));
            return;
        }
        this.f21803c = baseCallBack;
        JsonUtil.jsonToEntity(str, this.f21810j);
        CoreBaseRequest coreBaseRequest = new CoreBaseRequest();
        coreBaseRequest.setJsonObject(str2);
        coreBaseRequest.setJsonHeader(str);
        coreBaseRequest.setParcelable(parcelable);
        String apiName = this.f21810j.getApiName();
        if (TextUtils.isEmpty(apiName)) {
            HMSLog.e("BaseAdapter", "get uri null");
            baseCallBack.onError(A(-5));
            return;
        }
        String transactionId = this.f21810j.getTransactionId();
        this.f21808h = transactionId;
        if (TextUtils.isEmpty(transactionId)) {
            HMSLog.e("BaseAdapter", "get transactionId null");
            baseCallBack.onError(A(-6));
            return;
        }
        HMSLog.i("BaseAdapter", "in baseRequest + uri is :" + apiName + ", transactionId is : " + this.f21808h);
        i(this.f21809i, this.f21810j);
        e(this.f21801a.get(), apiName, coreBaseRequest).setResultCallback(new BaseRequestResultCallback());
    }

    public BaseAdapter(ApiClient apiClient, Activity activity) {
        this.f21801a = new WeakReference<>(apiClient);
        this.f21802b = new WeakReference<>(activity);
        if (activity == null) {
            HMSLog.w("BaseAdapter", "BaseAdapter constructor activity is null");
            return;
        }
        this.f21809i = activity.getApplicationContext();
        HMSLog.i("BaseAdapter", "In constructor, activityWeakReference is " + this.f21802b + ", activity is " + this.f21802b.get());
    }
}
