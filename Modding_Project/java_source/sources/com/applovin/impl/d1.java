package com.applovin.impl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.core.net.MailTo;
import androidx.webkit.internal.AssetHelper;
import com.applovin.creative.MaxCreativeDebuggerActivity;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.d;
import com.applovin.impl.l1;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class d1 implements l1.a {

    /* renamed from: m  reason: collision with root package name */
    private static WeakReference f7759m;

    /* renamed from: n  reason: collision with root package name */
    private static final AtomicBoolean f7760n = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7761a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f7762b;

    /* renamed from: e  reason: collision with root package name */
    private final c1 f7765e;

    /* renamed from: g  reason: collision with root package name */
    private l1 f7767g;

    /* renamed from: h  reason: collision with root package name */
    private d7 f7768h;

    /* renamed from: i  reason: collision with root package name */
    private int f7769i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f7770j;

    /* renamed from: k  reason: collision with root package name */
    private long f7771k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f7772l;

    /* renamed from: c  reason: collision with root package name */
    private final List f7763c = new ArrayList(10);

    /* renamed from: d  reason: collision with root package name */
    private final Object f7764d = new Object();

    /* renamed from: f  reason: collision with root package name */
    private WeakReference f7766f = new WeakReference(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.applovin.impl.b {
        a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Started Creative Debugger");
                if (!d1.this.h() || d1.f7759m.get() != activity) {
                    MaxCreativeDebuggerActivity maxCreativeDebuggerActivity = (MaxCreativeDebuggerActivity) activity;
                    WeakReference unused = d1.f7759m = new WeakReference(maxCreativeDebuggerActivity);
                    maxCreativeDebuggerActivity.a(d1.this.f7765e, d1.this.f7761a.e());
                }
                d1.f7760n.set(false);
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.o.g("AppLovinSdk", "Creative Debugger destroyed");
                WeakReference unused = d1.f7759m = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements d.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f7774a;

        b(Object obj) {
            this.f7774a = obj;
        }

        @Override // com.applovin.impl.d.b
        public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
            maxCreativeDebuggerDisplayedAdActivity.a(new p1(this.f7774a, d1.this.f7761a.I().b()), d1.this.f7761a);
            d1.f7760n.set(false);
        }
    }

    public d1(com.applovin.impl.sdk.k kVar) {
        this.f7761a = kVar;
        Context o10 = com.applovin.impl.sdk.k.o();
        this.f7762b = o10;
        this.f7765e = new c1(o10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(SystemClock.elapsedRealtime() - this.f7771k);
        if (this.f7771k != 0 && seconds >= 10) {
            this.f7761a.E().a(c2.f7636d, "showingMediationDebuggerFromHoldingCreativeDebuggerButton");
            this.f7761a.Y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        this.f7769i = 0;
    }

    private void m() {
        this.f7761a.e().a(new a());
    }

    public void k() {
        l1 l1Var = this.f7767g;
        if (l1Var != null) {
            l1Var.b();
        }
    }

    public void l() {
        if (!g()) {
            return;
        }
        this.f7770j = ((Boolean) this.f7761a.a(v4.f10275j1)).booleanValue();
        if (this.f7767g == null) {
            this.f7767g = new l1(this.f7761a, this);
        }
        this.f7767g.a();
    }

    public void n() {
        ArrayList arrayList;
        if (!h() && f7760n.compareAndSet(false, true)) {
            Object a10 = this.f7761a.I().a();
            if (a10 != null) {
                e(a10);
                return;
            }
            synchronized (this.f7764d) {
                arrayList = new ArrayList(this.f7763c);
            }
            this.f7765e.a(arrayList, this.f7761a);
            if (!this.f7772l) {
                m();
                this.f7772l = true;
            }
            com.applovin.impl.sdk.o.g("AppLovinSdk", "Starting Creative Debugger...");
            d.a(this.f7762b, MaxCreativeDebuggerActivity.class);
            return;
        }
        com.applovin.impl.sdk.o.h("AppLovinSdk", "Creative Debugger is already showing");
    }

    private void e(Object obj) {
        com.applovin.impl.sdk.o.g("AppLovinSdk", "Starting Creative Debugger for current fullscreen ad...");
        d.a(this.f7762b, MaxCreativeDebuggerDisplayedAdActivity.class, this.f7761a.e(), new b(obj));
    }

    private Drawable f() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, 127));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        WeakReference weakReference = f7759m;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public boolean g() {
        return ((Boolean) this.f7761a.a(v4.f10267i1)).booleanValue() && this.f7761a.o0().isCreativeDebuggerEnabled();
    }

    private boolean c(Object obj) {
        MaxAdFormat format;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            format = ((com.applovin.impl.sdk.ad.b) obj).getAdZone().d();
        } else {
            format = obj instanceof v2 ? ((v2) obj).getFormat() : null;
        }
        return format != null && format.isFullscreenAd();
    }

    @Override // com.applovin.impl.l1.a
    public void b() {
        if (this.f7769i == 0) {
            this.f7768h = d7.a(TimeUnit.SECONDS.toMillis(3L), this.f7761a, new Runnable() { // from class: com.applovin.impl.m9
                @Override // java.lang.Runnable
                public final void run() {
                    d1.this.j();
                }
            });
        }
        int i10 = this.f7769i;
        if (i10 % 2 == 0) {
            this.f7769i = i10 + 1;
        }
    }

    public void d(Object obj) {
        if (g() && obj != null) {
            if (!t3.a(obj) || c(obj)) {
                if (t3.b(obj) && c(obj)) {
                    return;
                }
                synchronized (this.f7764d) {
                    try {
                        this.f7763c.add(0, new p1(obj, System.currentTimeMillis()));
                        if (this.f7763c.size() > 10) {
                            List list = this.f7763c;
                            list.remove(list.size() - 1);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (g() && this.f7766f.get() == null && !h()) {
            Activity b10 = this.f7761a.e().b();
            if (b10 == null) {
                this.f7761a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7761a.O().b("AppLovinSdk", "Failed to display Creative Debugger button");
                    return;
                }
                return;
            }
            View findViewById = b10.findViewById(16908290);
            if (findViewById instanceof FrameLayout) {
                final FrameLayout frameLayout = (FrameLayout) findViewById;
                final View a10 = a(frameLayout, b10);
                frameLayout.addView(a10);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(150L);
                a10.startAnimation(alphaAnimation);
                final ViewTreeObserver viewTreeObserver = findViewById.getViewTreeObserver();
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.k9
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        d1.this.a(a10, frameLayout);
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.l9
                    @Override // java.lang.Runnable
                    public final void run() {
                        d1.this.a(a10, frameLayout, viewTreeObserver, onGlobalLayoutListener);
                    }
                }, TimeUnit.SECONDS.toMillis(5L));
                this.f7766f = new WeakReference(a10);
            }
        }
    }

    @Override // com.applovin.impl.l1.a
    public void a() {
        int i10 = this.f7769i;
        if (i10 % 2 == 1) {
            this.f7769i = i10 + 1;
        }
        if (this.f7769i / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.j9
                @Override // java.lang.Runnable
                public final void run() {
                    d1.this.e();
                }
            });
            this.f7769i = 0;
            this.f7768h.a();
        }
    }

    private void b(View view, FrameLayout frameLayout) {
        if (this.f7770j) {
            view.setOnTouchListener(null);
            this.f7771k = 0L;
        }
        frameLayout.removeView(view);
        this.f7766f = new WeakReference(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout) {
        if (view.getParent() != null || this.f7766f.get() == null) {
            return;
        }
        frameLayout.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (this.f7771k > 0 && this.f7770j) {
            view.setVisibility(4);
        } else {
            b(view, frameLayout);
        }
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public String b(Object obj) {
        JSONObject a10;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            return ((com.applovin.impl.sdk.ad.b) obj).getOriginalFullResponse().toString();
        }
        if (obj instanceof v2) {
            String E = ((v2) obj).E();
            return (!t3.b(obj) || (a10 = new k(E, this.f7761a).a()) == null) ? E : a10.toString();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.widget.ImageButton, android.widget.ImageView, android.view.View] */
    private View a(final FrameLayout frameLayout, Activity activity) {
        Button button;
        int dpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i10 = dpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, 8388629);
        layoutParams.setMargins(i10, i10, i10, i10);
        try {
            ?? imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(R.drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i10, i10, i10, i10 * 2);
            button = imageButton;
        } catch (Throwable unused) {
            Button button2 = new Button(activity);
            button2.setText("ⓘ");
            button2.setTextColor(-1);
            button2.setAllCaps(false);
            button2.setTextSize(2, 20.0f);
            button2.setPadding(0, 0, 0, 0);
            button = button2;
        }
        button.setLayoutParams(layoutParams);
        button.setBackground(f());
        if (this.f7770j) {
            button.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.n9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a10;
                    a10 = d1.this.a(frameLayout, view, motionEvent);
                    return a10;
                }
            });
        } else {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.o9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d1.this.a(view);
                }
            });
        }
        if (o0.e()) {
            button.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(FrameLayout frameLayout, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f7771k = SystemClock.elapsedRealtime();
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.p9
                @Override // java.lang.Runnable
                public final void run() {
                    d1.this.i();
                }
            }, TimeUnit.SECONDS.toMillis(10L));
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (view.getVisibility() == 0) {
                this.f7771k = 0L;
                n();
            } else {
                b(view, frameLayout);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        n();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[], java.io.Serializable] */
    public void a(p1 p1Var, Context context, boolean z10) {
        Object a10 = p1Var.a();
        String a11 = a(p1Var);
        s2 s2Var = new s2();
        if (z10) {
            s2Var.b("Please describe the issue you had with this ad:\n\n\n\n");
        }
        s2Var.b(a11);
        String b10 = this.f7761a.z().b(a10);
        if (b10 != null) {
            s2Var.a("\nBid Response:\n");
            s2Var.a(b10);
        }
        Intent createChooser = Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.SUBJECT", a10 instanceof com.applovin.impl.sdk.ad.b ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", s2Var.toString()).setPackage(null), "Share Ad Report");
        if (z10) {
            try {
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(MailTo.MAILTO_SCHEME)).putExtra("android.intent.extra.SUBJECT", a10 instanceof com.applovin.impl.sdk.ad.b ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", s2Var.toString()).setPackage("com.google.android.gm");
                String str = this.f7761a.o0().getExtraParameters().get("creative_debugger_email_recipients");
                if (StringUtils.isValidString(str)) {
                    intent.putExtra("android.intent.extra.EMAIL", (Serializable) CollectionUtils.explode(str).toArray());
                }
                context.startActivity(intent);
                return;
            } catch (ActivityNotFoundException unused) {
                context.startActivity(createChooser);
                return;
            }
        }
        context.startActivity(createChooser);
    }

    public String a(p1 p1Var) {
        Object a10 = p1Var.a();
        s2 s2Var = new s2();
        s2Var.b("Ad Info:\n");
        if (a10 instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) a10;
            s2Var.a(AndroidInitializeBoldSDK.MSG_NETWORK, "APPLOVIN").a(bVar).b(bVar);
        } else if (a10 instanceof v2) {
            s2Var.a((v2) a10);
        }
        s2Var.a(this.f7761a);
        s2Var.a("Epoch Timestamp (ms)", Long.valueOf(p1Var.b()));
        s2Var.a("\nDebug Info:\n").a("Platform", "fireos".equals(this.f7761a.B().y()) ? "Fire OS" : "Android").a("AppLovin SDK Version", AppLovinSdk.VERSION).a("Plugin Version", this.f7761a.a(v4.I3)).a("App Package Name", this.f7762b.getPackageName()).a("Device", String.format("%s %s (%s)", Build.BRAND, Build.MODEL, Build.DEVICE)).a("OS Version", Build.VERSION.RELEASE).a("AppLovin Random Token", this.f7761a.i0()).a("Ad Review Version", j.b()).a(a(a10)).a("User ID", this.f7761a.x0().e() != null ? this.f7761a.x0().e() : "None").a("MD", this.f7761a.a(v4.f10353t));
        return s2Var.toString();
    }

    private Bundle a(Object obj) {
        this.f7761a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f7761a.O();
            O.a("CreativeDebuggerService", "Retrieving Ad Review info for ad: " + obj);
        }
        String a10 = k7.a(obj);
        Bundle a11 = this.f7761a.j().a(a10);
        this.f7761a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.f7761a.O();
            O2.a("CreativeDebuggerService", "Serve id: " + a10);
        }
        this.f7761a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O3 = this.f7761a.O();
            O3.a("CreativeDebuggerService", "Public data: " + a11);
        }
        if (a11 != null) {
            for (String str : a11.keySet()) {
                Object obj2 = a11.get(str);
                a11.remove(str);
                BundleUtils.put(StringUtils.toHumanReadableString(str), obj2, a11);
            }
            return a11;
        }
        return null;
    }
}
