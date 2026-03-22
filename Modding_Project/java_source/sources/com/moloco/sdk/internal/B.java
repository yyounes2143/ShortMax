package com.moloco.sdk.internal;

import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nViewLifecycleOwner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLifecycleOwner.kt\ncom/moloco/sdk/internal/ViewLifecycleOwnerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,180:1\n1#2:181\n94#3,13:182\n*S KotlinDebug\n*F\n+ 1 ViewLifecycleOwner.kt\ncom/moloco/sdk/internal/ViewLifecycleOwnerImpl\n*L\n80#1:182,13\n*E\n"})
/* loaded from: classes6.dex */
public final class B implements a, LifecycleOwner, SavedStateRegistryOwner {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final b f32000c = new b(null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f32001d = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final LifecycleRegistry f32002a = new LifecycleRegistry(this);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final SavedStateRegistryController f32003b = SavedStateRegistryController.Companion.create(this);

    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    @SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnAttach$1\n+ 2 ViewLifecycleOwner.kt\ncom/moloco/sdk/internal/ViewLifecycleOwnerImpl\n*L\n1#1,411:1\n81#2,2:412\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ View f32004a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ B f32005b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ View f32006c;

        public c(View view, B b10, View view2) {
            this.f32004a = view;
            this.f32005b = b10;
            this.f32006c = view2;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.f32004a.removeOnAttachStateChangeListener(this);
            this.f32005b.g(this.f32006c);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }
    }

    @Override // com.moloco.sdk.internal.a
    public void a(@NotNull final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        com.moloco.sdk.internal.scheduling.d.a(new Function0() { // from class: com.moloco.sdk.internal.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return B.a(view, this);
            }
        });
    }

    @Override // com.moloco.sdk.internal.a
    public void b(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        View rootView = view.getRootView();
        if (rootView == null) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "RootView is absent, skipping", null, false, 12, null);
            return;
        }
        if (Intrinsics.areEqual(ViewTreeSavedStateRegistryOwner.get(rootView), this)) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "Removing ViewTreeSavedStateRegistryOwner", null, false, 12, null);
            ViewTreeSavedStateRegistryOwner.set(rootView, null);
        }
        if (f(rootView)) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "Removing ViewTreeLifecycleOwner", null, false, 12, null);
            ViewTreeLifecycleOwner.set(rootView, null);
        }
    }

    @Override // com.moloco.sdk.internal.a
    public void c(@NotNull View view) {
        Object d10;
        Intrinsics.checkNotNullParameter(view, "view");
        View rootView = view.getRootView();
        Intrinsics.checkNotNull(rootView);
        if (f(rootView)) {
            try {
                Result.a aVar = Result.f60901b;
                this.f32002a.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                d10 = Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (Result.j(d10)) {
                Unit unit = (Unit) d10;
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "lifecycle resume success", null, false, 12, null);
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                MolocoLogger.warn$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "lifecycle resume failure", g10, false, 8, null);
            }
        }
    }

    @Override // com.moloco.sdk.internal.a
    public void d(@NotNull View view) {
        Object d10;
        Intrinsics.checkNotNullParameter(view, "view");
        View rootView = view.getRootView();
        Intrinsics.checkNotNull(rootView);
        if (f(rootView)) {
            try {
                Result.a aVar = Result.f60901b;
                this.f32002a.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
                d10 = Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "ViewLifecycleOwner", "lifecycle pause success " + Result.j(d10), Result.g(d10), false, 8, null);
        }
    }

    public final boolean f(View view) {
        return Intrinsics.areEqual(ViewTreeLifecycleOwner.get(view), this);
    }

    public final void g(View view) {
        View rootView = view.getRootView();
        if (rootView == null) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "RootView is absent, skipping", null, false, 12, null);
            return;
        }
        if (ViewTreeSavedStateRegistryOwner.get(rootView) == null) {
            ViewTreeSavedStateRegistryOwner.set(rootView, this);
            try {
                Result.a aVar = Result.f60901b;
                this.f32003b.performRestore(null);
                Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "ViewTreeSavedStateRegistryOwner is absent, setting custom one", null, false, 12, null);
        }
        if (ViewTreeLifecycleOwner.get(rootView) == null) {
            ViewTreeLifecycleOwner.set(rootView, this);
            this.f32002a.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            this.f32002a.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.f32002a.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "ViewLifecycleOwner", "ViewTreeLifecycleOwner is absent, setting custom one", null, false, 12, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return this.f32002a;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NotNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.f32003b.getSavedStateRegistry();
    }

    public static final Unit a(View view, B b10) {
        if (ViewCompat.isAttachedToWindow(view)) {
            b10.g(view);
        } else {
            view.addOnAttachStateChangeListener(new c(view, b10, view));
        }
        return Unit.f60915a;
    }
}
