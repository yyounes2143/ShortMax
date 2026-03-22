package com.huawei.hms.common;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.hms.adapter.AvailableUtil;
import com.huawei.hms.adapter.BinderAdapter;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.Api.ApiOptions;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.BindResolveClients;
import com.huawei.hms.common.internal.ClientSettings;
import com.huawei.hms.common.internal.HmsClient;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.RequestManager;
import com.huawei.hms.common.internal.ResolveClientBean;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.common.internal.TaskApiCallWrapper;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.core.aidl.d;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsInnerClient;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSBIInitializer;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.Util;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import ua.f;
import ua.g;
/* loaded from: classes5.dex */
public class HuaweiApi<TOption extends Api.ApiOptions> {

    /* renamed from: a  reason: collision with root package name */
    private Context f21953a;

    /* renamed from: b  reason: collision with root package name */
    private TOption f21954b;

    /* renamed from: c  reason: collision with root package name */
    private Context f21955c;

    /* renamed from: d  reason: collision with root package name */
    private AbstractClientBuilder<?, TOption> f21956d;

    /* renamed from: e  reason: collision with root package name */
    private String f21957e;

    /* renamed from: f  reason: collision with root package name */
    private String f21958f;

    /* renamed from: g  reason: collision with root package name */
    private SubAppInfo f21959g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<Activity> f21960h;

    /* renamed from: i  reason: collision with root package name */
    private int f21961i;

    /* renamed from: j  reason: collision with root package name */
    private int f21962j = 1;

    /* renamed from: k  reason: collision with root package name */
    private boolean f21963k = false;

    /* renamed from: l  reason: collision with root package name */
    private String f21964l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f21965m;

    /* renamed from: n  reason: collision with root package name */
    private RequestManager f21966n;

    /* loaded from: classes5.dex */
    public static class RequestHandler<OptionsT extends Api.ApiOptions> implements BaseHmsClient.ConnectionCallbacks, BaseHmsClient.OnConnectionFailedListener {

        /* renamed from: b  reason: collision with root package name */
        private final AnyClient f21971b;

        /* renamed from: d  reason: collision with root package name */
        private final HuaweiApi<OptionsT> f21973d;

        /* renamed from: e  reason: collision with root package name */
        private ResolveClientBean f21974e;
        public final Queue<TaskApiCallbackWrapper> callbackWaitQueue = new LinkedList();

        /* renamed from: a  reason: collision with root package name */
        private final Queue<TaskApiCallbackWrapper> f21970a = new LinkedList();

        /* renamed from: c  reason: collision with root package name */
        private ConnectionResult f21972c = null;

