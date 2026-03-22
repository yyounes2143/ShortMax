package com.applovin.impl;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7993a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7994b;

    /* renamed from: c  reason: collision with root package name */
    private final long f7995c;

    /* renamed from: d  reason: collision with root package name */
    private final long f7996d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7997e;

    /* renamed from: f  reason: collision with root package name */
    private final int f7998f;

    /* renamed from: g  reason: collision with root package name */
    private final int f7999g;

    /* renamed from: h  reason: collision with root package name */
    private final int f8000h;

    /* renamed from: i  reason: collision with root package name */
    private final int f8001i;

    /* renamed from: k  reason: collision with root package name */
    private int f8003k;

    /* renamed from: l  reason: collision with root package name */
    private int f8004l;

    /* renamed from: m  reason: collision with root package name */
    private Integer f8005m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f8006n;

    /* renamed from: o  reason: collision with root package name */
    private volatile boolean f8007o;

    /* renamed from: p  reason: collision with root package name */
    private Handler f8008p;

    /* renamed from: q  reason: collision with root package name */
    private HandlerThread f8009q;

    /* renamed from: s  reason: collision with root package name */
    private c f8011s;

    /* renamed from: j  reason: collision with root package name */
    private WeakReference f8002j = new WeakReference(null);

    /* renamed from: r  reason: collision with root package name */
    private final Runnable f8010r = new Runnable() { // from class: com.applovin.impl.ka
        @Override // java.lang.Runnable
        public final void run() {
            h0.this.a();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements PixelCopy.OnPixelCopyFinishedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f8013a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bitmap f8014b;

        b(d dVar, Bitmap bitmap) {
            this.f8013a = dVar;
            this.f8014b = bitmap;
        }

        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
        public void onPixelCopyFinished(int i10) {
            if (i10 != 0) {
                com.applovin.impl.sdk.o unused = h0.this.f7994b;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = h0.this.f7994b;
                    oVar.b("BlackViewDetector", "Failed to capture screenshot with error code: " + i10);
                }
                this.f8013a.a(true);
                return;
            }
            this.f8013a.a(this.f8014b);
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(int i10, int i11);

        void a(int i10, int i11, int i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface d {
        void a(Bitmap bitmap);

        void a(boolean z10);
    }

    public h0(com.applovin.impl.sdk.k kVar) {
        this.f7993a = kVar;
        this.f7994b = kVar.O();
        this.f7995c = ((Long) kVar.a(v4.X5)).longValue();
        this.f7996d = ((Long) kVar.a(v4.W5)).longValue();
        this.f7999g = ((Integer) kVar.a(v4.Y5)).intValue();
        this.f8000h = ((Integer) kVar.a(v4.Z5)).intValue();
        this.f8001i = ((Integer) kVar.a(v4.f10206a6)).intValue();
        this.f7997e = ((Integer) kVar.a(v4.f10256g6)).intValue();
        this.f7998f = ((Integer) kVar.a(v4.f10264h6)).intValue();
    }

    static /* synthetic */ int a(h0 h0Var) {
        int i10 = h0Var.f8004l;
        h0Var.f8004l = i10 + 1;
        return i10;
    }

    static /* synthetic */ int f(h0 h0Var) {
        int i10 = h0Var.f8003k;
        h0Var.f8003k = i10 + 1;
        return i10;
    }

    private void c() {
        if (this.f8003k >= this.f7998f && !this.f8007o) {
            this.f8007o = true;
            h();
        }
        if (this.f8003k < this.f7997e || this.f8006n) {
            return;
        }
        this.f8006n = true;
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        c cVar = this.f8011s;
        if (cVar != null) {
            cVar.a(this.f7997e, this.f8003k, this.f8004l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        c cVar = this.f8011s;
        if (cVar != null) {
            cVar.a(this.f8003k, this.f8004l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.f8011s = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f7995c > 0) {
            c();
            if (this.f8008p != null) {
                if (this.f8006n && this.f8007o) {
                    k();
                    return;
                } else {
                    this.f8008p.postDelayed(this.f8010r, this.f7995c);
                    return;
                }
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.f7994b.k("BlackViewDetector", "Monitoring handler was unexpectedly null");
            }
            k();
            return;
        }
        if (this.f8003k == 1) {
            if (!this.f8007o) {
                this.f8007o = true;
                h();
            }
            if (!this.f8006n) {
                this.f8006n = true;
                i();
            }
        }
        k();
    }

    private void h() {
        View view = (View) this.f8002j.get();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7994b;
            oVar.k("BlackViewDetector", "Notifying black view confirmed: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.la
            @Override // java.lang.Runnable
            public final void run() {
                h0.this.d();
            }
        });
    }

    private void i() {
        View view = (View) this.f8002j.get();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7994b;
            oVar.k("BlackViewDetector", "Notifying black view detected: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ia
            @Override // java.lang.Runnable
            public final void run() {
                h0.this.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f8003k = 0;
        this.f8005m = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.f8002j.get() != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7994b;
                oVar.a("BlackViewDetector", "Stopped monitoring view: " + this.f8002j.get());
            }
            this.f8002j.clear();
        }
        Handler handler = this.f8008p;
        if (handler != null) {
            handler.removeCallbacks(this.f8010r);
            this.f8008p = null;
        }
        if (this.f8011s != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ja
                @Override // java.lang.Runnable
                public final void run() {
                    h0.this.f();
                }
            });
        }
    }

    public void b() {
        k();
        HandlerThread handlerThread = this.f8009q;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f8009q = null;
        }
    }

    public void a(View view, c cVar) {
        if (((Boolean) this.f7993a.a(v4.V5)).booleanValue()) {
            View view2 = (View) this.f8002j.get();
            if (view2 != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7994b;
                    oVar.k("BlackViewDetector", "Monitoring is already in progress for a view: " + view2);
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7994b;
                oVar2.a("BlackViewDetector", "Started monitoring view: " + view);
            }
            try {
                if (this.f8009q == null) {
                    HandlerThread handlerThread = new HandlerThread("AppLovinSdk:black_view_detector");
                    this.f8009q = handlerThread;
                    handlerThread.start();
                } else {
                    this.f7993a.E().a(c2.f7679y0, "BlackViewDetector:maybeStartMonitoring() unexpectedly called multiple times");
                    k();
                }
                this.f8011s = cVar;
                this.f8002j = new WeakReference(view);
                j();
                this.f8006n = false;
                this.f8007o = false;
                Handler handler = new Handler(this.f8009q.getLooper());
                this.f8008p = handler;
                handler.postDelayed(this.f8010r, this.f7996d);
            } catch (Throwable th2) {
                k();
                this.f7993a.E().a("BlackViewDetector", "maybeStartMonitoring", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements d {
        a() {
        }

        @Override // com.applovin.impl.h0.d
        public void a(Bitmap bitmap) {
            try {
                h0.a(h0.this);
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i10 = width / h0.this.f7999g;
                int i11 = height / h0.this.f7999g;
                int i12 = i10 / 2;
                for (int i13 = i11 / 2; i13 < height; i13 += i11) {
                    for (int i14 = i12; i14 < width; i14 += i10) {
                        int pixel = bitmap.getPixel(i14, i13);
                        if (!h0.this.a(pixel)) {
                            if (h0.this.f8005m == null) {
                                h0.this.f8005m = Integer.valueOf(pixel);
                            }
                        } else {
                            bitmap.recycle();
                            h0.this.j();
                            h0.this.g();
                            return;
                        }
                    }
                }
                h0.f(h0.this);
                bitmap.recycle();
                h0.this.g();
            } catch (Exception e10) {
                h0.this.f7993a.E().a("BlackViewDetector", "onScreenshotCaptured", e10);
                h0.this.k();
            }
        }

        @Override // com.applovin.impl.h0.d
        public void a(boolean z10) {
            if (z10) {
                h0.this.k();
            } else {
                h0.this.g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ActivityManager.MemoryInfo a10;
        View view = (View) this.f8002j.get();
        if (view == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7994b.k("BlackViewDetector", "Monitored view no longer exists.");
            }
            k();
            return;
        }
        Long l10 = (Long) this.f7993a.a(v4.f10240e6);
        if (l10.longValue() > 0 && (a10 = k7.a((ActivityManager) com.applovin.impl.sdk.k.o().getSystemService("activity"))) != null && a10.availMem < l10.longValue()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7994b.k("BlackViewDetector", "Cancelling black view detection due to low memory");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7994b;
            oVar.a("BlackViewDetector", "Checking for black view: " + view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth != 0 && measuredHeight != 0) {
            a(view, new a());
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar2 = this.f7994b;
            oVar2.k("BlackViewDetector", "Monitored view is not visible due to dimensions (width = " + measuredWidth + ", height = " + measuredHeight + ")");
        }
        j();
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i10) {
        boolean z10;
        int red = Color.red(i10);
        int green = Color.green(i10);
        int blue = Color.blue(i10);
        Integer num = this.f8005m;
        if (num != null) {
            int red2 = Color.red(num.intValue());
            int green2 = Color.green(this.f8005m.intValue());
            int blue2 = Color.blue(this.f8005m.intValue());
            if (Math.abs(red - red2) > this.f8001i || Math.abs(green - green2) > this.f8001i || Math.abs(blue - blue2) > this.f8001i) {
                z10 = true;
                int i11 = this.f8000h;
                return red <= i11 ? true : true;
            }
        }
        z10 = false;
        int i112 = this.f8000h;
        return red <= i112 ? true : true;
    }

    private void a(View view, d dVar) {
        if (o0.h()) {
            Activity a10 = this.f7993a.e().a();
            if (a10 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7994b.b("BlackViewDetector", "Failed to capture screenshot due to no active activity");
                }
                dVar.a(false);
                return;
            }
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int i10 = iArr[0];
            int i11 = iArr[1];
            Rect rect = new Rect(i10, i11, i10 + measuredWidth, i11 + measuredHeight);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                PixelCopy.request(a10.getWindow(), rect, createBitmap, new b(dVar, createBitmap), new Handler());
                return;
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7994b;
                    oVar.b("BlackViewDetector", "Failed to capture screenshot due to exception: " + th2);
                }
                dVar.a(true);
                return;
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7994b.k("BlackViewDetector", "Unable to capture screenshots on views below API 26");
        }
        dVar.a(true);
    }
}
