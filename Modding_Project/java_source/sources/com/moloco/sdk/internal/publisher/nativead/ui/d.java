package com.moloco.sdk.internal.publisher.nativead.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.ComposeView;
import at.n;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.y;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public final class d extends FrameLayout {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f32909d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f32910e = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f32911a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.a f32912b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public ComposeView f32913c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements n<Modifier, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ g0 f32914a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ d f32915b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f32916c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ a0 f32917d;

        /* loaded from: classes6.dex */
        public static final class a implements Function2<Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ d f32918a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f32919b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Modifier f32920c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ a0 f32921d;

            public a(d dVar, Function0<Unit> function0, Modifier modifier, a0 a0Var) {
                this.f32918a = dVar;
                this.f32919b = function0;
                this.f32920c = modifier;
                this.f32921d = a0Var;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Composer composer, int i10) {
                if ((i10 & 3) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1035844210, i10, -1, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdVideoContainer.videoView.<anonymous>.<anonymous> (NativeAdVideoContainer.kt:57)");
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f32918a.f32911a;
                long m1868getBlack0d7_KjU = Color.Companion.m1868getBlack0d7_KjU();
                Function0<Unit> function0 = this.f32919b;
                y yVar = new y(function0, function0, function0);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.i(aVar, this.f32920c, m1868getBlack0d7_KjU, h.a(composer, 0), null, null, null, yVar, null, null, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a0.a(i.a(), composer, 6, 0), this.f32921d, composer, 102457728, 0, 512);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public b(g0 g0Var, d dVar, Function0<Unit> function0, a0 a0Var) {
            this.f32914a = g0Var;
            this.f32915b = dVar;
            this.f32916c = function0;
            this.f32917d = a0Var;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Modifier modifier, Composer composer, int i10) {
            int i11;
            Intrinsics.checkNotNullParameter(modifier, "modifier");
            if ((i10 & 6) == 0) {
                if (composer.changed(modifier)) {
                    i11 = 4;
                } else {
                    i11 = 2;
                }
                i10 |= i11;
            }
            if ((i10 & 19) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1867022133, i10, -1, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdVideoContainer.videoView.<anonymous> (NativeAdVideoContainer.kt:56)");
            }
            this.f32914a.a(ComposableLambdaKt.composableLambda(composer, 1035844210, true, new a(this.f32915b, this.f32916c, modifier, this.f32917d)), composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
            a(modifier, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a vastAdController, @NotNull a0 viewVisibilityTracker, @NotNull com.moloco.sdk.internal.a viewLifecycleOwner, @NotNull g0 watermark, @Nullable Function0<Unit> function0) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vastAdController, "vastAdController");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(viewLifecycleOwner, "viewLifecycleOwner");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.f32911a = vastAdController;
        this.f32912b = viewLifecycleOwner;
        ComposeView a10 = e.a(context, ComposableLambdaKt.composableLambdaInstance(1867022133, true, new b(watermark, this, function0, viewVisibilityTracker)));
        addView(a10, new ViewGroup.LayoutParams(-1, -1));
        this.f32913c = a10;
    }

    public final void b() {
        this.f32911a.destroy();
        c();
    }

    public final void c() {
        removeAllViews();
        ComposeView composeView = this.f32913c;
        if (composeView != null) {
            composeView.disposeComposition();
        }
        this.f32913c = null;
    }

    @Nullable
    public final ComposeView getVideoView() {
        return this.f32913c;
    }

    @Override // android.view.ViewGroup, android.view.View
    @VisibleForTesting(otherwise = 4)
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "VideoContainer", "onAttachedToWindow", null, false, 12, null);
        this.f32912b.a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @VisibleForTesting(otherwise = 4)
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "VideoContainer", "onDetachedFromWindow", null, false, 12, null);
        this.f32912b.b(this);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            this.f32912b.c(this);
        } else {
            this.f32912b.d(this);
        }
    }

    public final void setVideoView(@Nullable ComposeView composeView) {
        this.f32913c = composeView;
    }

    @VisibleForTesting
    public static /* synthetic */ void getVideoView$annotations() {
    }
}