        RequestHandler(HuaweiApi<OptionsT> huaweiApi) {
            this.f21973d = huaweiApi;
            this.f21971b = huaweiApi.getClient(RequestManager.getHandler().getLooper(), this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
            if (r9 != 10) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String b(com.huawei.hms.api.ConnectionResult r9) {
            /*
                r8 = this;
                com.huawei.hms.common.HuaweiApi<OptionsT extends com.huawei.hms.api.Api$ApiOptions> r0 = r8.f21973d
                android.content.Context r0 = r0.getContext()
                boolean r0 = com.huawei.hms.utils.Util.isAvailableLibExist(r0)
                java.lang.String r1 = "get update result, but has other error codes"
                java.lang.String r2 = "internal error"
                java.lang.String r3 = "application configuration error, please developer check configuration"
                java.lang.String r4 = "unknown errorReason"
                r5 = 10
                r6 = 8
                r7 = -1
                if (r0 == 0) goto L49
                int r9 = r9.getErrorCode()
                if (r9 == r7) goto L54
                r0 = 3
                if (r9 == r0) goto L46
                if (r9 == r6) goto L44
                if (r9 == r5) goto L42
                r0 = 13
                if (r9 == r0) goto L3f
                r0 = 21
                if (r9 == r0) goto L3c
                switch(r9) {
                    case 25: goto L39;
                    case 26: goto L36;
                    case 27: goto L33;
                    default: goto L31;
                }
            L31:
                r1 = r4
                goto L54
            L33:
                java.lang.String r1 = "there is already an update popup at the front desk, but it hasn't been clicked or it is not effective for a while"
                goto L54
            L36:
                java.lang.String r1 = "update failed, because no activity incoming, can't pop update page"
                goto L54
            L39:
                java.lang.String r1 = "failed to get update result"
                goto L54
            L3c:
                java.lang.String r1 = "device is too old to be support"
                goto L54
            L3f:
                java.lang.String r1 = "update cancelled"
                goto L54
            L42:
                r1 = r3
                goto L54
            L44:
                r1 = r2
                goto L54
            L46:
                java.lang.String r1 = "HuaWei Mobile Service is disabled"
                goto L54
            L49:
                int r9 = r9.getErrorCode()
                if (r9 == r7) goto L54
                if (r9 == r6) goto L44
                if (r9 == r5) goto L42
                goto L31
            L54:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.HuaweiApi.RequestHandler.b(com.huawei.hms.api.ConnectionResult):java.lang.String");
        }

        private String c(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return TransactionIdCreater.getId(this.f21973d.getAppID(), str2);
            }
            return str;
        }

        private void g(TaskApiCallbackWrapper taskApiCallbackWrapper) {
            TaskApiCallWrapper a10 = taskApiCallbackWrapper.a();
            ResponseHeader responseHeader = new ResponseHeader(1, CommonCode.ErrorCode.CLIENT_API_INVALID, "Connection Suspended");
            responseHeader.setTransactionId(a10.getTaskApiCall().getTransactionId());
            a10.getTaskApiCall().onResponse(this.f21971b, responseHeader, null, a10.getTaskCompletionSource());
        }

        private TaskApiCallbackWrapper i(final TaskApiCallWrapper taskApiCallWrapper) {
            return new TaskApiCallbackWrapper(taskApiCallWrapper, new AnyClient.CallBack() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.1

                /* renamed from: a  reason: collision with root package name */
                private AtomicBoolean f21975a = new AtomicBoolean(true);

                @Override // com.huawei.hms.common.internal.AnyClient.CallBack
                public void onCallback(e eVar, String str) {
                    if (!(eVar instanceof ResponseHeader)) {
                        HMSLog.e("HuaweiApi", "header is not instance of ResponseHeader");
                        return;
                    }
                    ResponseHeader responseHeader = (ResponseHeader) eVar;
                    if (responseHeader.getErrorCode() == 11) {
                        RequestHandler.this.d();
                        HMSLog.i("HuaweiApi", "unbind service");
                    }
                    if (!TextUtils.isEmpty(responseHeader.getResolution())) {
                        HMSLog.e("HuaweiApi", "Response has resolution: " + responseHeader.getResolution());
                    }
                    if (this.f21975a.compareAndSet(true, false)) {
                        HiAnalyticsInnerClient.reportEntryExit(RequestHandler.this.f21973d.getContext(), responseHeader, String.valueOf(RequestHandler.this.f21973d.getKitSdkVersion()));
                    }
                    taskApiCallWrapper.getTaskApiCall().onResponse(RequestHandler.this.f21971b, responseHeader, str, taskApiCallWrapper.getTaskCompletionSource());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            this.f21972c = null;
            this.f21970a.clear();
            for (TaskApiCallbackWrapper taskApiCallbackWrapper : this.callbackWaitQueue) {
                postMessage(taskApiCallbackWrapper);
            }
            this.callbackWaitQueue.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(ConnectionResult connectionResult) {
            this.f21972c = connectionResult;
            boolean z10 = true;
            for (TaskApiCallbackWrapper taskApiCallbackWrapper : this.callbackWaitQueue) {
                TaskApiCallWrapper a10 = taskApiCallbackWrapper.a();
                ResponseHeader responseHeader = new ResponseHeader(1, CommonCode.ErrorCode.CLIENT_API_INVALID, "Connection Failed:" + b(connectionResult) + "(" + connectionResult.getErrorCode() + ")");
                responseHeader.setTransactionId(a10.getTaskApiCall().getTransactionId());
                HiAnalyticsInnerClient.reportEntryExit(this.f21973d.getContext(), responseHeader, String.valueOf(this.f21973d.getKitSdkVersion()));
                if (this.f21972c.getResolution() != null && z10) {
                    responseHeader.setParcelable(this.f21972c.getResolution());
                    if (Util.isAvailableLibExist(this.f21973d.getContext()) && this.f21972c.getErrorCode() == 26) {
                        responseHeader.setResolution(CommonCode.Resolution.HAS_RESOLUTION);
                    }
                    z10 = false;
                }
                int errorCode = this.f21972c.getErrorCode();
                if (errorCode == 30 || errorCode == 31) {
                    responseHeader.setErrorCode(errorCode);
                }
                a10.getTaskApiCall().onResponse(this.f21971b, responseHeader, null, a10.getTaskCompletionSource());
            }
            this.callbackWaitQueue.clear();
            this.f21970a.clear();
            this.f21972c = null;
            this.f21971b.disconnect();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n() {
            HMSLog.i("HuaweiApi", "wait queue size = " + this.callbackWaitQueue.size());
            HMSLog.i("HuaweiApi", "run queue size = " + this.f21970a.size());
            for (TaskApiCallbackWrapper taskApiCallbackWrapper : this.callbackWaitQueue) {
                g(taskApiCallbackWrapper);
            }
            for (TaskApiCallbackWrapper taskApiCallbackWrapper2 : this.f21970a) {
                g(taskApiCallbackWrapper2);
            }
            this.callbackWaitQueue.clear();
            this.f21970a.clear();
            this.f21972c = null;
            this.f21971b.disconnect();
        }

        void d() {
            this.f21971b.disconnect();
        }

        synchronized void e(int i10, TaskApiCallbackWrapper taskApiCallbackWrapper) {
            if (this.f21971b.isConnected()) {
                HMSLog.d("HuaweiApi", "client is connected");
            } else if (this.f21971b.isConnecting()) {
                HMSLog.d("HuaweiApi", "client is isConnecting");
            } else {
                if (this.f21973d.getActivity() != null) {
                    if (this.f21974e == null) {
                        this.f21974e = new ResolveClientBean(this.f21971b, i10);
                    }
                    if (BindResolveClients.getInstance().isClientRegistered(this.f21974e)) {
                        HMSLog.i("HuaweiApi", "mResolveClientBean has already register, return!");
                        return;
                    }
                    BindResolveClients.getInstance().register(this.f21974e);
                }
                this.f21971b.connect(i10);
            }
        }

        public AnyClient getClient() {
            return this.f21971b;
        }

        void h(TaskApiCallWrapper taskApiCallWrapper) {
            HMSLog.i("HuaweiApi", "sendRequest");
            TaskApiCallbackWrapper i10 = i(taskApiCallWrapper);
            if (HMSPackageManager.getInstance(this.f21973d.getContext()).isUpdateHmsForThirdPartyDevice()) {
                this.f21971b.disconnect();
            }
            int hmsVersionCode = HMSPackageManager.getInstance(((HuaweiApi) this.f21973d).f21953a).getHmsVersionCode();
            if (hmsVersionCode < 40000000 && hmsVersionCode > 0 && this.f21971b.isConnected() && !((HuaweiApi) this.f21973d).f21965m && ((BaseHmsClient) this.f21971b).getAdapter().getServiceAction().equals("com.huawei.hms.core.aidlservice")) {
                int requestHmsVersionCode = this.f21971b.getRequestHmsVersionCode();
                if (requestHmsVersionCode <= taskApiCallWrapper.getTaskApiCall().getMinApkVersion()) {
                    requestHmsVersionCode = taskApiCallWrapper.getTaskApiCall().getMinApkVersion();
                }
                if (requestHmsVersionCode > hmsVersionCode) {
                    this.f21971b.disconnect();
                }
            }
            if (this.f21971b.isConnected()) {
                HMSLog.i("HuaweiApi", "isConnected:true.");
                BinderAdapter adapter = ((BaseHmsClient) this.f21971b).getAdapter();
                adapter.updateDelayTask();
                ((HmsClient) this.f21971b).setService(d.a.i(adapter.getServiceBinder()));
                postMessage(i10);
                return;
            }
            HMSLog.i("HuaweiApi", "isConnected:false.");
            this.callbackWaitQueue.add(i10);
            ConnectionResult connectionResult = this.f21972c;
            if (connectionResult != null && connectionResult.getErrorCode() != 0) {
                HMSLog.i("HuaweiApi", "onConnectionFailed, ErrorCode:" + this.f21972c.getErrorCode());
                onConnectionFailed(this.f21972c);
                return;
            }
            RequestManager.addRequestToQueue(this);
            AnyClient anyClient = this.f21971b;
            if (anyClient instanceof BaseHmsClient) {
                ((BaseHmsClient) anyClient).setInternalRequest(this);
            }
            e(taskApiCallWrapper.getTaskApiCall().getMinApkVersion(), i10);
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnected() {
            HMSLog.i("HuaweiApi", "onConnected");
            BindResolveClients.getInstance().unRegister(this.f21974e);
            this.f21974e = null;
            RequestManager.getHandler().post(new Runnable() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.4
                @Override // java.lang.Runnable
                public void run() {
                    RequestHandler.this.j();
                }
            });
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.OnConnectionFailedListener
        public void onConnectionFailed(final ConnectionResult connectionResult) {
            HMSLog.i("HuaweiApi", "onConnectionFailed");
            BindResolveClients.getInstance().unRegister(this.f21974e);
            this.f21974e = null;
            RequestManager.getHandler().post(new Runnable() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.3
                @Override // java.lang.Runnable
                public void run() {
                    RequestHandler.this.k(connectionResult);
                }
            });
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnectionSuspended(int i10) {
            HMSLog.i("HuaweiApi", "onConnectionSuspended");
            BindResolveClients.getInstance().unRegister(this.f21974e);
            this.f21974e = null;
            RequestManager.getHandler().post(new Runnable() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.5
                @Override // java.lang.Runnable
                public void run() {
                    RequestHandler.this.n();
                }
            });
        }

        public void postMessage(final TaskApiCallbackWrapper taskApiCallbackWrapper) {
            Context context;
            RequestManager.addToConnectedReqMap(taskApiCallbackWrapper.a().getTaskApiCall().getTransactionId(), this);
            this.f21970a.add(taskApiCallbackWrapper);
            String uri = taskApiCallbackWrapper.a().getTaskApiCall().getUri();
            if (((HuaweiApi) this.f21973d).f21955c != null) {
                context = ((HuaweiApi) this.f21973d).f21955c;
            } else {
                context = this.f21973d.getContext();
            }
            String packageName = context.getPackageName();
            if (((HuaweiApi) this.f21973d).f21955c != null) {
                HuaweiApi<OptionsT> huaweiApi = this.f21973d;
                huaweiApi.b(((HuaweiApi) huaweiApi).f21955c);
            }
            final RequestHeader requestHeader = new RequestHeader();
            requestHeader.setSrvName(uri.split("\\.")[0]);
            requestHeader.setApiName(uri);
            requestHeader.setAppID(this.f21973d.getAppID() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + this.f21973d.getSubAppID());
            requestHeader.setPkgName(packageName);
            requestHeader.setSessionId(this.f21971b.getSessionId());
            TaskApiCall taskApiCall = taskApiCallbackWrapper.a().getTaskApiCall();
            requestHeader.setTransactionId(c(taskApiCall.getTransactionId(), uri));
            requestHeader.setParcelable(taskApiCall.getParcelable());
            requestHeader.setKitSdkVersion(this.f21973d.getKitSdkVersion());
            requestHeader.setApiLevel(Math.max(this.f21973d.getApiLevel(), taskApiCall.getApiLevel()));
            this.f21971b.post(requestHeader, taskApiCall.getRequestJson(), new AnyClient.CallBack() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.2
                @Override // com.huawei.hms.common.internal.AnyClient.CallBack
                public void onCallback(e eVar, String str) {
                    AnyClient.CallBack b10 = taskApiCallbackWrapper.b();
                    if (b10 != null) {
                        b10.onCallback(eVar, str);
                    }
                    RequestManager.removeReqByTransId(requestHeader.getTransactionId());
                    RequestManager.getHandler().post(new Runnable() { // from class: com.huawei.hms.common.HuaweiApi.RequestHandler.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RequestHandler.this.f21970a.remove(taskApiCallbackWrapper);
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes5.dex */
    public static class TaskApiCallbackWrapper {

        /* renamed from: a  reason: collision with root package name */
        private final TaskApiCallWrapper f21986a;

        /* renamed from: b  reason: collision with root package name */
        private final AnyClient.CallBack f21987b;

        TaskApiCallbackWrapper(TaskApiCallWrapper taskApiCallWrapper, AnyClient.CallBack callBack) {
            this.f21986a = taskApiCallWrapper;
            this.f21987b = callBack;
        }

        TaskApiCallWrapper a() {
            return this.f21986a;
        }

        AnyClient.CallBack b() {
            return this.f21987b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a<OptionsT extends Api.ApiOptions> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final HuaweiApi<OptionsT> f21988a;

        /* renamed from: b  reason: collision with root package name */
        private final TaskApiCallWrapper f21989b;

        public a(HuaweiApi<OptionsT> huaweiApi, TaskApiCallWrapper taskApiCallWrapper) {
            this.f21988a = huaweiApi;
            this.f21989b = taskApiCallWrapper;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0056 A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(com.huawei.hms.common.HuaweiApi.RequestHandler r8, java.lang.Throwable r9) {
            /*
                r7 = this;
                java.lang.String r0 = "HuaweiApi"
                r1 = 0
                com.huawei.hms.common.internal.AnyClient r8 = r8.getClient()     // Catch: java.lang.Throwable -> L36
                com.huawei.hms.common.internal.ResponseHeader r2 = new com.huawei.hms.common.internal.ResponseHeader     // Catch: java.lang.Throwable -> L33
                java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L33
                r3 = 1
                r4 = 907135001(0x3611c819, float:2.1723156E-6)
                r2.<init>(r3, r4, r9)     // Catch: java.lang.Throwable -> L33
                org.json.JSONObject r9 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2f
                r9.<init>()     // Catch: java.lang.Throwable -> L2f
                java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L2f
                com.huawei.hms.common.internal.TaskApiCallWrapper r3 = r7.f21989b     // Catch: java.lang.Throwable -> L2c
                ua.g r3 = r3.getTaskCompletionSource()     // Catch: java.lang.Throwable -> L2c
                com.huawei.hms.common.internal.TaskApiCallWrapper r4 = r7.f21989b     // Catch: java.lang.Throwable -> L2a
                com.huawei.hms.common.internal.TaskApiCall r1 = r4.getTaskApiCall()     // Catch: java.lang.Throwable -> L2a
                goto L54
            L2a:
                r4 = move-exception
                goto L3c
            L2c:
                r4 = move-exception
                r3 = r1
                goto L3c
            L2f:
                r4 = move-exception
                r9 = r1
                r3 = r9
                goto L3c
            L33:
                r9 = move-exception
                r4 = r9
                goto L39
            L36:
                r8 = move-exception
                r4 = r8
                r8 = r1
            L39:
                r9 = r1
                r2 = r9
                r3 = r2
            L3c:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "<notifyCpException> "
                r5.append(r6)
                java.lang.String r4 = r4.getMessage()
                r5.append(r4)
                java.lang.String r4 = r5.toString()
                com.huawei.hms.support.log.HMSLog.e(r0, r4)
            L54:
                if (r8 == 0) goto L62
                if (r2 == 0) goto L62
                if (r9 == 0) goto L62
                if (r3 == 0) goto L62
                if (r1 == 0) goto L62
                r1.onResponse(r8, r2, r9, r3)
                goto L67
            L62:
                java.lang.String r8 = "<notifyCpException> isNotify is false, Can not notify CP."
                com.huawei.hms.support.log.HMSLog.e(r0, r8)
            L67:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.HuaweiApi.a.a(com.huawei.hms.common.HuaweiApi$RequestHandler, java.lang.Throwable):void");
        }

        @Override // java.lang.Runnable
        public void run() {
            RequestHandler requestHandler = new RequestHandler(this.f21988a);
            try {
                requestHandler.h(this.f21989b);
            } catch (Throwable th2) {
                HMSLog.e("HuaweiApi", "sendRequest has exception", th2);
                a(requestHandler, th2);
            }
        }
    }

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i10) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.f21960h = new WeakReference<>(activity);
        a(activity, api, toption, abstractClientBuilder, i10, null);
    }

    @Deprecated
    public f<Boolean> disconnectService() {
        final g gVar = new g();
        RequestManager.getInstance();
        RequestManager.getHandler().post(new Runnable() { // from class: com.huawei.hms.common.HuaweiApi.1
            @Override // java.lang.Runnable
            public void run() {
                HuaweiApi.this.a(this, gVar);
            }
        });
        return gVar.a();
    }

    public <TResult, TClient extends AnyClient> f<TResult> doWrite(TaskApiCall<TClient, TResult> taskApiCall) {
        String subAppID;
        this.f21963k = true;
        if (taskApiCall == null) {
            HMSLog.e("HuaweiApi", "in doWrite:taskApiCall is null");
            g gVar = new g();
            gVar.b(new ApiException(Status.FAILURE));
            return gVar.a();
        }
        if (TextUtils.isEmpty(this.f21959g.getSubAppID())) {
            subAppID = this.f21958f;
        } else {
            subAppID = this.f21959g.getSubAppID();
        }
        HiAnalyticsInnerClient.reportEntryClient(this.f21953a, taskApiCall.getUri(), subAppID, taskApiCall.getTransactionId(), String.valueOf(getKitSdkVersion()));
        if (this.f21966n == null) {
            this.f21966n = RequestManager.getInstance();
        }
        return a(taskApiCall);
    }

    public Activity getActivity() {
        WeakReference<Activity> weakReference = this.f21960h;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getApiLevel() {
        return this.f21962j;
    }

    public String getAppID() {
        return this.f21958f;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.huawei.hms.common.internal.AnyClient] */
    public AnyClient getClient(Looper looper, RequestHandler requestHandler) {
        return this.f21956d.buildClient(this.f21953a, getClientSetting(), requestHandler, requestHandler);
    }

    protected ClientSettings getClientSetting() {
        ClientSettings clientSettings = new ClientSettings(this.f21953a.getPackageName(), this.f21953a.getClass().getName(), getScopes(), this.f21957e, null, this.f21959g);
        if (!this.f21965m) {
            String hMSPackageNameForMultiService = HMSPackageManager.getInstance(this.f21953a).getHMSPackageNameForMultiService();
            if (TextUtils.isEmpty(hMSPackageNameForMultiService)) {
                hMSPackageNameForMultiService = "com.huawei.hwid";
            }
            this.f21964l = hMSPackageNameForMultiService;
            HMSLog.i("HuaweiApi", "No setInnerHms, hms pkg name is " + this.f21964l);
        }
        clientSettings.setInnerHmsPkg(this.f21964l);
        clientSettings.setUseInnerHms(this.f21965m);
        WeakReference<Activity> weakReference = this.f21960h;
        if (weakReference != null) {
            clientSettings.setCpActivity(weakReference.get());
        }
        return clientSettings;
    }

    public Context getContext() {
        return this.f21953a;
    }

    public int getKitSdkVersion() {
        return this.f21961i;
    }

    public TOption getOption() {
        return this.f21954b;
    }

    protected List<Scope> getScopes() {
        return Collections.emptyList();
    }

    public String getSubAppID() {
        return this.f21959g.getSubAppID();
    }

    public void setApiLevel(int i10) {
        this.f21962j = i10;
    }

    public void setHostContext(Context context) {
        this.f21955c = context;
    }

    public void setInnerHms() {
        this.f21964l = this.f21953a.getPackageName();
        this.f21965m = true;
        HMSLog.i("HuaweiApi", "<setInnerHms> init inner hms pkg info:" + this.f21964l);
    }

    public void setKitSdkVersion(int i10) {
        this.f21961i = i10;
    }

    public void setSubAppId(String str) throws ApiException {
        if (setSubAppInfo(new SubAppInfo(str))) {
            return;
        }
        throw new ApiException(Status.FAILURE);
    }

    @Deprecated
    public boolean setSubAppInfo(SubAppInfo subAppInfo) {
        HMSLog.i("HuaweiApi", "Enter setSubAppInfo");
        SubAppInfo subAppInfo2 = this.f21959g;
        if (subAppInfo2 != null && !TextUtils.isEmpty(subAppInfo2.getSubAppID())) {
            HMSLog.e("HuaweiApi", "subAppInfo is already set");
            return false;
        } else if (subAppInfo == null) {
            HMSLog.e("HuaweiApi", "subAppInfo is null");
            return false;
        } else {
            String subAppID = subAppInfo.getSubAppID();
            if (TextUtils.isEmpty(subAppID)) {
                HMSLog.e("HuaweiApi", "subAppId is empty");
                return false;
            } else if (subAppID.equals(this.f21957e)) {
                HMSLog.e("HuaweiApi", "subAppId is host appid");
                return false;
            } else if (this.f21963k) {
                HMSLog.e("HuaweiApi", "Client has sent request to Huawei Mobile Services, setting subAppId is not allowed");
                return false;
            } else {
                this.f21959g = new SubAppInfo(subAppInfo);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        String appId = Util.getAppId(context);
        this.f21957e = appId;
        this.f21958f = appId;
    }

    private void a(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i10, String str) {
        this.f21953a = context.getApplicationContext();
        this.f21954b = toption;
        this.f21956d = abstractClientBuilder;
        b(context);
        this.f21959g = new SubAppInfo("");
        this.f21961i = i10;
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(this.f21957e)) {
                HMSLog.e("HuaweiApi", "subAppId is host appid");
            } else {
                HMSLog.i("HuaweiApi", "subAppId is " + str);
                this.f21959g = new SubAppInfo(str);
            }
        }
        a(context);
        if (Util.isAvailableLibExist(context)) {
            AvailableUtil.asyncCheckHmsUpdateInfo(context);
        }
    }

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i10, String str) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.f21960h = new WeakReference<>(activity);
        a(activity, api, toption, abstractClientBuilder, i10, str);
    }

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.f21960h = new WeakReference<>(activity);
        a(activity, api, toption, abstractClientBuilder, 0, null);
    }

    private void a(Context context) {
        HMSBIInitializer.getInstance(context).initBI();
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i10) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        a(context, api, toption, abstractClientBuilder, i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(HuaweiApi<?> huaweiApi, g<Boolean> gVar) {
        HMSLog.i("HuaweiApi", "innerDisconnect.");
        try {
            huaweiApi.getClient(RequestManager.getHandler().getLooper(), null).disconnect();
            gVar.c(Boolean.TRUE);
        } catch (Exception e10) {
            HMSLog.w("HuaweiApi", "disconnect the binder failed for:" + e10.getMessage());
        }
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i10, String str) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        a(context, api, toption, abstractClientBuilder, i10, str);
    }

    private <TResult, TClient extends AnyClient> f<TResult> a(TaskApiCall<TClient, TResult> taskApiCall) {
        taskApiCall.getToken();
        g gVar = new g();
        RequestManager.getHandler().post(new a(this, new TaskApiCallWrapper(taskApiCall, gVar)));
        return gVar.a();
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        a(context, api, toption, abstractClientBuilder, 0, null);
    }
}
