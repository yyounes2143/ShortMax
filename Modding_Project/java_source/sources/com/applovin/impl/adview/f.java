package com.applovin.impl.adview;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.e;
import com.applovin.impl.m1;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class f extends Dialog implements m1 {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f7438a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7439b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7440c;

    /* renamed from: d  reason: collision with root package name */
    private final b f7441d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.a f7442e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f7443f;

    /* renamed from: g  reason: collision with root package name */
    private e f7444g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.applovin.impl.sdk.ad.a aVar, b bVar, Activity activity, com.applovin.impl.sdk.k kVar) {
        super(activity, 16973840);
        if (aVar != null) {
            if (bVar != null) {
                if (kVar != null) {
                    if (activity != null) {
                        this.f7439b = kVar;
                        this.f7440c = kVar.O();
                        this.f7438a = activity;
                        this.f7441d = bVar;
                        this.f7442e = aVar;
                        requestWindowFeature(1);
                        setCancelable(false);
                        return;
                    }
                    throw new IllegalArgumentException("No activity specified");
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No main view specified");
        }
        throw new IllegalArgumentException("No ad specified");
    }

    private void g() {
        this.f7438a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.i0
            @Override // java.lang.Runnable
            public final void run() {
                f.this.f();
            }
        });
    }

    @Override // com.applovin.impl.m1
    public void dismiss(String str) {
        this.f7438a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.h0
            @Override // java.lang.Runnable
            public final void run() {
                f.this.e();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f7441d.a("javascript:al_onBackPressed();");
        dismiss("expanded_ad_dialog_back_button");
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.f7438a.getWindow().getAttributes().flags, this.f7438a.getWindow().getAttributes().flags);
                window.addFlags(16777216);
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7440c.b("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7440c.a("ExpandedAdDialog", "Setting window flags failed.", th2);
            }
        }
    }

    private void a() {
        this.f7441d.a("javascript:al_onCloseTapped();");
        dismiss("expanded_ad_dialog_close_button");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (this.f7444g.isClickable()) {
            this.f7444g.performClick();
        }
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f7441d.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.f7438a);
        this.f7443f = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f7443f.setBackgroundColor(-1157627904);
        this.f7443f.addView(this.f7441d);
        if (!this.f7442e.x1()) {
            a(this.f7442e.r1());
            g();
        }
        setContentView(this.f7443f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f7443f.removeView(this.f7441d);
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        try {
            if (this.f7444g == null) {
                a();
            }
            this.f7444g.setVisibility(0);
            this.f7444g.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setAnimationListener(new a());
            this.f7444g.startAnimation(alphaAnimation);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7440c.a("ExpandedAdDialog", "Unable to fade in close button", th2);
            }
            a();
        }
    }

    public b c() {
        return this.f7441d;
    }

    private void a(e.a aVar) {
        if (this.f7444g != null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7440c.k("ExpandedAdDialog", "Attempting to create duplicate close button");
                return;
            }
            return;
        }
        e a10 = e.a(aVar, this.f7438a);
        this.f7444g = a10;
        a10.setVisibility(8);
        this.f7444g.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.this.a(view);
            }
        });
        this.f7444g.setClickable(false);
        int a11 = a(((Integer) this.f7439b.a(v4.f10387x1)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a11, a11);
        layoutParams.addRule(10);
        com.applovin.impl.sdk.k kVar = this.f7439b;
        v4 v4Var = v4.A1;
        layoutParams.addRule(((Boolean) kVar.a(v4Var)).booleanValue() ? 9 : 11);
        this.f7444g.a(a11);
        int a12 = a(((Integer) this.f7439b.a(v4.f10403z1)).intValue());
        int a13 = a(((Integer) this.f7439b.a(v4.f10395y1)).intValue());
        layoutParams.setMargins(a13, a12, a13, 0);
        this.f7443f.addView(this.f7444g, layoutParams);
        this.f7444g.bringToFront();
        int a14 = a(((Integer) this.f7439b.a(v4.B1)).intValue());
        View view = new View(this.f7438a);
        view.setBackgroundColor(0);
        int i10 = a11 + a14;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams2.addRule(10);
        layoutParams2.addRule(((Boolean) this.f7439b.a(v4Var)).booleanValue() ? 9 : 11);
        layoutParams2.setMargins(a13 - a(5), a12 - a(5), a13 - a(5), 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.this.b(view2);
            }
        });
        this.f7443f.addView(view, layoutParams2);
        view.bringToFront();
    }

    public com.applovin.impl.sdk.ad.a b() {
        return this.f7442e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            f.this.f7444g.setClickable(true);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a();
    }

    private int a(int i10) {
        return AppLovinSdkUtils.dpToPx(this.f7438a, i10);
    }
}
