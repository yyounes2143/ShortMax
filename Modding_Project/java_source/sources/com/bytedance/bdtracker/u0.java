package com.bytedance.bdtracker;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.bytedance.applog.R;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public final class u0 implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Activity> f12425a;

    /* renamed from: b  reason: collision with root package name */
    public ViewTreeObserver.OnDrawListener f12426b;

    /* renamed from: c  reason: collision with root package name */
    public ViewTreeObserver.OnGlobalLayoutListener f12427c;

    /* renamed from: d  reason: collision with root package name */
    public ViewTreeObserver.OnGlobalFocusChangeListener f12428d;

    /* renamed from: e  reason: collision with root package name */
    public ViewTreeObserver.OnScrollChangedListener f12429e;

    /* renamed from: f  reason: collision with root package name */
    public ViewTreeObserver.OnWindowFocusChangeListener f12430f;

    /* renamed from: g  reason: collision with root package name */
    public Function1<? super Activity, Unit> f12431g;

    /* renamed from: h  reason: collision with root package name */
    public Function1<? super Activity, Unit> f12432h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final Application f12433i;

    /* loaded from: classes3.dex */
    public static final class a implements ViewTreeObserver.OnDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            u0.a(u0.this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b implements ViewTreeObserver.OnGlobalFocusChangeListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public final void onGlobalFocusChanged(@Nullable View view, @Nullable View view2) {
            u0.a(u0.this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        public c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            u0.a(u0.this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class d implements ViewTreeObserver.OnScrollChangedListener {
        public d() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            u0.a(u0.this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class e implements ViewTreeObserver.OnWindowFocusChangeListener {
        public e() {
        }

        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public final void onWindowFocusChanged(boolean z10) {
            u0.a(u0.this);
        }
    }

    public u0(@NotNull Application application) {
        Intrinsics.checkParameterIsNotNull(application, "application");
        this.f12433i = application;
        this.f12425a = new WeakReference<>(null);
        this.f12426b = new a();
        this.f12427c = new c();
        this.f12428d = new b();
        this.f12429e = new d();
        this.f12430f = new e();
    }

    public final void a(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (!view.isAttachedToWindow()) {
            view.addOnAttachStateChangeListener(this);
            return;
        }
        View rootView = view.getRootView();
        Intrinsics.checkExpressionValueIsNotNull(rootView, "view.rootView");
        b(rootView);
    }

    public final void b(View view) {
        Object tag = view.getTag(R.id.applog_tag_view_exposure_observe_flag);
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(tag, bool)) {
            return;
        }
        view.setTag(R.id.applog_tag_view_exposure_observe_flag, bool);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        viewTreeObserver.addOnGlobalFocusChangeListener(this.f12428d);
        viewTreeObserver.addOnScrollChangedListener(this.f12429e);
        viewTreeObserver.addOnDrawListener(this.f12426b);
        viewTreeObserver.addOnGlobalLayoutListener(this.f12427c);
        viewTreeObserver.addOnWindowFocusChangeListener(this.f12430f);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Window window = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "activity.window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "activity.window.decorView");
        if (Intrinsics.areEqual(decorView.getTag(R.id.applog_tag_view_exposure_observe_flag), Boolean.TRUE)) {
            decorView.setTag(R.id.applog_tag_view_exposure_observe_flag, Boolean.FALSE);
            ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
            viewTreeObserver.removeOnGlobalFocusChangeListener(this.f12428d);
            viewTreeObserver.removeOnScrollChangedListener(this.f12429e);
            viewTreeObserver.removeOnDrawListener(this.f12426b);
            viewTreeObserver.removeOnGlobalLayoutListener(this.f12427c);
            viewTreeObserver.removeOnWindowFocusChangeListener(this.f12430f);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        this.f12425a = new WeakReference<>(activity);
        Window window = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "activity.window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "activity.window.decorView");
        b(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Function1<? super Activity, Unit> function1;
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Activity activity2 = this.f12425a.get();
        if (activity2 != null && !Intrinsics.areEqual(activity2, activity) && (function1 = this.f12432h) != null) {
            function1.invoke(activity);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(@Nullable View view) {
        if (view != null) {
            View rootView = view.getRootView();
            Intrinsics.checkExpressionValueIsNotNull(rootView, "view.rootView");
            b(rootView);
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public final void a(@NotNull Function1<? super Activity, Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.f12432h = callback;
    }

    public final void b(@NotNull Function1<? super Activity, Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (this.f12431g == null) {
            this.f12431g = callback;
            this.f12433i.registerActivityLifecycleCallbacks(this);
        }
    }

    public static final /* synthetic */ void a(u0 u0Var) {
        Activity activity = u0Var.f12425a.get();
        if (activity != null) {
            Intrinsics.checkExpressionValueIsNotNull(activity, "currentActivityRef.get() ?: return");
            Function1<? super Activity, Unit> function1 = u0Var.f12431g;
            if (function1 != null) {
                function1.invoke(activity);
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(@Nullable View view) {
    }
}
