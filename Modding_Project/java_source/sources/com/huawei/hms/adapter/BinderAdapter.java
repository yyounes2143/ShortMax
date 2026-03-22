package com.huawei.hms.adapter;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.api.BindingFailedResolution;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
/* loaded from: classes5.dex */
public class BinderAdapter implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f21820a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21821b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21822c;

    /* renamed from: d  reason: collision with root package name */
    private BinderCallBack f21823d;

    /* renamed from: e  reason: collision with root package name */
    private IBinder f21824e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f21825f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private boolean f21826g = false;

    /* renamed from: h  reason: collision with root package name */
    private Handler f21827h = null;

    /* renamed from: i  reason: collision with root package name */
    private Handler f21828i = null;

    /* loaded from: classes5.dex */
    public interface BinderCallBack {
        void onBinderFailed(int i10);

        void onBinderFailed(int i10, Intent intent);

        void onNullBinding(ComponentName componentName);

        void onServiceConnected(ComponentName componentName, IBinder iBinder);

        void onServiceDisconnected(ComponentName componentName);

        void onTimedDisconnected();
    }

    public BinderAdapter(Context context, String str, String str2) {
        this.f21820a = context;
        this.f21821b = str;
        this.f21822c = str2;
    }

    private void a() {
        if (TextUtils.isEmpty(this.f21821b) || TextUtils.isEmpty(this.f21822c)) {
            g();
        }
        Intent intent = new Intent(this.f21821b);
        try {
            intent.setPackage(this.f21822c);
        } catch (IllegalArgumentException unused) {
            HMSLog.e("BinderAdapter", "IllegalArgumentException when bindCoreService intent.setPackage");
            g();
        }
        synchronized (this.f21825f) {
            try {
                if (this.f21820a.bindService(intent, this, 1)) {
                    i();
                    return;
                }
                this.f21826g = true;
                g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        BinderCallBack h10 = h();
        if (h10 != null) {
            h10.onBinderFailed(-1);
        }
    }

    private void e() {
        synchronized (this.f21825f) {
            try {
                Handler handler = this.f21827h;
                if (handler != null) {
                    handler.removeMessages(j());
                    this.f21827h = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void f() {
        Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.huawei.hms.adapter.BinderAdapter.2
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message != null && message.what == BinderAdapter.this.k()) {
                    HMSLog.i("BinderAdapter", "The serviceConnection has been bind for 1800s, need to unbind.");
                    BinderAdapter.this.unBind();
                    BinderCallBack h10 = BinderAdapter.this.h();
                    if (h10 != null) {
                        h10.onTimedDisconnected();
                        return true;
                    }
                    return true;
                }
                return false;
            }
        });
        this.f21828i = handler;
        handler.sendEmptyMessageDelayed(k(), 1800000L);
    }

    private void g() {
        HMSLog.e("BinderAdapter", "In connect, bind core service fail");
        try {
            ComponentName componentName = new ComponentName(this.f21820a.getApplicationInfo().packageName, "com.huawei.hms.activity.BridgeActivity");
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.putExtra(BridgeActivity.EXTRA_DELEGATE_CLASS_NAME, BindingFailedResolution.class.getName());
            BinderCallBack h10 = h();
            if (h10 != null) {
                h10.onBinderFailed(-1, intent);
            }
        } catch (RuntimeException e10) {
            HMSLog.e("BinderAdapter", "getBindFailPendingIntent failed " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BinderCallBack h() {
        return this.f21823d;
    }

    private void i() {
        Handler handler = this.f21827h;
        if (handler != null) {
            handler.removeMessages(j());
        } else {
            this.f21827h = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.huawei.hms.adapter.BinderAdapter.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (message != null && message.what == BinderAdapter.this.j()) {
                        HMSLog.e("BinderAdapter", "In connect, bind core service time out");
                        BinderAdapter.this.d();
                        return true;
                    }
                    return false;
                }
            });
        }
        this.f21827h.sendEmptyMessageDelayed(j(), 10000L);
    }

    private void l() {
        HMSLog.d("BinderAdapter", "removeDelayDisconnectTask.");
        synchronized (BinderAdapter.class) {
            try {
                Handler handler = this.f21828i;
                if (handler != null) {
                    handler.removeMessages(k());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void binder(BinderCallBack binderCallBack) {
        if (binderCallBack == null) {
            return;
        }
        this.f21823d = binderCallBack;
        a();
    }

    public String getServiceAction() {
        return this.f21821b;
    }

    public IBinder getServiceBinder() {
        return this.f21824e;
    }

    protected int j() {
        return 0;
    }

    protected int k() {
        return 0;
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        HMSLog.e("BinderAdapter", "Enter onNullBinding, than unBind.");
        if (this.f21826g) {
            this.f21826g = false;
            return;
        }
        unBind();
        e();
        BinderCallBack h10 = h();
        if (h10 != null) {
            h10.onNullBinding(componentName);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HMSLog.i("BinderAdapter", "BinderAdapter Enter onServiceConnected.");
        this.f21824e = iBinder;
        e();
        BinderCallBack h10 = h();
        if (h10 != null) {
            h10.onServiceConnected(componentName, iBinder);
        }
        f();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.i("BinderAdapter", "Enter onServiceDisconnected.");
        BinderCallBack h10 = h();
        if (h10 != null) {
            h10.onServiceDisconnected(componentName);
        }
        l();
    }

    public void unBind() {
        Util.unBindServiceCatchException(this.f21820a, this);
    }

    public void updateDelayTask() {
        HMSLog.d("BinderAdapter", "updateDelayTask.");
        synchronized (BinderAdapter.class) {
            try {
                Handler handler = this.f21828i;
                if (handler != null) {
                    handler.removeMessages(k());
                    this.f21828i.sendEmptyMessageDelayed(k(), 1800000L);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
