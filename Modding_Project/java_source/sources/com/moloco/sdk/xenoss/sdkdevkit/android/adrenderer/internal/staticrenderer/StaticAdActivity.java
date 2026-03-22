package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import at.t;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.q0;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes6.dex */
public final class StaticAdActivity extends ComponentActivity {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public static t<? super Context, ? super WebView, ? super Integer, ? super e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> f34427b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public static com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f34428c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public static StaticAdActivity f34429d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public static Function0<Unit> f34430e;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public static g0 f34432g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f34426a = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final e<Boolean> f34431f = o.a(Boolean.FALSE);

    /* loaded from: classes6.dex */
    public static final class a {

        @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$Companion", f = "StaticAdActivity.kt", l = {99}, m = "show")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0520a extends ContinuationImpl {

            /* renamed from: h  reason: collision with root package name */
            public Object f34433h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f34434i;

            /* renamed from: k  reason: collision with root package name */
            public int f34436k;

            public C0520a(rs.c<? super C0520a> cVar) {
                super(cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f34434i = obj;
                this.f34436k |= Integer.MIN_VALUE;
                return a.this.a(null, null, null, null, null, this);
            }
        }

        @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$Companion$show$3", f = "StaticAdActivity.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class b extends SuspendLambda implements Function2<Boolean, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34437h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ boolean f34438i;

            public b(rs.c<? super b> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                b bVar = new b(cVar);
                bVar.f34438i = ((Boolean) obj).booleanValue();
                return bVar;
            }

