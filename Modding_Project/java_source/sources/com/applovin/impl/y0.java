package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t0;
import com.applovin.impl.u0;
import com.applovin.impl.w0;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.applovin.sdk.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class y0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10567a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10568b;

    /* renamed from: c  reason: collision with root package name */
    private List f10569c;

    /* renamed from: d  reason: collision with root package name */
    private String f10570d;

    /* renamed from: e  reason: collision with root package name */
    private u0 f10571e;

    /* renamed from: f  reason: collision with root package name */
    private t0.c f10572f;

    /* renamed from: g  reason: collision with root package name */
    private u0 f10573g;

    /* renamed from: h  reason: collision with root package name */
    private Dialog f10574h;

    /* renamed from: i  reason: collision with root package name */
    private t0.b f10575i = new t0.b();

    /* renamed from: j  reason: collision with root package name */
    private final com.applovin.impl.b f10576j = new a();

    /* loaded from: classes2.dex */
    class a extends com.applovin.impl.b {
        a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            if ((activity instanceof AppLovinWebViewActivity) || y0.this.f10573g == null) {
                return;
            }
            if (y0.this.f10574h != null) {
                y0 y0Var = y0.this;
                if (!com.applovin.impl.d.d(y0Var.a(y0Var.f10574h))) {
                    y0.this.f10574h.dismiss();
                }
                y0.this.f10574h = null;
            }
            u0 u0Var = y0.this.f10573g;
            y0.this.f10573g = null;
            y0 y0Var2 = y0.this;
            y0Var2.a(y0Var2.f10571e, u0Var, activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w0 f10578a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ u0 f10579b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Activity f10580c;

        b(w0 w0Var, u0 u0Var, Activity activity) {
            this.f10578a = w0Var;
            this.f10579b = u0Var;
            this.f10580c = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            y0.this.f10573g = null;
            y0.this.f10574h = null;
            u0 a10 = y0.this.a(this.f10578a.a());
            if (a10 != null) {
                y0.this.a(this.f10579b, a10, this.f10580c);
                if (a10.c() != u0.b.ALERT) {
                    dialogInterface.dismiss();
                    return;
                }
                return;
            }
            y0.this.a("Destination state for TOS/PP alert is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f10582a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10583b;

        c(Uri uri, Activity activity) {
            this.f10582a = uri;
            this.f10583b = activity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            k7.a(this.f10582a, this.f10583b, y0.this.f10567a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f10585a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10586b;

        d(Uri uri, Activity activity) {
            this.f10585a = uri;
            this.f10586b = activity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            k7.a(this.f10585a, this.f10586b, y0.this.f10567a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements CmpServiceImpl.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f10588a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10589b;

        e(u0 u0Var, Activity activity) {
            this.f10588a = u0Var;
            this.f10589b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            boolean z10;
            y0.this.f10575i.a(appLovinCmpError);
            y0 y0Var = y0.this;
            u0 u0Var = this.f10588a;
            Activity activity = this.f10589b;
            if (appLovinCmpError == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y0Var.a(u0Var, activity, Boolean.valueOf(z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements CmpServiceImpl.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f10591a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10592b;

        f(u0 u0Var, Activity activity) {
            this.f10591a = u0Var;
            this.f10592b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            boolean z10;
            y0.this.f10575i.a(appLovinCmpError);
            y0 y0Var = y0.this;
            u0 u0Var = this.f10591a;
            Activity activity = this.f10592b;
            if (appLovinCmpError == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y0Var.a(u0Var, activity, Boolean.valueOf(z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements CmpServiceImpl.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f10594a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10595b;

        g(u0 u0Var, Activity activity) {
            this.f10594a = u0Var;
            this.f10595b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.f
        public void a(AppLovinCmpError appLovinCmpError) {
            if (appLovinCmpError != null) {
                y0.this.f10575i.a(appLovinCmpError);
            } else {
                y0.this.f10575i.c();
            }
            y0.this.b(this.f10594a, this.f10595b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f10597a;

        h(u0 u0Var) {
            this.f10597a = u0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            y0 y0Var = y0.this;
            y0Var.a(y0Var.f10571e, this.f10597a, y0.this.f10567a.v0());
        }
    }

    public y0(com.applovin.impl.sdk.k kVar) {
        this.f10567a = kVar;
        this.f10568b = ((Integer) kVar.a(v4.N6)).intValue();
    }

    private void c(final u0 u0Var, final Activity activity) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.zf
            @Override // java.lang.Runnable
            public final void run() {
                y0.this.a(u0Var, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(u0 u0Var, Activity activity) {
        a(u0Var, activity, (Boolean) null);
    }

    private void b() {
        this.f10569c = null;
        this.f10571e = null;
        this.f10567a.e().b(this.f10576j);
        t0.c cVar = this.f10572f;
        if (cVar != null) {
            cVar.a(this.f10575i);
            this.f10572f = null;
        }
        this.f10575i = new t0.b();
    }

    public void a(Activity activity, t0.c cVar) {
        a(u0.a.IS_AL_GDPR.b(), activity, cVar);
    }

    public void a(int i10, Activity activity, t0.c cVar) {
        if (this.f10569c != null) {
            this.f10567a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f10567a.O();
                O.a("ConsentFlowStateMachine", "Unable to start states: " + this.f10569c);
            }
            this.f10567a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f10567a.O();
                O2.a("ConsentFlowStateMachine", "Consent flow already in progress for states: " + this.f10569c);
            }
            cVar.a(new t0.b(new s0(s0.f9427d, "Consent flow is already in progress.")));
            return;
        }
        List a10 = z0.a(this.f10567a);
        this.f10569c = a10;
        this.f10570d = String.valueOf(a10);
        this.f10572f = cVar;
        u0 a11 = a(i10);
        this.f10567a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O3 = this.f10567a.O();
            O3.a("ConsentFlowStateMachine", "Starting consent flow with states: " + this.f10569c + "\nInitial state: " + a11);
        }
        com.applovin.impl.sdk.k.a(activity).a(this.f10576j);
        a((u0) null, a11, activity);
    }

    public boolean a() {
        return this.f10569c != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(u0 u0Var, Activity activity, Boolean bool) {
        a(u0Var, a(u0Var.a(bool)), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(u0 u0Var, u0 u0Var2, Activity activity) {
        this.f10571e = u0Var;
        c(u0Var2, activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(u0 u0Var, final Activity activity) {
        SpannableString spannableString;
        if (u0Var == null) {
            a("Consent flow state is null");
            return;
        }
        this.f10567a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f10567a.O().a("ConsentFlowStateMachine", "Transitioning to state: " + u0Var);
        }
        if (u0Var.c() == u0.b.ALERT) {
            if (com.applovin.impl.d.d(activity)) {
                a(u0Var);
                return;
            }
            this.f10567a.G().trackEvent("cf_start");
            v0 v0Var = (v0) u0Var;
            this.f10573g = v0Var;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setCancelable(false);
            for (w0 w0Var : v0Var.d()) {
                b bVar = new b(w0Var, u0Var, activity);
                if (w0Var.c() == w0.a.POSITIVE) {
                    builder.setPositiveButton(w0Var.d(), bVar);
                } else if (w0Var.c() == w0.a.NEGATIVE) {
                    builder.setNegativeButton(w0Var.d(), bVar);
                } else {
                    builder.setNeutralButton(w0Var.d(), bVar);
                }
            }
            String f10 = v0Var.f();
            if (StringUtils.isValidString(f10)) {
                spannableString = new SpannableString(f10);
                String a10 = com.applovin.impl.sdk.k.a(R.string.applovin_terms_of_service_text);
                String a11 = com.applovin.impl.sdk.k.a(R.string.applovin_privacy_policy_text);
                if (StringUtils.containsAtLeastOneSubstring(f10, Arrays.asList(a10, a11))) {
                    Uri h10 = this.f10567a.y().h();
                    if (h10 != null) {
                        StringUtils.addLinks(spannableString, Pattern.compile(a10), new c(h10, activity), true);
                    }
                    StringUtils.addLinks(spannableString, Pattern.compile(a11), new d(this.f10567a.y().f(), activity), true);
                }
            } else {
                spannableString = null;
            }
            final AlertDialog create = builder.setTitle(spannableString).setMessage(v0Var.e()).create();
            create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.applovin.impl.ag
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    y0.this.a(create, activity, dialogInterface);
                }
            });
            this.f10574h = create;
            create.show();
            this.f10575i.d();
        } else if (u0Var.c() == u0.b.POST_ALERT) {
            if (this.f10567a.y().k() && this.f10567a.y().m()) {
                if (com.applovin.impl.d.d(activity)) {
                    a(u0Var);
                    return;
                } else {
                    this.f10567a.t().loadCmp(activity, new e(u0Var, activity));
                    return;
                }
            }
            a(u0Var, activity, Boolean.FALSE);
        } else if (u0Var.c() == u0.b.EVENT) {
            x0 x0Var = (x0) u0Var;
            String e10 = x0Var.e();
            Map<String, ?> d10 = x0Var.d();
            if (d10 == null) {
                d10 = new HashMap<>(1);
            }
            d10.put("flow_type", "unified");
            this.f10567a.G().trackEvent(e10, d10);
            b(x0Var, activity);
        } else if (u0Var.c() == u0.b.CMP_LOAD) {
            if (com.applovin.impl.d.d(activity)) {
                a(u0Var);
            } else if (this.f10567a.y().m()) {
                this.f10567a.t().preloadCmp(activity);
                a(u0Var, activity, Boolean.FALSE);
            } else {
                this.f10567a.t().loadCmp(activity, new f(u0Var, activity));
            }
        } else if (u0Var.c() == u0.b.CMP_SHOW) {
            if (com.applovin.impl.d.d(activity)) {
                a(u0Var);
                return;
            }
            if (!this.f10567a.y().m()) {
                this.f10567a.G().trackEvent("cf_start");
            }
            this.f10567a.t().showCmp(activity, new g(u0Var, activity));
        } else if (u0Var.c() == u0.b.DECISION) {
            u0.a a12 = u0Var.a();
            if (a12 == u0.a.IS_AL_GDPR) {
                a(u0Var, activity, Boolean.valueOf(this.f10567a.y().k()));
            } else if (a12 == u0.a.IS_ELIGIBLE_FOR_TERMS_AND_PRIVACY_POLICY_ALERT) {
                a(u0Var, activity, Boolean.valueOf((!this.f10567a.A0() || ((Boolean) this.f10567a.a(x4.f10525s, Boolean.FALSE)).booleanValue()) ? true : true));
            } else if (a12 == u0.a.HAS_TERMS_OF_SERVICE_URI) {
                a(u0Var, activity, Boolean.valueOf(this.f10567a.y().h() != null));
            } else {
                a("Invalid consent flow decision type: " + a12);
            }
        } else if (u0Var.c() == u0.b.REINIT) {
            b();
        } else {
            a("Invalid consent flow destination state: " + u0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AlertDialog alertDialog, Activity activity, DialogInterface dialogInterface) {
        TextView textView = (TextView) alertDialog.findViewById(alertDialog.getContext().getResources().getIdentifier("android:id/alertTitle", null, null));
        textView.setLinkTextColor(textView.getCurrentTextColor());
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setMaxLines(this.f10568b);
        textView.setMinHeight(AppLovinSdkUtils.dpToPx(activity, 48));
    }

    private void a(u0 u0Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new h(u0Var), TimeUnit.SECONDS.toMillis(1L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        k1.a(str, new Object[0]);
        this.f10567a.E().a(c2.B0, str, CollectionUtils.hashMap("details", "Last started states: " + this.f10570d + "\nLast successful state: " + this.f10571e));
        t0.b bVar = this.f10575i;
        if (bVar != null) {
            bVar.a(new s0(s0.f9428e, str));
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u0 a(int i10) {
        List<u0> list = this.f10569c;
        if (list == null) {
            return null;
        }
        for (u0 u0Var : list) {
            if (i10 == u0Var.b()) {
                return u0Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity a(Dialog dialog) {
        Context context = dialog.getContext();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
            return null;
        }
        return null;
    }
}
