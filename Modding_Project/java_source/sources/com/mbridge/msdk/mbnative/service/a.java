package com.mbridge.msdk.mbnative.service;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.mbnative.controller.d;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.Map;
/* compiled from: NativeProvider.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private NativeController f28104a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f28105b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.mbnative.listener.a f28106c;

    /* renamed from: d  reason: collision with root package name */
    private NativeListener.NativeTrackingListener f28107d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeProvider.java */
    /* renamed from: com.mbridge.msdk.mbnative.service.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0394a implements Runnable {
        RunnableC0394a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f();
        }
    }

    public a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f28106c.onAdLoadError("current request is loading");
        this.f28106c.b();
    }

    public static void preload(Map<String, Object> map, int i10) {
        p0.c("NativeProvider", "native provider preload");
        new d().a(map, i10);
    }

    public void b(View view, Campaign campaign) {
        p0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f28104a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view);
    }

    public String c() {
        NativeController nativeController = this.f28104a;
        if (nativeController != null) {
            return nativeController.g();
        }
        return "";
    }

    public void d() {
        a(0, "");
    }

    public void e() {
        a(1, "");
    }

    public void g() {
        try {
            this.f28104a.i();
        } catch (Exception unused) {
            p0.b("NativeProvider", "release failed");
        }
    }

    public void a(com.mbridge.msdk.mbnative.listener.a aVar) {
        this.f28106c = aVar;
    }

    public a(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f28106c = aVar;
        this.f28107d = nativeTrackingListener;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f28107d = nativeTrackingListener;
    }

    public void a(Context context, Resources resources, Map<String, Object> map) {
        this.f28104a = new NativeController(this.f28106c, this.f28107d, map, context);
    }

    public void b(View view, List<View> list, Campaign campaign) {
        p0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f28104a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view, list);
    }

    public void a(String str) {
        a(0, str);
    }

    public void a() {
        try {
            this.f28104a.d();
        } catch (Exception unused) {
            p0.b("NativeProvider", "clear cache failed");
        }
    }

    public String b() {
        NativeController nativeController = this.f28104a;
        if (nativeController != null) {
            return nativeController.e();
        }
        return "";
    }

    public void a(View view, List<View> list, Campaign campaign) {
        NativeController nativeController = this.f28104a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view, list);
    }

    public void a(View view, Campaign campaign) {
        p0.c("NativeProvider", "native provider registerView");
        NativeController nativeController = this.f28104a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view);
    }

    private void a(int i10, String str) {
        if (this.f28104a != null) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f28106c;
            if (aVar != null && aVar.a()) {
                if (u0.h()) {
                    f();
                    return;
                } else {
                    this.f28105b.post(new RunnableC0394a());
                    return;
                }
            }
            com.mbridge.msdk.mbnative.listener.a aVar2 = this.f28106c;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.f28104a.a(i10, str);
        }
    }
}
