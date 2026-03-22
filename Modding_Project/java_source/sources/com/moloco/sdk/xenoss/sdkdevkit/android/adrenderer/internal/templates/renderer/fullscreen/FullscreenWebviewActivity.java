package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.fullscreen;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.f0;
import gt.g0;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.e;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nFullscreenWebviewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenWebviewActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/fullscreen/FullscreenWebviewActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"})
/* loaded from: classes6.dex */
public final class FullscreenWebviewActivity extends AppCompatActivity {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f34699b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final int f34700c = 8;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final String f34701d = "FullscreenWebviewActivity";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static WeakReference<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a> f34702e = new WeakReference<>(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static WeakReference<FullscreenWebviewActivity> f34703f = new WeakReference<>(null);
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public static e<Boolean> f34704g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public static e<Boolean> f34705h;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public OnBackPressedCallback f34706a;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            FullscreenWebviewActivity.f34702e.clear();
            e eVar = FullscreenWebviewActivity.f34704g;
            if (eVar != null) {
                eVar.setValue(Boolean.FALSE);
            }
            FullscreenWebviewActivity.f34704g = null;
            FullscreenWebviewActivity fullscreenWebviewActivity = (FullscreenWebviewActivity) FullscreenWebviewActivity.f34703f.get();
            if (fullscreenWebviewActivity != null && !fullscreenWebviewActivity.isFinishing() && !fullscreenWebviewActivity.isDestroyed()) {
                fullscreenWebviewActivity.finish();
            }
            FullscreenWebviewActivity.f34703f.clear();
        }

        public final void b(@NotNull Context context, @NotNull e<Boolean> isAdDisplayingEvent, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a webviewAd, @NotNull e<Boolean> isAdForciblyClosed) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(isAdDisplayingEvent, "isAdDisplayingEvent");
            Intrinsics.checkNotNullParameter(webviewAd, "webviewAd");
            Intrinsics.checkNotNullParameter(isAdForciblyClosed, "isAdForciblyClosed");
            a aVar = FullscreenWebviewActivity.f34699b;
            FullscreenWebviewActivity.f34702e = new WeakReference(webviewAd);
            FullscreenWebviewActivity.f34704g = isAdDisplayingEvent;
            FullscreenWebviewActivity.f34705h = isAdForciblyClosed;
            Intent intent = new Intent(context, FullscreenWebviewActivity.class);
            intent.setFlags(268435456);
            context.startActivity(intent);
        }

        public a() {
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34707a;

        static {
            int[] iArr = new int[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.values().length];
            try {
                iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34531b.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34532c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34533d.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f34707a = iArr;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class c extends AdaptedFunctionReference implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b, rs.c<? super Unit>, Object> {
        public c(Object obj) {
            super(2, obj, FullscreenWebviewActivity.class, "setOrientation", "setOrientation(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/ad/orientation/OrientationSettings;)V", 4);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: b */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b bVar, rs.c<? super Unit> cVar) {
            return FullscreenWebviewActivity.t((FullscreenWebviewActivity) this.receiver, bVar, cVar);
        }
    }

    public static final Unit m(OnBackPressedCallback addCallback) {
        Intrinsics.checkNotNullParameter(addCallback, "$this$addCallback");
        MolocoLogger.debug$default(MolocoLogger.INSTANCE, f34701d, "Back press detected, but disabled", false, 4, null);
        return Unit.f60915a;
    }

    public static /* synthetic */ void p(FullscreenWebviewActivity fullscreenWebviewActivity, i iVar, g0 g0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            g0Var = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        }
        fullscreenWebviewActivity.s(iVar, g0Var);
    }

    public static final /* synthetic */ Object t(FullscreenWebviewActivity fullscreenWebviewActivity, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b bVar, rs.c cVar) {
        fullscreenWebviewActivity.o(bVar);
        return Unit.f60915a;
    }

    public final Integer j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a aVar) {
        int i10 = b.f34707a[aVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            return 0;
        }
        return 1;
    }

    public final void n(final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a aVar) {
        Lifecycle lifecycle;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b q10 = aVar.q();
        aVar.r().a();
        LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(q10);
        if (lifecycleOwner != null) {
            lifecycle = lifecycleOwner.getLifecycle();
        } else {
            lifecycle = null;
        }
        if (lifecycle != null) {
            lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.fullscreen.FullscreenWebviewActivity$subscribeWebviewBridgeToLifecycleEvents$1$1
                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public void onPause(LifecycleOwner owner) {
                    Intrinsics.checkNotNullParameter(owner, "owner");
                    super.onPause(owner);
                    FullscreenWebviewActivity fullscreenWebviewActivity = FullscreenWebviewActivity.this;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a aVar2 = aVar;
                    if (!fullscreenWebviewActivity.isFinishing() && !fullscreenWebviewActivity.isDestroyed()) {
                        aVar2.r().a(false);
                    }
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public void onResume(LifecycleOwner owner) {
                    Intrinsics.checkNotNullParameter(owner, "owner");
                    super.onResume(owner);
                    aVar.r().a(true);
                }
            });
        }
    }

    public final void o(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b bVar) {
        if (bVar.a() == com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34533d) {
            MolocoLogger.debug$default(MolocoLogger.INSTANCE, f34701d, "Orientation is none, not setting requested orientation", false, 4, null);
            return;
        }
        Integer j10 = j(bVar.a());
        if (j10 != null) {
            setRequestedOrientation(j10.intValue());
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        OnBackPressedDispatcher onBackPressedDispatcher = getOnBackPressedDispatcher();
        Intrinsics.checkNotNullExpressionValue(onBackPressedDispatcher, "<get-onBackPressedDispatcher>(...)");
        this.f34706a = OnBackPressedDispatcherKt.addCallback$default(onBackPressedDispatcher, this, false, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.fullscreen.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FullscreenWebviewActivity.m((OnBackPressedCallback) obj);
            }
        }, 2, null);
        f34703f = new WeakReference<>(this);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.a aVar = f34702e.get();
        if (aVar == null) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, f34701d, "WebviewAd is null, something went wrong", null, false, 12, null);
            finish();
            return;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b q10 = aVar.q();
        if (q10.getParent() != null) {
            ViewParent parent = q10.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(q10);
        }
        setContentView(q10);
        e<Boolean> eVar = f34704g;
        if (eVar != null) {
            eVar.setValue(Boolean.TRUE);
        }
        n(aVar);
        f0.a(this);
        p(this, aVar.x(), null, 2, null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e<Boolean> eVar = f34705h;
        if (eVar != null) {
            eVar.setValue(Boolean.TRUE);
        }
        f34705h = null;
        OnBackPressedCallback onBackPressedCallback = this.f34706a;
        if (onBackPressedCallback != null && onBackPressedCallback.isEnabled()) {
            onBackPressedCallback.remove();
        }
        f34699b.a();
    }

    public final void s(i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b> iVar, g0 g0Var) {
        o(iVar.getValue());
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(iVar, new c(this)), g0Var);
    }
}
