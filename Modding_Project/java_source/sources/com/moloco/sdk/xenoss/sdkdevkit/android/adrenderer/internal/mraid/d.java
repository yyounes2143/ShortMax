package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.VisibleForTesting;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting
/* loaded from: classes6.dex */
public final class d {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public static at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> f34246d;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public static Function0<Unit> f34248f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public static f f34249g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public static g0 f34250h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public static Function0<Unit> f34251i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f34243a = new d();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static WeakReference<s> f34244b = new WeakReference<>(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static WeakReference<Activity> f34245c = new WeakReference<>(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> f34247e = a.f34253a;

    /* renamed from: j  reason: collision with root package name */
    public static final int f34252j = 8;

    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f34253a = new a();

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(-631904177);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-631904177, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivityDataHolder.closeButton.<anonymous> (MraidActivity.kt:259)");
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = c0.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @Nullable
    public final f a() {
        return f34249g;
    }

    public final void b(@Nullable Activity activity) {
        f34245c = new WeakReference<>(activity);
    }

    public final void c(@Nullable at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> tVar) {
        f34246d = tVar;
    }

    public final void d(@Nullable f fVar) {
        f34249g = fVar;
    }

    public final void e(@Nullable s sVar) {
        f34244b = new WeakReference<>(sVar);
    }

    public final void f(@Nullable g0 g0Var) {
        f34250h = g0Var;
    }

    public final void g(@Nullable Function0<Unit> function0) {
        f34248f = function0;
    }

    public final void h(@NotNull Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        f34247e = function2;
    }

    @NotNull
    public final Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> i() {
        return f34247e;
    }

    public final void j(@Nullable Function0<Unit> function0) {
        f34251i = function0;
    }

    @Nullable
    public final at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> k() {
        return f34246d;
    }

    @Nullable
    public final Function0<Unit> l() {
        return f34248f;
    }

    @Nullable
    public final Function0<Unit> m() {
        return f34251i;
    }

    @Nullable
    public final g0 n() {
        return f34250h;
    }

    @Nullable
    public final Activity o() {
        return f34245c.get();
    }

    @Nullable
    public final s p() {
        return f34244b.get();
    }
}
