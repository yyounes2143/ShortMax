package com.huawei.hms.common.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.adapter.BinderAdapter;
import com.huawei.hms.adapter.InnerBinderAdapter;
import com.huawei.hms.adapter.OuterBinderAdapter;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.FailedBinderCallBack;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.api.IPCTransport;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.core.aidl.d;
import com.huawei.hms.support.api.client.AidlApiClient;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.Util;
import java.sql.Timestamp;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public abstract class BaseHmsClient implements AidlApiClient {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f22016j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicInteger f22017k = new AtomicInteger(1);

    /* renamed from: l  reason: collision with root package name */
    private static final AtomicInteger f22018l = new AtomicInteger(1);

    /* renamed from: m  reason: collision with root package name */
    private static BinderAdapter f22019m;

    /* renamed from: n  reason: collision with root package name */
    private static BinderAdapter f22020n;

    /* renamed from: a  reason: collision with root package name */
    private final Context f22021a;

    /* renamed from: b  reason: collision with root package name */
    private String f22022b;

    /* renamed from: c  reason: collision with root package name */
    private final ClientSettings f22023c;

    /* renamed from: d  reason: collision with root package name */
    private volatile d f22024d;

    /* renamed from: e  reason: collision with root package name */
    protected String f22025e;

    /* renamed from: f  reason: collision with root package name */
    private final ConnectionCallbacks f22026f;

    /* renamed from: g  reason: collision with root package name */
    private final OnConnectionFailedListener f22027g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f22028h = null;

    /* renamed from: i  reason: collision with root package name */
    private HuaweiApi.RequestHandler f22029i;

    /* loaded from: classes5.dex */
    public interface ConnectionCallbacks {
        public static final int CAUSE_API_CLIENT_EXPIRED = 3;
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected();

        void onConnectionSuspended(int i10);
    }

    /* loaded from: classes5.dex */
    public static final class ConnectionResultWrapper {

        /* renamed from: a  reason: collision with root package name */
        private HuaweiApi.RequestHandler f22034a;

        /* renamed from: b  reason: collision with root package name */
        private ConnectionResult f22035b;

        public ConnectionResultWrapper(HuaweiApi.RequestHandler requestHandler, ConnectionResult connectionResult) {
            this.f22034a = requestHandler;
            this.f22035b = connectionResult;
        }

        public ConnectionResult getConnectionResult() {
            return this.f22035b;
        }

        public HuaweiApi.RequestHandler getRequest() {
            return this.f22034a;
        }
    }

    /* loaded from: classes5.dex */
    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public BaseHmsClient(Context context, ClientSettings clientSettings, OnConnectionFailedListener onConnectionFailedListener, ConnectionCallbacks connectionCallbacks) {
        this.f22021a = context;
        this.f22023c = clientSettings;
        if (clientSettings != null) {
            this.f22022b = clientSettings.getAppID();
        }
        this.f22027g = onConnectionFailedListener;
        this.f22026f = connectionCallbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i10) {
        HMSLog.i("BaseHmsClient", "notifyFailed result: " + i10);
        Message message = new Message();
        message.what = 10012;
        message.obj = new ConnectionResultWrapper(this.f22029i, new ConnectionResult(i10));
        RequestManager.getHandler().sendMessage(message);
        OnConnectionFailedListener onConnectionFailedListener = this.f22027g;
        if (onConnectionFailedListener != null && !(onConnectionFailedListener instanceof HuaweiApi.RequestHandler)) {
            onConnectionFailedListener.onConnectionFailed(new ConnectionResult(i10));
        }
    }

    private void e(int i10, boolean z10) {
        AtomicInteger atomicInteger;
        HMSLog.i("BaseHmsClient", "====== HMSSDK version: 61200300 ======");
        if (this.f22023c.isUseInnerHms()) {
            atomicInteger = f22018l;
        } else {
            atomicInteger = f22017k;
        }
        int i11 = atomicInteger.get();
        HMSLog.i("BaseHmsClient", "Enter connect, Connection Status: " + i11);
        if (!z10 && (i11 == 3 || i11 == 5)) {
            return;
        }
        if (getMinApkVersion() > i10) {
            i10 = getMinApkVersion();
        }
        HMSLog.i("BaseHmsClient", "connect minVersion:" + i10 + " packageName:" + this.f22023c.getInnerHmsPkg());
        if (this.f22021a.getPackageName().equals(this.f22023c.getInnerHmsPkg())) {
            HMSLog.i("BaseHmsClient", "service packageName is same, bind core service return");
            c();
        } else if (Util.isAvailableLibExist(this.f22021a)) {
            AvailableAdapter availableAdapter = new AvailableAdapter(i10);
            int isHuaweiMobileServicesAvailable = availableAdapter.isHuaweiMobileServicesAvailable(this.f22021a);
            HMSLog.i("BaseHmsClient", "check available result: " + isHuaweiMobileServicesAvailable);
            if (isHuaweiMobileServicesAvailable == 0) {
                c();
            } else if (availableAdapter.isUserResolvableError(isHuaweiMobileServicesAvailable)) {
                HMSLog.i("BaseHmsClient", "bindCoreService3.0 fail, start resolution now.");
                n(availableAdapter, isHuaweiMobileServicesAvailable);
            } else if (availableAdapter.isUserNoticeError(isHuaweiMobileServicesAvailable)) {
                HMSLog.i("BaseHmsClient", "bindCoreService3.0 fail, start notice now.");
                f(availableAdapter, isHuaweiMobileServicesAvailable);
            } else {
                HMSLog.i("BaseHmsClient", "bindCoreService3.0 fail: " + isHuaweiMobileServicesAvailable + " is not resolvable.");
                d(isHuaweiMobileServicesAvailable);
            }
        } else {
            int isHuaweiMobileServicesAvailable2 = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(this.f22021a, i10);
            HMSLog.i("BaseHmsClient", "HuaweiApiAvailability check available result: " + isHuaweiMobileServicesAvailable2);
            if (isHuaweiMobileServicesAvailable2 == 0) {
                c();
            } else {
                d(isHuaweiMobileServicesAvailable2);
            }
        }
    }

    private void f(AvailableAdapter availableAdapter, int i10) {
        HMSLog.i("BaseHmsClient", "enter notice");
        if (!u().isHasActivity()) {
            if (i10 == 29) {
                i10 = 9;
            }
            g(new ConnectionResult(26, HuaweiApiAvailability.getInstance().getErrPendingIntent(this.f22021a, i10, 0)));
            return;
        }
        Activity activeActivity = Util.getActiveActivity(u().getCpActivity(), getContext());
        if (activeActivity != null) {
            availableAdapter.startNotice(activeActivity, new AvailableAdapter.AvailableCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.2
                @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
                public void onComplete(int i11) {
                    BaseHmsClient.this.d(i11);
                }
            });
        } else {
            d(26);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(ConnectionResult connectionResult) {
        HMSLog.i("BaseHmsClient", "notifyFailed result: " + connectionResult.getErrorCode());
        Message message = new Message();
        message.what = 10012;
        HuaweiApi.RequestHandler requestHandler = this.f22029i;
        this.f22029i = null;
        message.obj = new ConnectionResultWrapper(requestHandler, connectionResult);
        RequestManager.getHandler().sendMessage(message);
        OnConnectionFailedListener onConnectionFailedListener = this.f22027g;
        if (onConnectionFailedListener != null && !(onConnectionFailedListener instanceof HuaweiApi.RequestHandler)) {
            onConnectionFailedListener.onConnectionFailed(connectionResult);
        }
    }

    private void j(String str, String str2) {
        if (this.f22023c.isUseInnerHms()) {
            f22020n = InnerBinderAdapter.getInstance(this.f22021a, str2, str);
            if (isConnected()) {
                HMSLog.i("BaseHmsClient", "The binder is already connected.");
                getAdapter().updateDelayTask();
                connectedInternal(getAdapter().getServiceBinder());
                return;
            }
            m(5);
            f22020n.binder(r());
            return;
        }
        f22019m = OuterBinderAdapter.getInstance(this.f22021a, str2, str);
        if (isConnected()) {
            HMSLog.i("BaseHmsClient", "The binder is already connected.");
            getAdapter().updateDelayTask();
            connectedInternal(getAdapter().getServiceBinder());
            return;
        }
        m(5);
        f22019m.binder(r());
    }

    private void l() {
        synchronized (f22016j) {
            try {
                Handler handler = this.f22028h;
                if (handler != null) {
                    handler.removeMessages(2);
                    this.f22028h = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n(AvailableAdapter availableAdapter, int i10) {
        HMSLog.i("BaseHmsClient", "enter HmsCore resolution");
        if (!u().isHasActivity()) {
            g(new ConnectionResult(26, HuaweiApiAvailability.getInstance().getErrPendingIntent(this.f22021a, i10, 0)));
            return;
        }
        Activity activeActivity = Util.getActiveActivity(u().getCpActivity(), getContext());
        if (activeActivity != null) {
            availableAdapter.startResolution(activeActivity, new AvailableAdapter.AvailableCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.3
                @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
                public void onComplete(int i11) {
                    if (i11 != 0 || !BaseHmsClient.this.o()) {
                        BaseHmsClient.this.d(i11);
                    } else {
                        BaseHmsClient.this.c();
                    }
                }
            });
        } else {
            d(26);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        if (HMSPackageManager.getInstance(this.f22021a).getHMSPackageStatesForMultiService() == PackageManagerHelper.PackageStates.ENABLED) {
            return true;
        }
        return false;
    }

    private BinderAdapter.BinderCallBack r() {
        return new BinderAdapter.BinderCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.1
            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onBinderFailed(int i10) {
                onBinderFailed(i10, null);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onNullBinding(ComponentName componentName) {
                BaseHmsClient.this.m(1);
                BaseHmsClient.this.d(10);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                HMSLog.i("BaseHmsClient", "Enter onServiceConnected.");
                BaseHmsClient.this.connectedInternal(iBinder);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onServiceDisconnected(ComponentName componentName) {
                HMSLog.i("BaseHmsClient", "Enter onServiceDisconnected.");
                BaseHmsClient.this.m(1);
                RequestManager.getHandler().sendEmptyMessage(RequestManager.NOTIFY_CONNECT_SUSPENDED);
                if (BaseHmsClient.this.f22026f != null && !(BaseHmsClient.this.f22026f instanceof HuaweiApi.RequestHandler)) {
                    BaseHmsClient.this.f22026f.onConnectionSuspended(1);
                }
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onTimedDisconnected() {
                BaseHmsClient.this.m(6);
                if (BaseHmsClient.this.f22026f != null && !(BaseHmsClient.this.f22026f instanceof HuaweiApi.RequestHandler)) {
                    BaseHmsClient.this.f22026f.onConnectionSuspended(1);
                }
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onBinderFailed(int i10, Intent intent) {
                if (intent != null) {
                    Activity activeActivity = Util.getActiveActivity(BaseHmsClient.this.u().getCpActivity(), BaseHmsClient.this.getContext());
                    if (activeActivity != null) {
                        HMSLog.i("BaseHmsClient", "onBinderFailed: SDK try to resolve and reConnect!");
                        long time = new Timestamp(System.currentTimeMillis()).getTime();
                        FailedBinderCallBack.getInstance().setCallBack(Long.valueOf(time), new FailedBinderCallBack.BinderCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.1.1
                            @Override // com.huawei.hms.api.FailedBinderCallBack.BinderCallBack
                            public void binderCallBack(int i11) {
                                if (i11 != 0) {
                                    BaseHmsClient.this.g(new ConnectionResult(10, (PendingIntent) null));
                                    BaseHmsClient.this.f22024d = null;
                                }
                            }
                        });
                        intent.putExtra(FailedBinderCallBack.CALLER_ID, time);
                        activeActivity.startActivity(intent);
                        return;
                    }
                    HMSLog.i("BaseHmsClient", "onBinderFailed: return pendingIntent to kit and cp");
                    BaseHmsClient.this.g(new ConnectionResult(10, PendingIntent.getActivity(BaseHmsClient.this.f22021a, 11, intent, 67108864)));
                    BaseHmsClient.this.f22024d = null;
                    return;
                }
                HMSLog.i("BaseHmsClient", "onBinderFailed: intent is null!");
                BaseHmsClient.this.g(new ConnectionResult(10, (PendingIntent) null));
                BaseHmsClient.this.f22024d = null;
            }
        };
    }

    private void s() {
        HMSLog.w("BaseHmsClient", "Failed to get service as interface, trying to unbind.");
        if (this.f22023c.isUseInnerHms()) {
            BinderAdapter binderAdapter = f22020n;
            if (binderAdapter == null) {
                HMSLog.w("BaseHmsClient", "mInnerBinderAdapter is null.");
                return;
            }
            binderAdapter.unBind();
        } else {
            BinderAdapter binderAdapter2 = f22019m;
            if (binderAdapter2 == null) {
                HMSLog.w("BaseHmsClient", "mOuterBinderAdapter is null.");
                return;
            }
            binderAdapter2.unBind();
        }
        m(1);
        d(10);
    }

    private void t() {
        if (this.f22023c.isUseInnerHms()) {
            BinderAdapter binderAdapter = f22020n;
            if (binderAdapter != null) {
                binderAdapter.unBind();
                return;
            }
            return;
        }
        BinderAdapter binderAdapter2 = f22019m;
        if (binderAdapter2 != null) {
            binderAdapter2.unBind();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        String innerHmsPkg = this.f22023c.getInnerHmsPkg();
        String serviceAction = getServiceAction();
        HMSLog.i("BaseHmsClient", "enter bindCoreService, packageName is " + innerHmsPkg + ", serviceAction is " + serviceAction);
        j(innerHmsPkg, serviceAction);
    }

    public void connect(int i10) {
        e(i10, false);
    }

    public void connectedInternal(IBinder iBinder) {
        this.f22024d = d.a.i(iBinder);
        if (this.f22024d == null) {
            HMSLog.e("BaseHmsClient", "mService is null, try to unBind.");
            s();
            return;
        }
        onConnecting();
    }

    public void disconnect() {
        AtomicInteger atomicInteger;
        if (this.f22023c.isUseInnerHms()) {
            atomicInteger = f22018l;
        } else {
            atomicInteger = f22017k;
        }
        int i10 = atomicInteger.get();
        HMSLog.i("BaseHmsClient", "Enter disconnect, Connection Status: " + i10);
        if (i10 != 3) {
            if (i10 == 5) {
                l();
                m(1);
                return;
            }
            return;
        }
        t();
        m(1);
    }

    public BinderAdapter getAdapter() {
        HMSLog.i("BaseHmsClient", "getAdapter:isInner:" + this.f22023c.isUseInnerHms() + ", mInnerBinderAdapter:" + f22020n + ", mOuterBinderAdapter:" + f22019m);
        if (this.f22023c.isUseInnerHms()) {
            return f22020n;
        }
        return f22019m;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public List<String> getApiNameList() {
        return this.f22023c.getApiName();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getAppID() {
        return this.f22022b;
    }

    public int getConnectionStatus() {
        AtomicInteger atomicInteger;
        if (this.f22023c.isUseInnerHms()) {
            atomicInteger = f22018l;
        } else {
            atomicInteger = f22017k;
        }
        return atomicInteger.get();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public Context getContext() {
        return this.f22021a;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getCpID() {
        return this.f22023c.getCpID();
    }

    @Deprecated
    public int getMinApkVersion() {
        return 30000000;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getPackageName() {
        return this.f22023c.getClientPackageName();
    }

    public int getRequestHmsVersionCode() {
        return getMinApkVersion();
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public d getService() {
        return this.f22024d;
    }

    public String getServiceAction() {
        HMSPackageManager hMSPackageManager = HMSPackageManager.getInstance(this.f22021a);
        if (this.f22023c.isUseInnerHms()) {
            return hMSPackageManager.getInnerServiceAction();
        }
        return hMSPackageManager.getServiceAction();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getSessionId() {
        return this.f22025e;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public SubAppInfo getSubAppInfo() {
        return this.f22023c.getSubAppID();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getTransportName() {
        return IPCTransport.class.getName();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public boolean isConnected() {
        if (!this.f22023c.isUseInnerHms() ? f22017k.get() == 3 : f22018l.get() == 3) {
            return true;
        }
        return false;
    }

    public boolean isConnecting() {
        AtomicInteger atomicInteger;
        if (this.f22023c.isUseInnerHms()) {
            atomicInteger = f22018l;
        } else {
            atomicInteger = f22017k;
        }
        if (atomicInteger.get() == 5) {
            return true;
        }
        return false;
    }

    void m(int i10) {
        if (this.f22023c.isUseInnerHms()) {
            f22018l.set(i10);
        } else {
            f22017k.set(i10);
        }
    }

    public void onConnecting() {
        q();
    }

    protected final void q() {
        m(3);
        RequestManager.getHandler().sendEmptyMessage(10011);
        ConnectionCallbacks connectionCallbacks = this.f22026f;
        if (connectionCallbacks != null && !(connectionCallbacks instanceof HuaweiApi.RequestHandler)) {
            connectionCallbacks.onConnected();
        }
    }

    public final void setInternalRequest(HuaweiApi.RequestHandler requestHandler) {
        this.f22029i = requestHandler;
    }

    public void setService(d dVar) {
        this.f22024d = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ClientSettings u() {
        return this.f22023c;
    }

    public void connect(int i10, boolean z10) {
        e(i10, z10);
    }
}
