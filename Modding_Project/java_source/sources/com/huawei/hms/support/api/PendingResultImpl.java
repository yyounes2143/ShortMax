package com.huawei.hms.support.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hms.adapter.BaseAdapter;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.InnerPendingResult;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.gentyref.GenericTypeReflector;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public abstract class PendingResultImpl<R extends Result, T extends e> extends InnerPendingResult<R> {

    /* renamed from: a  reason: collision with root package name */
    private CountDownLatch f22226a;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<ApiClient> f22228c;
    protected DatagramTransport transport = null;

    /* renamed from: b  reason: collision with root package name */
    private R f22227b = null;

    /* renamed from: d  reason: collision with root package name */
    private String f22229d = null;

    /* renamed from: e  reason: collision with root package name */
    private String f22230e = null;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22231f = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements DatagramTransport.a {
        a() {
        }

        @Override // com.huawei.hms.support.api.transport.DatagramTransport.a
        public void a(int i10, e eVar) {
            PendingResultImpl.this.a(i10, eVar);
            PendingResultImpl.this.f22226a.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements DatagramTransport.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f22233a;

        b(AtomicBoolean atomicBoolean) {
            this.f22233a = atomicBoolean;
        }

        @Override // com.huawei.hms.support.api.transport.DatagramTransport.a
        public void a(int i10, e eVar) {
            if (!this.f22233a.get()) {
                PendingResultImpl.this.a(i10, eVar);
            }
            PendingResultImpl.this.f22226a.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements DatagramTransport.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f22235a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResultCallback f22236b;

        c(d dVar, ResultCallback resultCallback) {
            this.f22235a = dVar;
            this.f22236b = resultCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.huawei.hms.support.api.transport.DatagramTransport.a
        public void a(int i10, e eVar) {
            PendingResultImpl.this.a(i10, eVar);
            this.f22235a.a(this.f22236b, PendingResultImpl.this.f22227b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class d<R extends Result> extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        public void a(ResultCallback<? super R> resultCallback, R r10) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r10)));
        }

        protected void b(ResultCallback<? super R> resultCallback, R r10) {
            resultCallback.onResult(r10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                Pair pair = (Pair) message.obj;
                b((ResultCallback) pair.first, (Result) pair.second);
            }
        }
    }

    public PendingResultImpl(ApiClient apiClient, String str, e eVar) {
        a(apiClient, str, eVar, getResponseType(), 0);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final R await() {
        HMSLog.i("PendingResultImpl", "await");
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return awaitOnAnyThread();
        }
        HMSLog.e("PendingResultImpl", "await in main thread");
        throw new IllegalStateException("await must not be called on the UI thread");
    }

    @Override // com.huawei.hms.support.api.client.InnerPendingResult
    public final R awaitOnAnyThread() {
        HMSLog.i("PendingResultImpl", "awaitOnAnyThread");
        WeakReference<ApiClient> weakReference = this.f22228c;
        if (weakReference == null) {
            HMSLog.e("PendingResultImpl", "api is null");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            return this.f22227b;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.e("PendingResultImpl", "client invalid");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            return this.f22227b;
        }
        if (this.f22231f) {
            a(0, 1);
        }
        this.transport.send(apiClient, new a());
        try {
            this.f22226a.await();
        } catch (InterruptedException unused) {
            HMSLog.e("PendingResultImpl", "await in anythread InterruptedException");
            a((int) CommonCode.ErrorCode.INTERNAL_ERROR, (e) null);
        }
        return this.f22227b;
    }

    protected boolean checkApiClient(ApiClient apiClient) {
        return true;
    }

    protected Class<T> getResponseType() {
        Type type;
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass != null && (type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[1]) != null) {
            return (Class) type;
        }
        return null;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public boolean isCanceled() {
        return false;
    }

    public abstract R onComplete(T t10);

    protected R onError(int i10) {
        Type type;
        Class<?> cls;
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        } else {
            type = null;
        }
        if (type != null) {
            cls = GenericTypeReflector.getType(type);
        } else {
            cls = null;
        }
        if (cls != null) {
            try {
                R r10 = (R) cls.newInstance();
                this.f22227b = r10;
                r10.setStatus(new Status(i10));
            } catch (Exception e10) {
                HMSLog.e("PendingResultImpl", "on Error:" + e10.getMessage());
                return null;
            }
        }
        return this.f22227b;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public void setResultCallback(ResultCallback<R> resultCallback) {
        this.f22231f = !(resultCallback instanceof BaseAdapter.BaseRequestResultCallback);
        setResultCallback(Looper.getMainLooper(), resultCallback);
    }

    private void a(ApiClient apiClient, String str, e eVar, Class<T> cls, int i10) {
        HMSLog.i("PendingResultImpl", "init uri:" + str);
        this.f22229d = str;
        if (apiClient == null) {
            HMSLog.e("PendingResultImpl", "client is null");
            return;
        }
        this.f22228c = new WeakReference<>(apiClient);
        this.f22226a = new CountDownLatch(1);
        try {
            this.transport = (DatagramTransport) Class.forName(apiClient.getTransportName()).getConstructor(String.class, e.class, Class.class, Integer.TYPE).newInstance(str, eVar, cls, Integer.valueOf(i10));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            HMSLog.e("PendingResultImpl", "gen transport error:" + e10.getMessage());
            throw new IllegalStateException("Instancing transport exception, " + e10.getMessage(), e10);
        }
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final void setResultCallback(Looper looper, ResultCallback<R> resultCallback) {
        HMSLog.i("PendingResultImpl", "setResultCallback");
        if (looper == null) {
            looper = Looper.myLooper();
        }
        d dVar = new d(looper);
        WeakReference<ApiClient> weakReference = this.f22228c;
        if (weakReference == null) {
            HMSLog.e("PendingResultImpl", "api is null");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            return;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.e("PendingResultImpl", "client is invalid");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            dVar.a(resultCallback, this.f22227b);
            return;
        }
        if (this.f22231f) {
            a(0, 1);
        }
        this.transport.post(apiClient, new c(dVar, resultCallback));
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public R await(long j10, TimeUnit timeUnit) {
        HMSLog.i("PendingResultImpl", "await timeout:" + j10 + " unit:" + timeUnit.toString());
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return awaitOnAnyThread(j10, timeUnit);
        }
        HMSLog.i("PendingResultImpl", "await in main thread");
        throw new IllegalStateException("await must not be called on the UI thread");
    }

    public PendingResultImpl(ApiClient apiClient, String str, e eVar, Class<T> cls) {
        a(apiClient, str, eVar, cls, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(int i10, e eVar) {
        Status status;
        HMSLog.i("PendingResultImpl", "setResult:" + i10);
        Status commonStatus = eVar instanceof com.huawei.hms.core.aidl.a ? ((com.huawei.hms.core.aidl.a) eVar).getCommonStatus() : null;
        if (i10 == 0) {
            this.f22227b = onComplete(eVar);
        } else {
            this.f22227b = onError(i10);
        }
        if (this.f22231f) {
            a(i10, 2);
        }
        R r10 = this.f22227b;
        if (r10 == null || (status = r10.getStatus()) == null || commonStatus == null) {
            return;
        }
        int statusCode = status.getStatusCode();
        String statusMessage = status.getStatusMessage();
        int statusCode2 = commonStatus.getStatusCode();
        String statusMessage2 = commonStatus.getStatusMessage();
        if (statusCode != statusCode2) {
            HMSLog.e("PendingResultImpl", "rstStatus code (" + statusCode + ") is not equal commonStatus code (" + statusCode2 + ")");
            HMSLog.e("PendingResultImpl", "rstStatus msg (" + statusMessage + ") is not equal commonStatus msg (" + statusMessage2 + ")");
        } else if (!TextUtils.isEmpty(statusMessage) || TextUtils.isEmpty(statusMessage2)) {
        } else {
            HMSLog.i("PendingResultImpl", "rstStatus msg (" + statusMessage + ") is not equal commonStatus msg (" + statusMessage2 + ")");
            this.f22227b.setStatus(new Status(statusCode, statusMessage2, status.getResolution()));
        }
    }

    public PendingResultImpl(ApiClient apiClient, String str, e eVar, int i10) {
        a(apiClient, str, eVar, getResponseType(), i10);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public void cancel() {
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public void setResultCallback(ResultCallback<R> resultCallback, long j10, TimeUnit timeUnit) {
        setResultCallback(resultCallback);
    }

    @Override // com.huawei.hms.support.api.client.InnerPendingResult
    public final R awaitOnAnyThread(long j10, TimeUnit timeUnit) {
        HMSLog.i("PendingResultImpl", "awaitOnAnyThread timeout:" + j10 + " unit:" + timeUnit.toString());
        WeakReference<ApiClient> weakReference = this.f22228c;
        if (weakReference == null) {
            HMSLog.e("PendingResultImpl", "api is null");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            return this.f22227b;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.e("PendingResultImpl", "client invalid");
            a((int) CommonCode.ErrorCode.CLIENT_API_INVALID, (e) null);
            return this.f22227b;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        if (this.f22231f) {
            a(0, 1);
        }
        this.transport.post(apiClient, new b(atomicBoolean));
        try {
            if (!this.f22226a.await(j10, timeUnit)) {
                atomicBoolean.set(true);
                a((int) CommonCode.ErrorCode.EXECUTE_TIMEOUT, (e) null);
            }
        } catch (InterruptedException unused) {
            HMSLog.e("PendingResultImpl", "awaitOnAnyThread InterruptedException");
            a((int) CommonCode.ErrorCode.INTERNAL_ERROR, (e) null);
        }
        return this.f22227b;
    }

    private void a(int i10, int i11) {
        SubAppInfo subAppInfo;
        HMSLog.i("PendingResultImpl", "biReportEvent ====== ");
        ApiClient apiClient = this.f22228c.get();
        if (apiClient != null && this.f22229d != null && !HiAnalyticsUtil.getInstance().hasError(apiClient.getContext())) {
            HashMap hashMap = new HashMap();
            hashMap.put("package", apiClient.getPackageName());
            hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "6.12.0.300");
            if (i11 == 1) {
                hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
            } else {
                hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
                hashMap.put("result", String.valueOf(i10));
                R r10 = this.f22227b;
                if (r10 != null && r10.getStatus() != null) {
                    hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(this.f22227b.getStatus().getStatusCode()));
                }
            }
            hashMap.put("version", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            String appId = Util.getAppId(apiClient.getContext());
            if (TextUtils.isEmpty(appId) && (subAppInfo = apiClient.getSubAppInfo()) != null) {
                appId = subAppInfo.getSubAppID();
            }
            hashMap.put("appid", appId);
            if (TextUtils.isEmpty(this.f22230e)) {
                String id2 = TransactionIdCreater.getId(appId, this.f22229d);
                this.f22230e = id2;
                hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, id2);
            } else {
                hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, this.f22230e);
                this.f22230e = null;
            }
            String[] split = this.f22229d.split("\\.");
            if (split.length >= 2) {
                hashMap.put("service", split[0]);
                hashMap.put("apiName", split[1]);
            }
            hashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
            hashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
            HiAnalyticsUtil.getInstance().onEvent(apiClient.getContext(), HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, hashMap);
            return;
        }
        HMSLog.e("PendingResultImpl", "<biReportEvent> has some error.");
    }
}
