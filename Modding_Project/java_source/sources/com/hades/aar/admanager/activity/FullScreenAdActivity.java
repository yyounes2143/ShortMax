package com.hades.aar.admanager.activity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import ba.b;
import ca.d;
import ca.f;
import ca.k;
import com.hades.aar.admanager.core.AdFormat;
import ga.a;
import gt.g;
import gt.g0;
import gt.q0;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import p000admanager.a.c;
import p000admanager.a.e;
@Metadata
@SourceDebugExtension({"SMAP\nFullScreenAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenAdActivity.kt\ncom/hades/aar/admanager/activity/FullScreenAdActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,274:1\n1#2:275\n256#3,2:276\n*S KotlinDebug\n*F\n+ 1 FullScreenAdActivity.kt\ncom/hades/aar/admanager/activity/FullScreenAdActivity\n*L\n157#1:276,2\n*E\n"})
/* loaded from: classes5.dex */
public final class FullScreenAdActivity extends Activity {

    /* renamed from: f  reason: collision with root package name */
    public static final ConcurrentHashMap f21715f = new ConcurrentHashMap();

    /* renamed from: g  reason: collision with root package name */
    public static final Handler f21716g = new Handler(Looper.getMainLooper());

    /* renamed from: h  reason: collision with root package name */
    public static final g0 f21717h = i.a(q0.c());

    /* renamed from: a  reason: collision with root package name */
    public String f21718a;

    /* renamed from: b  reason: collision with root package name */
    public d f21719b;

    /* renamed from: c  reason: collision with root package name */
    public f f21720c;

    /* renamed from: d  reason: collision with root package name */
    public r f21721d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f21722e;

    @Override // android.app.Activity
    public final void onBackPressed() {
        a.f52235a.d("AdManagerFullScreenAdActivity", "onBackPressed ignored");
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        AdFormat adFormat;
        int i10;
        Object d10;
        Throwable g10;
        da.f b10;
        r d11;
        f.e n10;
        Integer b11;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("extra_ad_show_id");
        this.f21718a = stringExtra;
        if (stringExtra != null && stringExtra.length() != 0) {
            Pair pair = (Pair) f21715f.get(this.f21718a);
            if (pair == null) {
                a.f52235a.c("AdManagerFullScreenAdActivity", "onCreate failed: Data missing for ID " + this.f21718a);
                finish();
                return;
            }
            this.f21719b = (d) pair.e();
            this.f21720c = (f) pair.f();
            a.f52235a.d("AdManagerFullScreenAdActivity", "onCreate -> adShowId=" + this.f21718a + ", adInfo=" + this.f21719b);
            f fVar = this.f21720c;
            d.a aVar = null;
            if (fVar != null && (b11 = fVar.b()) != null) {
                i10 = b11.intValue();
            } else {
                d dVar = this.f21719b;
                if (dVar != null) {
                    adFormat = dVar.h();
                } else {
                    adFormat = null;
                }
                if (adFormat == AdFormat.NATIVE) {
                    i10 = b.f2586b;
                } else {
                    i10 = b.f2585a;
                }
            }
            setContentView(i10);
            try {
                Result.a aVar2 = Result.f60901b;
                Window window = getWindow();
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
                window.getDecorView().setSystemUiVisibility(0);
                d10 = Result.d(window);
            } catch (Throwable th2) {
                Result.a aVar3 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (Result.g(d10) != null) {
                a.f52235a.c("AdManagerFullScreenAdActivity", "setStatusBarColor error: " + g10.getMessage());
            }
            d dVar2 = this.f21719b;
            if (dVar2 == null) {
                f fVar2 = this.f21720c;
                if (fVar2 != null && (n10 = fVar2.n()) != null) {
                    n10.a(null, "AdInfo is null");
                }
                finish();
                return;
            }
            f fVar3 = this.f21720c;
            if (fVar3 == null) {
                finish();
                return;
            }
            FrameLayout container = (FrameLayout) findViewById(ba.a.f2573a);
            Intrinsics.checkNotNullExpressionValue(container, "container");
            f fVar4 = new f();
            fVar4.s(new WeakReference<>(container));
            fVar4.q(new WeakReference<>(this));
            fVar4.u(fVar3.e());
            fVar4.v(fVar3.f());
            fVar4.z(0L);
            fVar4.A(0L);
            fVar4.D(new b.b(fVar3.n(), new c(this)));
            fVar4.x(new b.a(fVar3.h(), new p000admanager.a.d(this)));
            fVar4.w(fVar3.g());
            fVar4.B(fVar3.m());
            fVar4.t(fVar3.d());
            try {
                k.f3414a.v(dVar2, fVar4);
                TextView textView = (TextView) findViewById(ba.a.f2578f);
                if (textView != null) {
                    View findViewById = findViewById(ba.a.f2576d);
                    textView.setVisibility(0);
                    d11 = g.d(f21717h, null, null, new e(this, textView, findViewById, dVar2, fVar4, null), 3, null);
                    this.f21721d = d11;
                    return;
                }
                return;
            } catch (Exception e10) {
                a.f52235a.c("AdManagerFullScreenAdActivity", "showAdContent exception: " + e10.getMessage());
                d.f a10 = k.f3414a.a();
                if (a10 != null && (b10 = a10.b()) != null) {
                    aVar = b10.r();
                }
                if (aVar != null) {
                    d.a.f(dVar2, "Exception: " + e10.getMessage(), fVar4);
                }
                finish();
                return;
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        r rVar = this.f21721d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        String str = this.f21718a;
        if (str != null) {
            Pair pair = (Pair) f21715f.remove(str);
        }
        a.f52235a.d("AdManagerFullScreenAdActivity", "onDestroy");
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f21722e = false;
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f21722e = true;
    }

    @Override // android.app.Activity
    public final void overridePendingTransition(int i10, int i11) {
        super.overridePendingTransition(0, 0);
    }
}
