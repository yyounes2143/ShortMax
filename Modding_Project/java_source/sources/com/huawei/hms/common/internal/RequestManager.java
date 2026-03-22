package com.huawei.hms.common.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.core.aidl.d;
import com.huawei.hms.support.log.HMSLog;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes5.dex */
public class RequestManager implements Handler.Callback {
    public static final int NOTIFY_CONNECT_FAILED = 10012;
    public static final int NOTIFY_CONNECT_SUCCESS = 10011;
    public static final int NOTIFY_CONNECT_SUSPENDED = 10013;

    /* renamed from: b  reason: collision with root package name */
    private static volatile RequestManager f22069b;

    /* renamed from: c  reason: collision with root package name */
    private static Handler f22070c;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f22068a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static Queue<HuaweiApi.RequestHandler> f22071d = new ConcurrentLinkedQueue();

    /* renamed from: e  reason: collision with root package name */
    private static Map<String, HuaweiApi.RequestHandler> f22072e = new LinkedHashMap();

    private RequestManager(Looper looper) {
        f22070c = new Handler(looper, this);
    }

    public static void addRequestToQueue(HuaweiApi.RequestHandler requestHandler) {
        f22071d.add(requestHandler);
    }

    public static void addToConnectedReqMap(final String str, final HuaweiApi.RequestHandler requestHandler) {
        if (f22070c == null) {
            return;
        }
        HMSLog.i("RequestManager", "addToConnectedReqMap");
        f22070c.post(new Runnable() { // from class: com.huawei.hms.common.internal.RequestManager.1
            @Override // java.lang.Runnable
            public void run() {
                RequestManager.f22072e.put(str, requestHandler);
            }
        });
    }

    private void b(Message message) {
        HMSLog.i("RequestManager", "NOTIFY_CONNECT_FAILED.");
        try {
            BaseHmsClient.ConnectionResultWrapper connectionResultWrapper = (BaseHmsClient.ConnectionResultWrapper) message.obj;
            HuaweiApi.RequestHandler request = connectionResultWrapper.getRequest();
            f22071d.remove(request);
            request.onConnectionFailed(connectionResultWrapper.getConnectionResult());
        } catch (RuntimeException e10) {
            HMSLog.e("RequestManager", "<handleConnectFailed> handle Failed" + e10.getMessage());
        }
    }

    private void c() {
        while (!f22071d.isEmpty()) {
            HuaweiApi.RequestHandler poll = f22071d.poll();
            if (poll != null) {
                AnyClient client = poll.getClient();
                if (client instanceof BaseHmsClient) {
                    BaseHmsClient baseHmsClient = (BaseHmsClient) client;
                    baseHmsClient.setService(d.a.i(baseHmsClient.getAdapter().getServiceBinder()));
                    poll.onConnected();
                }
            }
        }
    }

    private void d() {
        HMSLog.i("RequestManager", "NOTIFY_CONNECT_SUSPENDED.");
        while (!f22071d.isEmpty()) {
            f22071d.poll().onConnectionSuspended(1);
        }
        e();
    }

    private void e() {
        HMSLog.i("RequestManager", "notifyRunningRequestConnectSuspend, connectedReqMap.size(): " + f22072e.size());
        Iterator<Map.Entry<String, HuaweiApi.RequestHandler>> it = f22072e.entrySet().iterator();
        while (it.hasNext()) {
            try {
                it.next().getValue().onConnectionSuspended(1);
            } catch (RuntimeException e10) {
                HMSLog.e("RequestManager", "NOTIFY_CONNECT_SUSPENDED Exception: " + e10.getMessage());
            }
            it.remove();
        }
    }

    public static Handler getHandler() {
        return f22070c;
    }

    public static RequestManager getInstance() {
        synchronized (f22068a) {
            try {
                if (f22069b == null) {
                    HandlerThread handlerThread = new HandlerThread("RequestManager");
                    handlerThread.start();
                    f22069b = new RequestManager(handlerThread.getLooper());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f22069b;
    }

    public static void removeReqByTransId(final String str) {
        if (f22070c == null) {
            return;
        }
        HMSLog.i("RequestManager", "removeReqByTransId");
        f22070c.post(new Runnable() { // from class: com.huawei.hms.common.internal.RequestManager.2
            @Override // java.lang.Runnable
            public void run() {
                RequestManager.f22072e.remove(str);
            }
        });
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message == null) {
            return false;
        }
        HMSLog.i("RequestManager", "RequestManager handleMessage.");
        switch (message.what) {
            case 10011:
                c();
                return true;
            case 10012:
                b(message);
                return true;
            case NOTIFY_CONNECT_SUSPENDED /* 10013 */:
                d();
                return true;
            default:
                HMSLog.i("RequestManager", "handleMessage unknown msg:" + message.what);
                return false;
        }
    }
}
