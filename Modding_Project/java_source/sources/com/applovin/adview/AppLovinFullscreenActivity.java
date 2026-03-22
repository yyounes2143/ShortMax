package com.applovin.adview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.WebView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.b8;
import com.applovin.impl.c2;
import com.applovin.impl.e2;
import com.applovin.impl.g;
import com.applovin.impl.g0;
import com.applovin.impl.k7;
import com.applovin.impl.m1;
import com.applovin.impl.m2;
import com.applovin.impl.o0;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v1;
import com.applovin.impl.v4;
import com.applovin.impl.x4;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppLovinFullscreenActivity extends Activity implements m1 {

    /* renamed from: h  reason: collision with root package name */
    private static final Set f7251h = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: i  reason: collision with root package name */
    private static final Object f7252i = new Object();
    @SuppressLint({"StaticFieldLeak"})
    public static m2 parentInterstitialWrapper;

    /* renamed from: a  reason: collision with root package name */
    private k f7253a;

    /* renamed from: b  reason: collision with root package name */
    private v1 f7254b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f7255c = new AtomicBoolean(true);

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.adview.activity.a f7256d;

    /* renamed from: e  reason: collision with root package name */
    private c f7257e;

    /* renamed from: f  reason: collision with root package name */
    private g0 f7258f;

    /* renamed from: g  reason: collision with root package name */
    private long f7259g;

    /* loaded from: classes2.dex */
    class a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Boolean f7260a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f7261b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.ad.b f7262c;

        a(Boolean bool, boolean z10, com.applovin.impl.sdk.ad.b bVar) {
            this.f7260a = bool;
            this.f7261b = z10;
            this.f7262c = bVar;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            Insets insets;
            int i10;
            int i11;
            int i12;
            int i13;
            int displayCutout;
            int i14;
            Insets insets2;
            int i15;
            int i16;
            int i17;
            int i18;
            int displayCutout2;
            if (this.f7260a.booleanValue()) {
                AppLovinFullscreenActivity.this.a(windowInsets);
            }
            if (!this.f7261b) {
                insets = windowInsets.getInsets(((Integer) AppLovinFullscreenActivity.this.f7253a.a(v4.f10348s2)).intValue());
                i10 = insets.left;
                i11 = insets.top;
                i12 = insets.right;
                i13 = insets.bottom;
                view.setPadding(i10, i11, i12, i13);
            } else {
                int intValue = ((Integer) AppLovinFullscreenActivity.this.f7253a.a(v4.f10348s2)).intValue();
                if (this.f7262c.R0()) {
                    displayCutout2 = WindowInsets.Type.displayCutout();
                    i14 = intValue & (~displayCutout2);
                } else {
                    displayCutout = WindowInsets.Type.displayCutout();
                    i14 = intValue | displayCutout;
                }
                insets2 = windowInsets.getInsets(i14);
                i15 = insets2.left;
                i16 = insets2.top;
                i17 = insets2.right;
                i18 = insets2.bottom;
                view.setPadding(i15, i16, i17, i18);
            }
            return windowInsets;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c implements OnBackInvokedCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f7265a;

        protected c(Runnable runnable) {
            this.f7265a = runnable;
        }

        public void onBackInvoked() {
            this.f7265a.run();
        }
    }

    @Override // com.applovin.impl.m1
    public void dismiss(String str) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (o0.k() && this.f7257e != null) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f7257e);
            this.f7257e = null;
        }
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.a(str);
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.a(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        boolean z10;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            o.j("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
            dismiss("activity_destroyed_while_in_background");
            return;
        }
        try {
            requestWindowFeature(1);
        } catch (Throwable th2) {
            o.c("AppLovinFullscreenActivity", "Failed to request window feature", th2);
        }
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View findViewById = findViewById(16908290);
        findViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.applovin.impl.sdk.ad.b bVar = null;
        if (TextUtils.isEmpty(getIntent().getStringExtra("com.applovin.interstitial.sdk_key"))) {
            m2 m2Var = parentInterstitialWrapper;
            if (m2Var != null && m2Var.f() != null) {
                m2.a(parentInterstitialWrapper.f(), parentInterstitialWrapper.c(), "Empty SDK key", (Throwable) null, this);
            }
            finish();
            return;
        }
        this.f7253a = AppLovinSdk.getInstance(this).a();
        m2 m2Var2 = parentInterstitialWrapper;
        if (m2Var2 != null) {
            bVar = m2Var2.f();
        }
        Boolean bool = (Boolean) this.f7253a.a(v4.B4);
        if (bVar != null && bVar.X0()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (o0.b() && (bool.booleanValue() || z10)) {
            getWindow().setDecorFitsSystemWindows(false);
            findViewById.setOnApplyWindowInsetsListener(new a(bool, z10, bVar));
            a(bVar);
        } else {
            findViewById.setFitsSystemWindows(true);
            if (o0.b()) {
                b8.a(findViewById, this.f7253a);
            }
            a(bVar);
        }
        if (bVar != null && bVar.B0()) {
            g.a(bVar, this, this.f7253a);
        }
        if (o0.k() && ((Boolean) this.f7253a.a(v4.U5)).booleanValue()) {
            this.f7257e = new c(new Runnable() { // from class: com.applovin.adview.c
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinFullscreenActivity.this.c();
                }
            });
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.f7257e);
        }
        a();
        b();
        Integer num = (Integer) this.f7253a.a(v4.f10376v6);
        if (num.intValue() > 0) {
            synchronized (f7252i) {
                Set set = f7251h;
                set.add(this);
                k7.a("AppLovinFullscreenActivity", set.size(), num.intValue(), this.f7253a.E());
            }
        }
        m2 m2Var3 = parentInterstitialWrapper;
        if (m2Var3 != null) {
            v1.a(m2Var3.f(), parentInterstitialWrapper.b(), parentInterstitialWrapper.c(), parentInterstitialWrapper.d(), parentInterstitialWrapper.h(), this.f7253a, this, new b());
            return;
        }
        Intent intent = new Intent(this, FullscreenAdService.class);
        com.applovin.impl.adview.activity.a aVar = new com.applovin.impl.adview.activity.a(this, this.f7253a);
        this.f7256d = aVar;
        bindService(intent, aVar, 1);
        if (o0.i()) {
            String str = this.f7253a.o0().getExtraParameters().get("disable_set_data_dir_suffix");
            if (!StringUtils.isValidString(str) || !Boolean.parseBoolean(str)) {
                try {
                    WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        k kVar = this.f7253a;
        if (kVar != null && ((Boolean) kVar.a(v4.f10372v2)).booleanValue()) {
            this.f7253a.q0().b(x4.M);
            this.f7253a.q0().b(x4.O);
            this.f7253a.q0().b(x4.P);
        }
        if (this.f7258f != null) {
            this.f7253a.q0().b(x4.N);
            this.f7258f.a();
            this.f7258f = null;
        }
        com.applovin.impl.adview.activity.a aVar = this.f7256d;
        if (aVar != null) {
            try {
                unbindService(aVar);
            } catch (Throwable unused) {
            }
        }
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            if (v1Var.f()) {
                this.f7254b.q();
            } else {
                long a10 = this.f7254b.a();
                int i10 = (a10 > 0L ? 1 : (a10 == 0L ? 0 : -1));
                if (i10 >= 0) {
                    if (i10 == 0) {
                        this.f7254b.d(true);
                    }
                    final m2 m2Var = parentInterstitialWrapper;
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.adview.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppLovinFullscreenActivity.this.a(m2Var);
                        }
                    }, a10);
                } else {
                    a(this.f7254b, false, false);
                }
            }
        }
        parentInterstitialWrapper = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.a(i10, keyEvent);
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.r();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        v1 v1Var;
        try {
            super.onResume();
            if (!this.f7255c.get() && (v1Var = this.f7254b) != null) {
                v1Var.s();
            }
        } catch (IllegalArgumentException e10) {
            this.f7253a.O();
            if (o.a()) {
                this.f7253a.O().a("AppLovinFullscreenActivity", "Error was encountered in onResume().", e10);
            }
            this.f7253a.E().a("AppLovinFullscreenActivity", "onResume", e10);
            dismiss("activity_on_resume_error");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.t();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        com.applovin.impl.sdk.ad.b bVar;
        if (this.f7254b != null) {
            if (!this.f7255c.getAndSet(false)) {
                this.f7254b.b(z10);
            }
            if (z10) {
                m2 m2Var = parentInterstitialWrapper;
                if (m2Var != null) {
                    bVar = m2Var.f();
                } else {
                    bVar = null;
                }
                a(bVar);
            }
        }
        super.onWindowFocusChanged(z10);
    }

    public void setPresenter(@Nullable v1 v1Var) {
        this.f7254b = v1Var;
    }

    /* loaded from: classes2.dex */
    class b implements v1.g {
        b() {
        }

        @Override // com.applovin.impl.v1.g
        public void a(v1 v1Var) {
            AppLovinFullscreenActivity.this.f7254b = v1Var;
            v1Var.v();
        }

        @Override // com.applovin.impl.v1.g
        public void a(String str, Throwable th2) {
            com.applovin.impl.sdk.ad.b f10 = AppLovinFullscreenActivity.parentInterstitialWrapper.f();
            m2.a(f10, AppLovinFullscreenActivity.parentInterstitialWrapper.c(), str, th2, AppLovinFullscreenActivity.this);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "createAppLovinFullscreenActivity");
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            CollectionUtils.putStringIfValid("top_main_method", th2.toString(), hashMap);
            AppLovinFullscreenActivity.this.f7253a.g().a(c2.f7666s, f10, hashMap);
        }
    }

    private void b() {
        k kVar = this.f7253a;
        if (kVar == null || !((Boolean) kVar.a(v4.f10380w2)).booleanValue()) {
            return;
        }
        final Long l10 = (Long) this.f7253a.a(v4.f10388x2);
        this.f7258f = g0.a(l10.longValue(), true, this.f7253a, new Runnable() { // from class: com.applovin.adview.d
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinFullscreenActivity.this.a(l10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.p();
        }
        if (k7.g(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WindowInsets windowInsets) {
        o0.a a10 = o0.a(windowInsets, this.f7253a);
        o0.a c10 = o0.c(windowInsets, this.f7253a);
        o0.a b10 = o0.b(windowInsets, this.f7253a);
        String b11 = k7.b(this);
        o0.a(a10, b11);
        o0.c(c10, b11);
        o0.b(b10, b11);
        v1 v1Var = this.f7254b;
        if (v1Var != null) {
            v1Var.a(a10, c10, b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(m2 m2Var) {
        boolean x10 = this.f7254b.x();
        boolean i10 = (m2Var == null || !x10) ? false : m2Var.i();
        if (!i10) {
            this.f7254b.d(false);
        }
        a(this.f7254b, x10, i10);
    }

    private void a(v1 v1Var, boolean z10, boolean z11) {
        v1Var.a("activity_destroyed_by_app_relaunch");
        if (this.f7253a != null) {
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "onDestroyAppLovinFullScreenActivity");
            m2 m2Var = parentInterstitialWrapper;
            com.applovin.impl.sdk.ad.b f10 = m2Var != null ? m2Var.f() : null;
            hashMap.putAll(e2.a((AppLovinAdImpl) f10));
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putBoolean(jSONObject, "reshow_attempted", z10);
            JsonUtils.putBoolean(jSONObject, "reshow_success", z11);
            if (f10 != null) {
                JsonUtils.putInt(jSONObject, "reshow_count", f10.b0());
            }
            hashMap.put("details", jSONObject.toString());
            this.f7253a.E().d(c2.f7659o0, hashMap);
        }
        v1Var.q();
    }

    private void a() {
        m2 m2Var;
        k kVar = this.f7253a;
        if (kVar == null || !((Boolean) kVar.a(v4.f10372v2)).booleanValue() || (m2Var = parentInterstitialWrapper) == null || m2Var.f() == null) {
            return;
        }
        com.applovin.impl.sdk.ad.b f10 = parentInterstitialWrapper.f();
        List j10 = f10.j();
        if (CollectionUtils.isEmpty(j10)) {
            return;
        }
        com.applovin.impl.e eVar = (com.applovin.impl.e) j10.get(0);
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_url", eVar.c());
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_backup_url", eVar.a());
        this.f7253a.q0().b(x4.O, jSONObject.toString());
        this.f7253a.q0().b(x4.M, Long.valueOf(System.currentTimeMillis()));
        this.f7253a.q0().b(x4.P, CollectionUtils.toJsonString(e2.a((AppLovinAdImpl) f10), JsonUtils.EMPTY_JSON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l10) {
        this.f7259g += l10.longValue();
        this.f7253a.q0().b(x4.N, Long.valueOf(this.f7259g));
    }

    private void a(com.applovin.impl.sdk.ad.b bVar) {
        if (o0.b() && bVar != null && bVar.X0()) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
            if (bVar.h1() && bVar.f1()) {
                com.applovin.impl.d.c(this);
                return;
            } else if (bVar.h1()) {
                com.applovin.impl.d.b((Activity) this);
                return;
            } else if (bVar.f1()) {
                com.applovin.impl.d.a((Activity) this);
                return;
            } else {
                return;
            }
        }
        getWindow().setFlags(1024, 1024);
        com.applovin.impl.d.c(this);
    }
}
