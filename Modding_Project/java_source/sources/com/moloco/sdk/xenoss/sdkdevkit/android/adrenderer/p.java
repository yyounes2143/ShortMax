package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class p implements n {

    /* renamed from: a  reason: collision with root package name */
    public final int f36582a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> f36583b;

    /* renamed from: c  reason: collision with root package name */
    public final int f36584c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36585d;

    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36586a = new a();

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(1952438088);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1952438088, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.AdWebViewOptions.<init>.<anonymous> (AdRenderingOptions.kt:25)");
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255);
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

    public p() {
        this(0, null, 0, null, 15, null);
    }

    @NotNull
    public final at.t<Context, WebView, Integer, kt.e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> a() {
        return this.f36583b;
    }

    public final int b() {
        return this.f36582a;
    }

    @NotNull
    public final Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> c() {
        return this.f36585d;
    }

    public final int d() {
        return this.f36584c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(int i10, @NotNull at.t<? super Context, ? super WebView, ? super Integer, ? super kt.e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> adWebViewRenderer, int i11, @NotNull Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> decClose) {
        Intrinsics.checkNotNullParameter(adWebViewRenderer, "adWebViewRenderer");
        Intrinsics.checkNotNullParameter(decClose, "decClose");
        this.f36582a = i10;
        this.f36583b = adWebViewRenderer;
        this.f36584c = i11;
        this.f36585d = decClose;
    }

    public /* synthetic */ p(int i10, at.t tVar, int i11, Function2 function2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 5 : i10, (i12 & 2) != 0 ? com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b.e(0L, null, 3, null) : tVar, (i12 & 4) != 0 ? 5 : i11, (i12 & 8) != 0 ? a.f36586a : function2);
    }
}
