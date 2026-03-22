package com.huawei.hms.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.common.api.ConnectionPostProcessor;
import com.huawei.hms.common.internal.AutoLifecycleFragment;
import com.huawei.hms.core.aidl.DataBuffer;
import com.huawei.hms.core.aidl.c;
import com.huawei.hms.core.aidl.d;
import com.huawei.hms.core.aidl.h;
import com.huawei.hms.core.aidl.i;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.BundleResult;
import com.huawei.hms.support.api.client.InnerApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.core.ConnectService;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.core.CheckConnectInfo;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.entity.core.ConnectInfo;
import com.huawei.hms.support.api.entity.core.ConnectResp;
import com.huawei.hms.support.api.entity.core.DisconnectInfo;
import com.huawei.hms.support.api.entity.core.DisconnectResp;
import com.huawei.hms.support.api.entity.core.JosGetNoticeResp;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
import com.huawei.hms.utils.Util;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
@Deprecated
/* loaded from: classes5.dex */
public class HuaweiApiClientImpl extends HuaweiApiClient implements InnerApiClient, ServiceConnection {
    private static final Object A = new Object();
    private static final Object B = new Object();
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Context f21875b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21876c;

    /* renamed from: d  reason: collision with root package name */
    private String f21877d;

    /* renamed from: e  reason: collision with root package name */
    private String f21878e;

    /* renamed from: f  reason: collision with root package name */
    private volatile com.huawei.hms.core.aidl.d f21879f;

    /* renamed from: g  reason: collision with root package name */
    private String f21880g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<Activity> f21881h;

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<Activity> f21882i;

    /* renamed from: l  reason: collision with root package name */
    private List<Scope> f21885l;

    /* renamed from: m  reason: collision with root package name */
    private List<PermissionInfo> f21886m;

    /* renamed from: n  reason: collision with root package name */
    private Map<Api<?>, Api.ApiOptions> f21887n;

    /* renamed from: o  reason: collision with root package name */
    private SubAppInfo f21888o;

    /* renamed from: s  reason: collision with root package name */
    private final ReentrantLock f21892s;

    /* renamed from: t  reason: collision with root package name */
    private final Condition f21893t;

    /* renamed from: u  reason: collision with root package name */
    private ConnectionResult f21894u;

    /* renamed from: v  reason: collision with root package name */
    private HuaweiApiClient.ConnectionCallbacks f21895v;

    /* renamed from: w  reason: collision with root package name */
    private HuaweiApiClient.OnConnectionFailedListener f21896w;

    /* renamed from: x  reason: collision with root package name */
    private Handler f21897x;

    /* renamed from: y  reason: collision with root package name */
    private Handler f21898y;

    /* renamed from: z  reason: collision with root package name */
    private CheckUpdatelistener f21899z;

    /* renamed from: a  reason: collision with root package name */
    private int f21874a = -1;

    /* renamed from: j  reason: collision with root package name */
    private boolean f21883j = false;

    /* renamed from: k  reason: collision with root package name */
    private AtomicInteger f21884k = new AtomicInteger(1);

    /* renamed from: p  reason: collision with root package name */
    private long f21889p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f21890q = 0;