            public final Object i(boolean z10, rs.c<? super Boolean> cVar) {
                return ((b) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Boolean> cVar) {
                return i(bool.booleanValue(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f34437h == 0) {
                    f.b(obj);
                    return kotlin.coroutines.jvm.internal.a.a(this.f34438i);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0095 A[DONT_GENERATE] */
        /* JADX WARN: Type inference failed for: r5v0, types: [at.t, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a, kotlin.jvm.functions.Function0] */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(@org.jetbrains.annotations.NotNull android.content.Context r7, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r9, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p r10, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r12) {
            /*
                r6 = this;
                boolean r0 = r12 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.a.C0520a
                if (r0 == 0) goto L13
                r0 = r12
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.a.C0520a) r0
                int r1 = r0.f34436k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f34436k = r1
                goto L18
            L13:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$a
                r0.<init>(r12)
            L18:
                java.lang.Object r12 = r0.f34434i
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f34436k
                r3 = 0
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L39
                if (r2 != r4) goto L31
                java.lang.Object r7 = r0.f34433h
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a r7 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.a) r7
                kotlin.f.b(r12)     // Catch: java.lang.Throwable -> L2f
                goto L76
            L2f:
                r7 = move-exception
                goto L9b
            L31:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L39:
                kotlin.f.b(r12)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.i(r11)     // Catch: java.lang.Throwable -> L2f
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.h(r8)     // Catch: java.lang.Throwable -> L2f
                at.t r8 = r10.a()     // Catch: java.lang.Throwable -> L2f
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.g(r8)     // Catch: java.lang.Throwable -> L2f
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.j(r9)     // Catch: java.lang.Throwable -> L2f
                android.content.Intent r8 = new android.content.Intent     // Catch: java.lang.Throwable -> L2f
                java.lang.Class<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity> r9 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.class
                r8.<init>(r7, r9)     // Catch: java.lang.Throwable -> L2f
                int r9 = r10.b()     // Catch: java.lang.Throwable -> L2f
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.q0.a(r8, r9)     // Catch: java.lang.Throwable -> L2f
                r9 = 268435456(0x10000000, float:2.5243549E-29)
                r8.setFlags(r9)     // Catch: java.lang.Throwable -> L2f
                r7.startActivity(r8)     // Catch: java.lang.Throwable -> L2f
                kt.e r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.k()     // Catch: java.lang.Throwable -> L2f
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$b r8 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a$b     // Catch: java.lang.Throwable -> L2f
                r8.<init>(r5)     // Catch: java.lang.Throwable -> L2f
                r0.f34433h = r6     // Catch: java.lang.Throwable -> L2f
                r0.f34436k = r4     // Catch: java.lang.Throwable -> L2f
                java.lang.Object r12 = kotlinx.coroutines.flow.c.x(r7, r8, r0)     // Catch: java.lang.Throwable -> L2f
                if (r12 != r1) goto L76
                return r1
            L76:
                java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L2f
                r12.booleanValue()     // Catch: java.lang.Throwable -> L2f
                kt.e r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.k()
                java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.a.a(r3)
                r7.setValue(r8)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.j(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.h(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.g(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.f()
                if (r7 == 0) goto L98
                r7.finish()
            L98:
                kotlin.Unit r7 = kotlin.Unit.f60915a
                return r7
            L9b:
                kt.e r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.k()
                java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r3)
                r8.setValue(r9)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.j(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.h(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.g(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.f()
                if (r8 == 0) goto Lb8
                r8.finish()
            Lb8:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.a.a(android.content.Context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a, kotlin.jvm.functions.Function0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, rs.c):java.lang.Object");
        }

        public final void b() {
            StaticAdActivity.f34431f.setValue(Boolean.TRUE);
        }

        public final void e(a.AbstractC0597a.c cVar) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar = StaticAdActivity.f34428c;
            if (aVar != null) {
                aVar.h(cVar);
            }
        }

        public a() {
        }
    }

    @SourceDebugExtension({"SMAP\nStaticAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticAdActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/StaticAdActivity$onCreate$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,111:1\n1057#2,6:112\n1057#2,6:118\n*S KotlinDebug\n*F\n+ 1 StaticAdActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/StaticAdActivity$onCreate$1\n*L\n42#1:112,6\n43#1:118,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b implements Function2<Composer, Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f34440b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ t<Context, WebView, Integer, e<Boolean>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, g0, Dp, Boolean, View> f34441c;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<a.AbstractC0597a.c, Unit> {
            public a(Object obj) {
                super(1, obj, a.class, "onButtonRendered", "onButtonRendered(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService$UserInteraction$Button;)V", 0);
            }

            public final void b(a.AbstractC0597a.c p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                ((a) this.receiver).e(p02);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(a.AbstractC0597a.c cVar) {
                b(cVar);
                return Unit.f60915a;
            }
        }

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0521b extends FunctionReferenceImpl implements Function0<Unit> {
            public C0521b(Object obj) {
                super(0, obj, a.class, "dismiss", "dismiss()V", 0);
            }

            public final void b() {
                ((a) this.receiver).b();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar, t<? super Context, ? super WebView, ? super Integer, ? super e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> tVar) {
            this.f34440b = aVar;
            this.f34441c = tVar;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1193619358, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.onCreate.<anonymous> (StaticAdActivity.kt:38)");
            }
            StaticAdActivity staticAdActivity = StaticAdActivity.this;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar = this.f34440b;
            Intent intent = staticAdActivity.getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
            int h10 = q0.h(intent);
            a aVar2 = StaticAdActivity.f34426a;
            composer.startReplaceableGroup(-1212657475);
            boolean changed = composer.changed(aVar2);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new a(aVar2);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            Function1 function1 = (Function1) ((KFunction) rememberedValue);
            composer.startReplaceableGroup(-1212655916);
            boolean changed2 = composer.changed(aVar2);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new C0521b(aVar2);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b.k(staticAdActivity, aVar, h10, function1, (Function0) ((KFunction) rememberedValue2), this.f34441c, StaticAdActivity.f34432g, composer, 0);
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

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.moloco.sdk.internal.android_context.b.a(getApplicationContext());
        f34429d = this;
        t<? super Context, ? super WebView, ? super Integer, ? super e<Boolean>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super g0, ? super Dp, ? super Boolean, ? extends View> tVar = f34427b;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar = f34428c;
        if (aVar == null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "StaticAdActivity", "can't display ad: WebView is missing", null, false, 12, null);
            f34426a.b();
        } else if (tVar == null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "StaticAdActivity", "can't display ad: StaticRenderer is missing", null, false, 12, null);
            f34426a.b();
        } else {
            ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(1193619358, true, new b(aVar, tVar)), 1, null);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Function0<Unit> function0 = f34430e;
        if (function0 != null) {
            function0.invoke();
        }
        f34429d = null;
    }
}
