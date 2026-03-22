package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class oJ implements Application.ActivityLifecycleCallbacks {
    public static long ZYk = 0;
    public static boolean oJ = false;
    public static long tB;
    private volatile WeakReference<Activity> WcQ;
    private final AtomicBoolean ex = new AtomicBoolean(false);
    private final RunnableC0242oJ Pfn = new RunnableC0242oJ();

    /* renamed from: ba  reason: collision with root package name */
    private final ba f13424ba = new ba();
    private final Pfn cFZ = new Pfn();

    /* renamed from: so  reason: collision with root package name */
    private final ex f13425so = new ZYk();
    private final ex jFA = new tB();
    private int kkU = 0;
    private volatile CopyOnWriteArrayList<WeakReference<com.bytedance.sdk.component.adexpress.oJ>> dLZ = new CopyOnWriteArrayList<>();
    private HandlerThread BTZ = null;
    private Handler PiB = null;
    private final LinkedList<Activity> awB = new LinkedList<>();

    /* loaded from: classes3.dex */
    class Pfn implements Runnable {
        Pfn() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ApmHelper.isIsInit()) {
                Handler ZYk = com.bytedance.sdk.openadsdk.core.WcQ.ZYk();
                Message obtain = Message.obtain(ZYk, oJ.this.Pfn);
                obtain.what = 1001;
                ZYk.sendMessageDelayed(obtain, 30000L);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class ZYk extends ex {
        private ZYk() {
            super();
        }

        @Override // com.bytedance.sdk.openadsdk.utils.oJ.ex, java.lang.Runnable
        public void run() {
            super.run();
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().ZYk();
            com.bytedance.sdk.openadsdk.utils.Pfn.ZYk();
        }
    }

    /* loaded from: classes3.dex */
    class ba implements Runnable {
        ba() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.core.WcQ.ZYk().removeMessages(1001);
            com.bytedance.sdk.openadsdk.core.si.oJ();
        }
    }

    /* loaded from: classes3.dex */
    public class cFZ implements Runnable {
        private long ZYk;
        private boolean ex;
        private long tB;

        public cFZ(long j10, long j11, boolean z10) {
            this.ZYk = j10;
            this.tB = j11;
            this.ex = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ex) {
                com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(this.ZYk / 1000, this.tB / 1000);
            }
            oJ.this.ex();
        }
    }

    /* loaded from: classes3.dex */
    private static class ex implements Runnable {
        private ex() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.ex.oJ.WcQ oCU = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oCU();
            if (oCU != null && !oCU.oJ() && com.bytedance.sdk.component.utils.Ry.so(com.bytedance.sdk.openadsdk.core.si.oJ())) {
                com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(com.bytedance.sdk.openadsdk.core.BTZ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()));
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.utils.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static class RunnableC0242oJ implements Runnable {
        RunnableC0242oJ() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ofl.tB(new com.bytedance.sdk.component.so.so("reportPvFromBackGround") { // from class: com.bytedance.sdk.openadsdk.utils.oJ.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    ApmHelper.reportPvFromBackGround();
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    private static class tB extends ex {
        private tB() {
            super();
        }

        @Override // com.bytedance.sdk.openadsdk.utils.oJ.ex, java.lang.Runnable
        public void run() {
            super.run();
            com.bytedance.sdk.openadsdk.utils.Pfn.oJ();
        }
    }

    public oJ() {
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ();
    }

    private void tB() {
        this.BTZ = com.bytedance.sdk.component.utils.so.oJ("lifecycle", 10);
        this.PiB = new Handler(this.BTZ.getLooper());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.awB.addFirst(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.dLZ != null && this.dLZ.size() > 0) {
            Iterator<WeakReference<com.bytedance.sdk.component.adexpress.oJ>> it = this.dLZ.iterator();
            while (it.hasNext()) {
                WeakReference<com.bytedance.sdk.component.adexpress.oJ> next = it.next();
                if (next != null && next.get() != null) {
                    try {
                        next.get().oJ(activity);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (this.WcQ != null && this.WcQ.get() == activity) {
            this.WcQ = null;
        }
        this.awB.remove(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i10 = this.kkU - 1;
        this.kkU = i10;
        if (i10 < 0) {
            this.kkU = 0;
        }
        if (ApmHelper.isIsInit()) {
            oJ(this.cFZ);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        oJ(this.f13424ba);
        if (!oJ) {
            ZYk = System.currentTimeMillis();
            oJ = true;
        }
        this.WcQ = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(final Activity activity) {
        Window window;
        try {
            if (cdg.ZYk() && (window = activity.getWindow()) != null) {
                final View decorView = window.getDecorView();
                decorView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.oJ.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(@NonNull View view) {
                        decorView.removeOnAttachStateChangeListener(this);
                        if (cdg.ex(activity)) {
                            cdg.oJ(true);
                        }
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(@NonNull View view) {
                        decorView.removeOnAttachStateChangeListener(this);
                    }
                });
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ActivityLifecycle", th2);
        }
        this.kkU++;
        if (this.ex.get()) {
            this.PiB.removeCallbacks(this.jFA);
            this.PiB.removeCallbacks(this.f13425so);
            oJ(this.jFA);
        }
        this.ex.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.kkU <= 0) {
            this.ex.set(true);
        }
        if (oJ()) {
            oJ = false;
            com.bytedance.sdk.openadsdk.core.WcQ.ZYk.set(false);
            tB = System.currentTimeMillis();
            this.PiB.removeCallbacks(this.jFA);
            this.PiB.removeCallbacks(this.f13425so);
            oJ(this.f13425so);
        }
        oJ(new cFZ(ZYk, tB, oJ()));
    }

    private void oJ(Runnable runnable) {
        if (!this.BTZ.isAlive()) {
            tB();
        }
        this.PiB.postDelayed(runnable, 1000L);
    }

    public boolean ZYk(com.bytedance.sdk.component.adexpress.oJ oJVar) {
        return this.dLZ.remove(new WeakReference(oJVar));
    }

    public Activity ZYk() {
        if (this.awB.isEmpty()) {
            return null;
        }
        return this.awB.getFirst();
    }

    public void oJ(com.bytedance.sdk.component.adexpress.oJ oJVar) {
        this.dLZ.add(new WeakReference<>(oJVar));
    }

    public boolean oJ() {
        return this.ex.get();
    }

    public boolean oJ(boolean z10) {
        Activity activity;
        Window window;
        return (this.WcQ == null || (activity = this.WcQ.get()) == null || (window = activity.getWindow()) == null) ? z10 : window.getDecorView().hasWindowFocus();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