    /* renamed from: r  reason: collision with root package name */
    private final Object f21891r = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message != null && message.what == 2) {
                HMSLog.e("HuaweiApiClientImpl", "In connect, bind core service time out");
                if (HuaweiApiClientImpl.this.f21884k.get() == 5) {
                    HuaweiApiClientImpl.this.c(1);
                    HuaweiApiClientImpl.this.b();
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Handler.Callback {
        b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message != null && message.what == 3) {
                HMSLog.e("HuaweiApiClientImpl", "In connect, process time out");
                if (HuaweiApiClientImpl.this.f21884k.get() == 2) {
                    HuaweiApiClientImpl.this.c(1);
                    HuaweiApiClientImpl.this.b();
                }
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class c extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultCallback f21902a;

        c(ResultCallback resultCallback) {
            this.f21902a = resultCallback;
        }

        @Override // com.huawei.hms.core.aidl.c
        public void call(DataBuffer dataBuffer) {
            if (dataBuffer != null) {
                com.huawei.hms.core.aidl.f a10 = com.huawei.hms.core.aidl.b.a(dataBuffer.f());
                i iVar = new i();
                a10.f(dataBuffer.f22106b, iVar);
                BundleResult bundleResult = new BundleResult(iVar.a(), dataBuffer.d());
                HMSLog.i("HuaweiApiClientImpl", "Exit asyncRequest onResult");
                this.f21902a.onResult(bundleResult);
                return;
            }
            HMSLog.i("HuaweiApiClientImpl", "Exit asyncRequest onResult -1");
            this.f21902a.onResult(new BundleResult(-1, null));
        }
    }

    /* loaded from: classes5.dex */
    static class d extends PendingResultImpl<Status, com.huawei.hms.core.aidl.e> {
        public d(ApiClient apiClient, String str, com.huawei.hms.core.aidl.e eVar) {
            super(apiClient, str, eVar);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        /* renamed from: c */
        public Status onComplete(com.huawei.hms.core.aidl.e eVar) {
            return new Status(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class e implements ResultCallback<ResolveResult<ConnectResp>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ResolveResult f21905a;

            a(ResolveResult resolveResult) {
                this.f21905a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.a(this.f21905a);
            }
        }

        private e() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<ConnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        /* synthetic */ e(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class f implements ResultCallback<ResolveResult<DisconnectResp>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ResolveResult f21908a;

            a(ResolveResult resolveResult) {
                this.f21908a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.b(this.f21908a);
            }
        }

        private f() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<DisconnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        /* synthetic */ f(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class g implements ResultCallback<ResolveResult<JosGetNoticeResp>> {
        private g() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<JosGetNoticeResp> resolveResult) {
            JosGetNoticeResp value;
            Intent noticeIntent;
            if (resolveResult != null && resolveResult.getStatus().isSuccess() && (noticeIntent = (value = resolveResult.getValue()).getNoticeIntent()) != null && value.getStatusCode() == 0) {
                HMSLog.i("HuaweiApiClientImpl", "get notice has intent.");
                Activity validActivity = Util.getValidActivity((Activity) HuaweiApiClientImpl.this.f21881h.get(), HuaweiApiClientImpl.this.getTopActivity());
                if (validActivity != null) {
                    HuaweiApiClientImpl.this.f21883j = true;
                    validActivity.startActivity(noticeIntent);
                    return;
                }
                HMSLog.e("HuaweiApiClientImpl", "showNotice no valid activity!");
            }
        }

        /* synthetic */ g(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    public HuaweiApiClientImpl(Context context) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f21892s = reentrantLock;
        this.f21893t = reentrantLock.newCondition();
        this.f21897x = null;
        this.f21898y = null;
        this.f21899z = null;
        this.f21875b = context;
        String appId = Util.getAppId(context);
        this.f21876c = appId;
        this.f21877d = appId;
        this.f21878e = Util.getCpId(context);
    }

    private DisconnectInfo d() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f21887n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                arrayList.add(api.getApiName());
            }
        }
        return new DisconnectInfo(this.f21885l, arrayList);
    }

    private int e() {
        int hmsVersion = Util.getHmsVersion(this.f21875b);
        if (hmsVersion != 0 && hmsVersion >= 20503000) {
            return hmsVersion;
        }
        int f10 = f();
        if (g()) {
            if (f10 < 20503000) {
                return 20503000;
            }
            return f10;
        } else if (f10 < 20600000) {
            return 20600000;
        } else {
            return f10;
        }
    }

    private int f() {
        Integer num;
        int intValue;
        Map<Api<?>, Api.ApiOptions> apiMap = getApiMap();
        int i10 = 0;
        if (apiMap == null) {
            return 0;
        }
        for (Api<?> api : apiMap.keySet()) {
            String apiName = api.getApiName();
            if (!TextUtils.isEmpty(apiName) && (num = HuaweiApiAvailability.getApiMap().get(apiName)) != null && (intValue = num.intValue()) > i10) {
                i10 = intValue;
            }
        }
        return i10;
    }

    private boolean g() {
        Map<Api<?>, Api.ApiOptions> map = this.f21887n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                if (HuaweiApiAvailability.HMS_API_NAME_GAME.equals(api.getApiName())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private void h() {
        Handler handler = this.f21897x;
        if (handler != null) {
            handler.removeMessages(2);
        } else {
            this.f21897x = new Handler(Looper.getMainLooper(), new a());
        }
        this.f21897x.sendEmptyMessageDelayed(2, 5000L);
    }

    private void i() {
        synchronized (B) {
            try {
                Handler handler = this.f21898y;
                if (handler != null) {
                    handler.removeMessages(3);
                } else {
                    this.f21898y = new Handler(Looper.getMainLooper(), new b());
                }
                boolean sendEmptyMessageDelayed = this.f21898y.sendEmptyMessageDelayed(3, 3000L);
                HMSLog.d("HuaweiApiClientImpl", "sendEmptyMessageDelayed for onConnectionResult 3 seconds. the result is : " + sendEmptyMessageDelayed);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void j() {
        HMSLog.i("HuaweiApiClientImpl", "Enter sendConnectApiServceRequest.");
        ConnectService.connect(this, c()).setResultCallback(new e(this, null));
    }

    private void k() {
        ConnectService.disconnect(this, d()).setResultCallback(new f(this, null));
    }

    private void l() {
        HMSLog.i("HuaweiApiClientImpl", "Enter sendForceConnectApiServceRequest.");
        ConnectService.forceConnect(this, c()).setResultCallback(new e(this, null));
    }

    private void m() {
        if (this.f21883j) {
            HMSLog.i("HuaweiApiClientImpl", "Connect notice has been shown.");
        } else if (HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(this.f21875b) == 0) {
            ConnectService.getNotice(this, 0, "6.12.0.300").setResultCallback(new g(this, null));
        }
    }

    private void n() {
        Util.unBindServiceCatchException(this.f21875b, this);
        this.f21879f = null;
    }

    public int asyncRequest(Bundle bundle, String str, int i10, ResultCallback<BundleResult> resultCallback) {
        HMSLog.i("HuaweiApiClientImpl", "Enter asyncRequest.");
        if (resultCallback != null && str != null && bundle != null) {
            if (!innerIsConnected()) {
                HMSLog.e("HuaweiApiClientImpl", "client is unConnect.");
                return CommonCode.ErrorCode.CLIENT_API_INVALID;
            }
            DataBuffer dataBuffer = new DataBuffer(str, i10);
            com.huawei.hms.core.aidl.f a10 = com.huawei.hms.core.aidl.b.a(dataBuffer.f());
            dataBuffer.c(bundle);
            h hVar = new h(getAppID(), getPackageName(), 61200300, getSessionId());
            hVar.b(getApiNameList());
            dataBuffer.f22106b = a10.g(hVar, new Bundle());
            try {
                getService().c(dataBuffer, new c(resultCallback));
                return 0;
            } catch (RemoteException e10) {
                HMSLog.e("HuaweiApiClientImpl", "remote exception:" + e10.getMessage());
                return CommonCode.ErrorCode.INTERNAL_ERROR;
            }
        }
        HMSLog.e("HuaweiApiClientImpl", "arguments is invalid.");
        return CommonCode.ErrorCode.ARGUMENTS_INVALID;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void checkUpdate(Activity activity, CheckUpdatelistener checkUpdatelistener) {
        if (checkUpdatelistener == null) {
            HMSLog.e("HuaweiApiClientImpl", "listener is null!");
        } else if (activity != null && !activity.isFinishing()) {
            this.f21899z = checkUpdatelistener;
            try {
                Class<?> cls = Class.forName("com.huawei.hms.update.manager.CheckUpdateLegacy");
                cls.getMethod("initCheckUpdateCallBack", Object.class, Activity.class).invoke(cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), this, activity);
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
                HMSLog.e("HuaweiApiClientImpl", "invoke CheckUpdateLegacy.initCheckUpdateCallBack fail. " + e10.getMessage());
                checkUpdatelistener.onResult(-1);
            }
        } else {
            HMSLog.e("HuaweiApiClientImpl", "checkUpdate, activity is illegal: " + activity);
            checkUpdatelistener.onResult(-1);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(Activity activity) {
        HMSLog.i("HuaweiApiClientImpl", "====== HMSSDK version: 61200300 ======");
        int i10 = this.f21884k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter connect, Connection Status: " + i10);
        if (i10 == 3 || i10 == 5 || i10 == 2 || i10 == 4) {
            return;
        }
        if (activity != null) {
            this.f21881h = new WeakReference<>(activity);
            this.f21882i = new WeakReference<>(activity);
        }
        this.f21877d = TextUtils.isEmpty(this.f21876c) ? Util.getAppId(this.f21875b) : this.f21876c;
        int e10 = e();
        HMSLog.i("HuaweiApiClientImpl", "connect minVersion:" + e10);
        HuaweiApiAvailability.setServicesVersionCode(e10);
        int isHuaweiMobileServicesAvailable = HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(this.f21875b, e10);
        HMSLog.i("HuaweiApiClientImpl", "In connect, isHuaweiMobileServicesAvailable result: " + isHuaweiMobileServicesAvailable);
        this.f21890q = HMSPackageManager.getInstance(this.f21875b).getHmsMultiServiceVersion();
        if (isHuaweiMobileServicesAvailable == 0) {
            c(5);
            if (this.f21879f == null) {
                a();
                return;
            }
            c(2);
            j();
            i();
        } else if (this.f21896w != null) {
            b(isHuaweiMobileServicesAvailable);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connectForeground() {
        String str;
        HMSLog.i("HuaweiApiClientImpl", "====== HMSSDK version: 61200300 ======");
        int i10 = this.f21884k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter forceConnect, Connection Status: " + i10);
        if (i10 != 3 && i10 != 5 && i10 != 2 && i10 != 4) {
            if (TextUtils.isEmpty(this.f21876c)) {
                str = Util.getAppId(this.f21875b);
            } else {
                str = this.f21876c;
            }
            this.f21877d = str;
            l();
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disableLifeCycleManagement(Activity activity) {
        if (this.f21874a >= 0) {
            AutoLifecycleFragment.getInstance(activity).stopAutoManage(this.f21874a);
            return;
        }
        throw new IllegalStateException("disableLifeCycleManagement failed");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public PendingResult<Status> discardAndReconnect() {
        return new d(this, null, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disconnect() {
        int i10 = this.f21884k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter disconnect, Connection Status: " + i10);
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 == 5) {
                    a(2);
                    c(4);
                    return;
                }
                return;
            }
            c(4);
            k();
            return;
        }
        c(4);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Map<Api<?>, Api.ApiOptions> getApiMap() {
        return this.f21887n;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public List<String> getApiNameList() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f21887n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                arrayList.add(api.getApiName());
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getAppID() {
        return this.f21877d;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        if (isConnected()) {
            this.f21894u = null;
            return new ConnectionResult(0, (PendingIntent) null);
        }
        ConnectionResult connectionResult = this.f21894u;
        if (connectionResult != null) {
            return connectionResult;
        }
        return new ConnectionResult(13, (PendingIntent) null);
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public Context getContext() {
        return this.f21875b;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getCpID() {
        return this.f21878e;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getPackageName() {
        return this.f21875b.getPackageName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<PermissionInfo> getPermissionInfos() {
        return this.f21886m;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<Scope> getScopes() {
        return this.f21885l;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public com.huawei.hms.core.aidl.d getService() {
        return this.f21879f;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getSessionId() {
        return this.f21880g;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public final SubAppInfo getSubAppInfo() {
        return this.f21888o;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.f21882i;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getTransportName() {
        return IPCTransport.class.getName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectedApi(Api<?> api) {
        return isConnected();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f21891r) {
            try {
                if (this.f21896w == onConnectionFailedListener) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f21891r) {
            try {
                if (this.f21895v == connectionCallbacks) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f21892s.lock();
            try {
                connect((Activity) null);
                while (isConnecting()) {
                    this.f21893t.await();
                }
                if (isConnected()) {
                    this.f21894u = null;
                    return new ConnectionResult(0, (PendingIntent) null);
                }
                ConnectionResult connectionResult = this.f21894u;
                return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, (PendingIntent) null);
            } finally {
                this.f21892s.unlock();
            }
        }
        throw new IllegalStateException("blockingConnect must not be called on the UI thread");
    }

    @Override // com.huawei.hms.support.api.client.InnerApiClient
    public boolean innerIsConnected() {
        if (this.f21884k.get() != 3 && this.f21884k.get() != 4) {
            return false;
        }
        return true;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient, com.huawei.hms.support.api.client.ApiClient
    public boolean isConnected() {
        if (this.f21890q == 0) {
            this.f21890q = HMSPackageManager.getInstance(this.f21875b).getHmsMultiServiceVersion();
        }
        if (this.f21890q < 20504000) {
            long currentTimeMillis = System.currentTimeMillis() - this.f21889p;
            if (currentTimeMillis > 0 && currentTimeMillis < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                return innerIsConnected();
            }
            if (innerIsConnected()) {
                Status status = ConnectService.checkconnect(this, new CheckConnectInfo()).awaitOnAnyThread(2000L, TimeUnit.MILLISECONDS).getStatus();
                if (status.isSuccess()) {
                    this.f21889p = System.currentTimeMillis();
                    return true;
                }
                int statusCode = status.getStatusCode();
                HMSLog.i("HuaweiApiClientImpl", "isConnected is false, statuscode:" + statusCode);
                if (statusCode != 907135004) {
                    n();
                    c(1);
                    this.f21889p = System.currentTimeMillis();
                    return false;
                }
                return false;
            }
            return false;
        }
        return innerIsConnected();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean isConnecting() {
        int i10 = this.f21884k.get();
        if (i10 != 2 && i10 != 5) {
            return false;
        }
        return true;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onPause(Activity activity) {
        HMSLog.i("HuaweiApiClientImpl", "onPause");
    }

    public void onResult(int i10) {
        this.f21899z.onResult(i10);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onResume(Activity activity) {
        if (activity != null) {
            HMSLog.i("HuaweiApiClientImpl", "onResume");
            this.f21882i = new WeakReference<>(activity);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        PendingIntent pendingIntent;
        HMSLog.i("HuaweiApiClientImpl", "HuaweiApiClientImpl Enter onServiceConnected.");
        a(2);
        this.f21879f = d.a.i(iBinder);
        if (this.f21879f == null) {
            HMSLog.e("HuaweiApiClientImpl", "In onServiceConnected, mCoreService must not be null.");
            n();
            c(1);
            if (this.f21896w != null) {
                WeakReference<Activity> weakReference = this.f21881h;
                if (weakReference != null && weakReference.get() != null) {
                    pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f21881h.get(), 10);
                } else {
                    pendingIntent = null;
                }
                ConnectionResult connectionResult = new ConnectionResult(10, pendingIntent);
                this.f21896w.onConnectionFailed(connectionResult);
                this.f21894u = connectionResult;
            }
        } else if (this.f21884k.get() == 5) {
            c(2);
            j();
            i();
        } else if (this.f21884k.get() != 3) {
            n();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onServiceDisconnected.");
        this.f21879f = null;
        c(1);
        HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f21895v;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnectionSuspended(1);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void reconnect() {
        disconnect();
        connect((Activity) null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f21891r) {
            try {
                if (this.f21896w != onConnectionFailedListener) {
                    HMSLog.w("HuaweiApiClientImpl", "unregisterConnectionFailedListener: this onConnectionFailedListener has not been registered");
                } else {
                    this.f21896w = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f21891r) {
            try {
                if (this.f21895v != connectionCallbacks) {
                    HMSLog.w("HuaweiApiClientImpl", "unregisterConnectionCallback: this connectionCallbacksListener has not been registered");
                } else {
                    this.f21895v = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void resetListener() {
        this.f21899z = null;
    }

    public void setApiMap(Map<Api<?>, Api.ApiOptions> map) {
        this.f21887n = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAutoLifecycleClientId(int i10) {
        this.f21874a = i10;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionCallbacks(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f21895v = connectionCallbacks;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionFailedListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f21896w = onConnectionFailedListener;
    }

    public void setHasShowNotice(boolean z10) {
        this.f21883j = z10;
    }

    public void setPermissionInfos(List<PermissionInfo> list) {
        this.f21886m = list;
    }

    public void setScopes(List<Scope> list) {
        this.f21885l = list;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean setSubAppInfo(SubAppInfo subAppInfo) {
        String str;
        HMSLog.i("HuaweiApiClientImpl", "Enter setSubAppInfo");
        if (subAppInfo == null) {
            HMSLog.e("HuaweiApiClientImpl", "subAppInfo is null");
            return false;
        }
        String subAppID = subAppInfo.getSubAppID();
        if (TextUtils.isEmpty(subAppID)) {
            HMSLog.e("HuaweiApiClientImpl", "subAppId is empty");
            return false;
        }
        if (TextUtils.isEmpty(this.f21876c)) {
            str = Util.getAppId(this.f21875b);
        } else {
            str = this.f21876c;
        }
        if (subAppID.equals(str)) {
            HMSLog.e("HuaweiApiClientImpl", "subAppId is host appid");
            return false;
        }
        this.f21888o = new SubAppInfo(subAppInfo);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10) {
        this.f21884k.set(i10);
        if (i10 == 1 || i10 == 3 || i10 == 2) {
            this.f21892s.lock();
            try {
                this.f21893t.signalAll();
            } finally {
                this.f21892s.unlock();
            }
        }
    }

    private void b(int i10) {
        PendingIntent pendingIntent;
        WeakReference<Activity> weakReference = this.f21881h;
        if (weakReference == null || weakReference.get() == null) {
            pendingIntent = null;
        } else {
            pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f21881h.get(), i10);
            HMSLog.i("HuaweiApiClientImpl", "connect 2.0 fail: " + i10);
        }
        ConnectionResult connectionResult = new ConnectionResult(i10, pendingIntent);
        this.f21896w.onConnectionFailed(connectionResult);
        this.f21894u = connectionResult;
    }

    private void a() {
        Intent intent = new Intent(HMSPackageManager.getInstance(this.f21875b).getServiceAction());
        HMSPackageManager.getInstance(this.f21875b).refreshForMultiService();
        try {
            String hMSPackageNameForMultiService = HMSPackageManager.getInstance(this.f21875b).getHMSPackageNameForMultiService();
            if (TextUtils.isEmpty(hMSPackageNameForMultiService)) {
                HMSLog.e("HuaweiApiClientImpl", "servicePackageName is empty, Service is invalid, bind core service fail.");
                c(1);
                b();
                return;
            }
            intent.setPackage(hMSPackageNameForMultiService);
            synchronized (A) {
                try {
                    if (this.f21875b.bindService(intent, this, 1)) {
                        h();
                        return;
                    }
                    c(1);
                    HMSLog.e("HuaweiApiClientImpl", "In connect, bind core service fail");
                    b();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (IllegalArgumentException unused) {
            HMSLog.e("HuaweiApiClientImpl", "IllegalArgumentException when bindCoreService intent.setPackage");
            c(1);
            HMSLog.e("HuaweiApiClientImpl", "In connect, bind core service fail");
            b();
        }
    }

    private ConnectInfo c() {
        String packageSignature = new PackageManagerHelper(this.f21875b).getPackageSignature(this.f21875b.getPackageName());
        if (packageSignature == null) {
            packageSignature = "";
        }
        SubAppInfo subAppInfo = this.f21888o;
        return new ConnectInfo(getApiNameList(), this.f21885l, packageSignature, subAppInfo == null ? null : subAppInfo.getSubAppID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        n();
        if (this.f21896w != null) {
            int i10 = UIUtil.isBackground(this.f21875b) ? 7 : 6;
            WeakReference<Activity> weakReference = this.f21881h;
            ConnectionResult connectionResult = new ConnectionResult(i10, (weakReference == null || weakReference.get() == null) ? null : HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f21881h.get(), i10));
            this.f21896w.onConnectionFailed(connectionResult);
            this.f21894u = connectionResult;
        }
    }

    private void c(ResolveResult<ConnectResp> resolveResult) {
        if (resolveResult.getValue() != null) {
            ProtocolNegotiate.getInstance().negotiate(resolveResult.getValue().protocolVersion);
        }
        c(3);
        this.f21894u = null;
        HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f21895v;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnected();
        }
        if (this.f21881h != null) {
            m();
        }
        for (Map.Entry<Api<?>, Api.ApiOptions> entry : getApiMap().entrySet()) {
            if (entry.getKey().getmConnetctPostList() != null && !entry.getKey().getmConnetctPostList().isEmpty()) {
                HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, get the ConnetctPostList ");
                for (ConnectionPostProcessor connectionPostProcessor : entry.getKey().getmConnetctPostList()) {
                    HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, processor.run");
                    connectionPostProcessor.run(this, this.f21881h);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ResolveResult<DisconnectResp> resolveResult) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onDisconnectionResult, disconnect from server result: " + resolveResult.getStatus().getStatusCode());
        n();
        c(1);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect(long j10, TimeUnit timeUnit) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f21892s.lock();
            try {
                connect((Activity) null);
                long nanos = timeUnit.toNanos(j10);
                while (isConnecting()) {
                    if (nanos <= 0) {
                        disconnect();
                        return new ConnectionResult(14, (PendingIntent) null);
                    }
                    nanos = this.f21893t.awaitNanos(nanos);
                }
                if (isConnected()) {
                    this.f21894u = null;
                    return new ConnectionResult(0, (PendingIntent) null);
                }
                ConnectionResult connectionResult = this.f21894u;
                return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, (PendingIntent) null);
            } finally {
                this.f21892s.unlock();
            }
        }
        throw new IllegalStateException("blockingConnect must not be called on the UI thread");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(int i10) {
        connect((Activity) null);
    }

    private void a(int i10) {
        if (i10 == 2) {
            synchronized (A) {
                try {
                    Handler handler = this.f21897x;
                    if (handler != null) {
                        handler.removeMessages(i10);
                        this.f21897x = null;
                    }
                } finally {
                }
            }
        }
        if (i10 == 3) {
            synchronized (B) {
                try {
                    Handler handler2 = this.f21898y;
                    if (handler2 != null) {
                        handler2.removeMessages(i10);
                        this.f21898y = null;
                    }
                } finally {
                }
            }
        }
        synchronized (A) {
            try {
                Handler handler3 = this.f21897x;
                if (handler3 != null) {
                    handler3.removeMessages(2);
                    this.f21897x = null;
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ResolveResult<ConnectResp> resolveResult) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult");
        if (this.f21879f != null && this.f21884k.get() == 2) {
            a(3);
            ConnectResp value = resolveResult.getValue();
            if (value != null) {
                this.f21880g = value.sessionId;
            }
            SubAppInfo subAppInfo = this.f21888o;
            PendingIntent pendingIntent = null;
            String subAppID = subAppInfo == null ? null : subAppInfo.getSubAppID();
            if (!TextUtils.isEmpty(subAppID)) {
                this.f21877d = subAppID;
            }
            int statusCode = resolveResult.getStatus().getStatusCode();
            HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, connect to server result: " + statusCode);
            if (Status.SUCCESS.equals(resolveResult.getStatus())) {
                c(resolveResult);
                return;
            } else if (resolveResult.getStatus() != null && resolveResult.getStatus().getStatusCode() == 1001) {
                n();
                c(1);
                HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f21895v;
                if (connectionCallbacks != null) {
                    connectionCallbacks.onConnectionSuspended(3);
                    return;
                }
                return;
            } else {
                n();
                c(1);
                if (this.f21896w != null) {
                    WeakReference<Activity> weakReference = this.f21881h;
                    if (weakReference != null && weakReference.get() != null) {
                        pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f21881h.get(), statusCode);
                    }
                    ConnectionResult connectionResult = new ConnectionResult(statusCode, pendingIntent);
                    this.f21896w.onConnectionFailed(connectionResult);
                    this.f21894u = connectionResult;
                    return;
                }
                return;
            }
        }
        HMSLog.e("HuaweiApiClientImpl", "Invalid onConnectionResult");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void print(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
