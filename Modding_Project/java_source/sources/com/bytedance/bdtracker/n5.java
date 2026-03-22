package com.bytedance.bdtracker;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes3.dex */
public final class n5<SERVICE, RESULT> {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f12264a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    public final Intent f12265b;

    /* renamed from: c  reason: collision with root package name */
    public final b<SERVICE, RESULT> f12266c;

    /* renamed from: d  reason: collision with root package name */
    public final Context f12267d;

    /* loaded from: classes3.dex */
    public interface b<T, RESULT> {
    }

    public n5(Context context, Intent intent, b<SERVICE, RESULT> bVar) {
        this.f12267d = context;
        this.f12265b = intent;
        this.f12266c = bVar;
    }

    public final void a(n5<SERVICE, RESULT>.a aVar) {
        if (aVar != null) {
            try {
                this.f12267d.unbindService(aVar);
            } catch (Throwable th2) {
                LoggerImpl.global().error(1, "Release connection failed", th2, new Object[0]);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class a implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        public final CountDownLatch f12268a;

        /* renamed from: b  reason: collision with root package name */
        public final b<SERVICE, RESULT> f12269b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public SERVICE f12270c;

        public a(n5 n5Var, CountDownLatch countDownLatch, b<SERVICE, RESULT> bVar) {
            this.f12268a = countDownLatch;
            this.f12269b = bVar;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IAppLogLogger global = LoggerImpl.global();
            global.debug(1, "ServiceBlockBinder#onServiceConnected " + componentName, new Object[0]);
            try {
                this.f12270c = (SERVICE) ((com.bytedance.dr.impl.a) this.f12269b).a(iBinder);
                try {
                    this.f12268a.countDown();
                } catch (Exception e10) {
                    LoggerImpl.global().error(1, "count down failed", e10, new Object[0]);
                }
            } catch (Throwable th2) {
                try {
                    LoggerImpl.global().error(1, "ServiceBlockBinder#onServiceConnected", th2, new Object[0]);
                    try {
                        this.f12268a.countDown();
                    } catch (Exception e11) {
                        LoggerImpl.global().error(1, "count down failed", e11, new Object[0]);
                    }
                } catch (Throwable th3) {
                    try {
                        this.f12268a.countDown();
                    } catch (Exception e12) {
                        LoggerImpl.global().error(1, "count down failed", e12, new Object[0]);
                    }
                    throw th3;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            IAppLogLogger global = LoggerImpl.global();
            global.debug(1, "ServiceBlockBinder#onServiceDisconnected" + componentName, new Object[0]);
            try {
                this.f12268a.countDown();
            } catch (Exception e10) {
                LoggerImpl.global().error(1, "countDown failed", e10, new Object[0]);
            }
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
        }
    }
}
