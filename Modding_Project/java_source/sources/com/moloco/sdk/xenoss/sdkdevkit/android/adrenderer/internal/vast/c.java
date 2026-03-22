package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nVastActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivityKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,237:1\n1057#2,6:238\n1057#2,6:245\n1#3:244\n*S KotlinDebug\n*F\n+ 1 VastActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivityKt\n*L\n231#1:238,6\n234#1:245,6\n*E\n"})
/* loaded from: classes6.dex */
public final class c {

    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ Unit f35057a;

        public a(Unit unit) {
            this.f35057a = unit;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1040652088, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastView.<anonymous>.<anonymous> (VastActivity.kt:231)");
            }
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

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
        public b(Object obj) {
            super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a.class, "goNextAdPartOrDismissAd", "goNextAdPartOrDismissAd()V", 0);
        }

        public final void b() {
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a) this.receiver).G();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    public static final View a(Function2 function2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar, Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return (View) function2.invoke(ctx, aVar);
    }

    public static final Unit b(Activity activity, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar, Function2 function2, g0 g0Var, int i10, int i11, Composer composer, int i12) {
        c(activity, aVar, function2, g0Var, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x0099, code lost:
        if ((r28 & 2) != 0) goto L35;
     */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void c(final android.app.Activity r22, final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a r23, kotlin.jvm.functions.Function2<? super android.content.Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, ? extends android.view.View> r24, final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 r25, androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.c.c(android.app.Activity, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a, kotlin.jvm.functions.Function2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final /* synthetic */ void d(Activity activity, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar, Function2 function2, g0 g0Var, Composer composer, int i10, int i11) {
        c(activity, aVar, function2, g0Var, composer, i10, i11);
    }
}
