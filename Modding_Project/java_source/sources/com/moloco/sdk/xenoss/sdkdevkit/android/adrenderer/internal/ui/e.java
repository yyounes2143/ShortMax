package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KFunction;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAdGoNextButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,112:1\n1057#2,6:113\n1057#2,6:119\n76#3:125\n76#3:126\n102#3,2:127\n*S KotlinDebug\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt\n*L\n80#1:113,6\n82#1:119,6\n78#1:125\n80#1:126\n80#1:127,2\n*E\n"})
/* loaded from: classes6.dex */
public final class e {

    @SourceDebugExtension({"SMAP\nAdGoNextButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt$AdGoNextButton$1$goNextButton$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,112:1\n1057#2,6:113\n1057#2,6:119\n*S KotlinDebug\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt$AdGoNextButton$1$goNextButton$1\n*L\n50#1:113,6\n51#1:119,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ BoxScope f34756a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i f34757b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> f34758c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ boolean f34759d;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0539a extends FunctionReferenceImpl implements Function0<Unit> {
            public C0539a(Object obj) {
                super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "goNextAdPartOrDismissAd", "goNextAdPartOrDismissAd()V", 0);
            }

            public final void b() {
                ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).G();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* loaded from: classes6.dex */
        public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<a.AbstractC0597a.c, Unit> {
            public b(Object obj) {
                super(1, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "onButtonRendered", "onButtonRendered(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService$UserInteraction$Button;)V", 0);
            }

            public final void b(a.AbstractC0597a.c p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).h(p02);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(a.AbstractC0597a.c cVar) {
                b(cVar);
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(BoxScope boxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar, boolean z10) {
            this.f34756a = boxScope;
            this.f34757b = iVar;
            this.f34758c = aVar;
            this.f34759d = z10;
        }

        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(504986716, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdGoNextButton.<anonymous>.<anonymous> (AdGoNextButton.kt:47)");
            }
            BoxScope boxScope = this.f34756a;
            kt.i<d.a> m10 = this.f34757b.m();
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar = this.f34757b;
            composer.startReplaceableGroup(328179957);
            boolean changed = composer.changed(iVar);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new C0539a(iVar);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            Function0 function0 = (Function0) ((KFunction) rememberedValue);
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar2 = this.f34757b;
            composer.startReplaceableGroup(328181678);
            boolean changed2 = composer.changed(iVar2);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new b(iVar2);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            e.f(boxScope, m10, function0, (Function1) ((KFunction) rememberedValue2), this.f34758c, this.f34759d, composer, 0);
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

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdGoNextButtonKt$GoNextButton$1$1", f = "AdGoNextButton.kt", l = {87}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAdGoNextButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt$GoNextButton$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,112:1\n17#2:113\n19#2:117\n46#3:114\n51#3:116\n105#4:115\n*S KotlinDebug\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt$GoNextButton$1$1\n*L\n85#1:113\n85#1:117\n85#1:114\n85#1:116\n85#1:115\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34760h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ State<d.a> f34761i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ MutableState<Integer> f34762j;

        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ MutableState<Integer> f34763a;

            public a(MutableState<Integer> mutableState) {
                this.f34763a = mutableState;
            }

            public final Object a(int i10, rs.c<? super Unit> cVar) {
                e.g(this.f34763a, i10);
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((Number) obj).intValue(), cVar);
            }
        }

        @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0540b implements kt.b<Integer> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.b f34764a;

            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt$GoNextButton$1$1\n*L\n1#1,49:1\n18#2:50\n19#2:52\n85#3:51\n*E\n"})
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b$a */
            /* loaded from: classes6.dex */
            public static final class a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ kt.c f34765a;

                @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdGoNextButtonKt$GoNextButton$1$1$invokeSuspend$$inlined$filter$1$2", f = "AdGoNextButton.kt", l = {50}, m = "emit")
                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public static final class C0541a extends ContinuationImpl {

                    /* renamed from: h  reason: collision with root package name */
                    public /* synthetic */ Object f34766h;

                    /* renamed from: i  reason: collision with root package name */
                    public int f34767i;

                    public C0541a(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f34766h = obj;
                        this.f34767i |= Integer.MIN_VALUE;
                        return a.this.emit(null, this);
                    }
                }

                public a(kt.c cVar) {
                    this.f34765a = cVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e.b.C0540b.a.C0541a
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e.b.C0540b.a.C0541a) r0
                        int r1 = r0.f34767i
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f34767i = r1
                        goto L18
                    L13:
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e$b$b$a$a
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f34766h
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.f34767i
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L48
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.f34765a
                        r2 = r5
                        java.lang.Number r2 = (java.lang.Number) r2
                        int r2 = r2.intValue()
                        if (r2 <= 0) goto L48
                        r0.f34767i = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L48
                        return r1
                    L48:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.e.b.C0540b.a.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            public C0540b(kt.b bVar) {
                this.f34764a = bVar;
            }

            @Override // kt.b
            public Object collect(kt.c<? super Integer> cVar, rs.c cVar2) {
                Object collect = this.f34764a.collect(new a(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(State<? extends d.a> state, MutableState<Integer> mutableState, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34761i = state;
            this.f34762j = mutableState;
        }

        public static final int i(State state) {
            d.a.b bVar;
            d.a b10 = e.b(state);
            if (b10 instanceof d.a.b) {
                bVar = (d.a.b) b10;
            } else {
                bVar = null;
            }
            if (bVar != null) {
                return bVar.a();
            }
            return 0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34761i, this.f34762j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34760h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final State<d.a> state = this.f34761i;
                kt.b U = kotlinx.coroutines.flow.c.U(new C0540b(SnapshotStateKt.snapshotFlow(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.p
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Integer.valueOf(e.b.i(State.this));
                    }
                })), 1);
                a aVar = new a(this.f34762j);
                this.f34760h = 1;
                if (U.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public static final int a(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    public static final d.a b(State<? extends d.a> state) {
        return state.getValue();
    }

    public static final Unit c(BoxScope boxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, i.a aVar, at.a aVar2, at.a aVar3, int i10, Composer composer, int i11) {
        e(boxScope, iVar, aVar, aVar2, aVar3, composer, i10 | 1);
        return Unit.f60915a;
    }

    public static final Unit d(BoxScope boxScope, kt.i iVar, Function0 function0, Function1 function1, at.a aVar, boolean z10, int i10, Composer composer, int i11) {
        f(boxScope, iVar, function0, function1, aVar, z10, composer, i10 | 1);
        return Unit.f60915a;
    }

    @Composable
    public static final void e(@NotNull final BoxScope boxScope, @NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i adViewModel, @Nullable final i.a aVar, @Nullable final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar2, @Nullable final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar3, @Nullable Composer composer, final int i10) {
        int i11;
        Boolean bool;
        boolean z10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Intrinsics.checkNotNullParameter(boxScope, "<this>");
        Intrinsics.checkNotNullParameter(adViewModel, "adViewModel");
        Composer startRestartGroup = composer.startRestartGroup(1217166503);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(boxScope)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i11 = i16 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(adViewModel)) {
                i15 = 32;
            } else {
                i15 = 16;
            }
            i11 |= i15;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(aVar)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i11 |= i14;
        }
        if ((i10 & 3072) == 0) {
            if (startRestartGroup.changed(aVar2)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i11 |= i13;
        }
        if ((i10 & 24576) == 0) {
            if (startRestartGroup.changed(aVar3)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i11 |= i12;
        }
        if ((i11 & 9363) == 9362 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1217166503, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdGoNextButton (AdGoNextButton.kt:27)");
            }
            at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar4 = null;
            if (aVar != null) {
                bool = Boolean.valueOf(aVar.a());
            } else {
                bool = null;
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                aVar4 = aVar3;
            } else if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
                aVar4 = aVar2;
            } else if (bool != null) {
                throw new NoWhenBranchMatchedException();
            }
            boolean z11 = aVar instanceof i.a.C0565a;
            if (!z11 && !(aVar instanceof i.a.b) && (aVar instanceof i.a.c)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (aVar4 != null) {
                ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(startRestartGroup, 504986716, true, new a(boxScope, adViewModel, aVar4, z10));
                if (z11) {
                    startRestartGroup.startReplaceableGroup(-1024214432);
                    composableLambda.invoke(startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else if (aVar instanceof i.a.b) {
                    startRestartGroup.startReplaceableGroup(-1024212640);
                    composableLambda.invoke(startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else if (aVar instanceof i.a.c) {
                    startRestartGroup.startReplaceableGroup(-1024210752);
                    composableLambda.invoke(startRestartGroup, 6);
                    startRestartGroup.endReplaceableGroup();
                } else {
                    startRestartGroup.startReplaceableGroup(-1685727487);
                    startRestartGroup.endReplaceableGroup();
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.n
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return e.c(BoxScope.this, adViewModel, aVar, aVar2, aVar3, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void f(final BoxScope boxScope, final kt.i<? extends d.a> iVar, final Function0<Unit> function0, final Function1<? super a.AbstractC0597a.c, Unit> function1, final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> aVar, final boolean z10, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Composer startRestartGroup = composer.startRestartGroup(12332512);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(boxScope)) {
                i17 = 4;
            } else {
                i17 = 2;
            }
            i11 = i17 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(iVar)) {
                i16 = 32;
            } else {
                i16 = 16;
            }
            i11 |= i16;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(function0)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i11 |= i15;
        }
        if ((i10 & 3072) == 0) {
            if (startRestartGroup.changed(function1)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i11 |= i14;
        }
        if ((i10 & 24576) == 0) {
            if (startRestartGroup.changed(aVar)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i11 |= i13;
        }
        if ((196608 & i10) == 0) {
            if (startRestartGroup.changed(z10)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i11 |= i12;
        }
        if ((74899 & i11) == 74898 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(12332512, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.GoNextButton (AdGoNextButton.kt:76)");
            }
            State collectAsStateWithLifecycle = FlowExtKt.collectAsStateWithLifecycle(iVar, (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, startRestartGroup, (i11 >> 3) & 14, 7);
            startRestartGroup.startReplaceableGroup(-2101091474);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            int i18 = 0;
            d.a.b bVar = null;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            Unit unit = Unit.f60915a;
            startRestartGroup.startReplaceableGroup(-2101089382);
            boolean changed = startRestartGroup.changed(collectAsStateWithLifecycle) | startRestartGroup.changed(mutableState);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new b(collectAsStateWithLifecycle, mutableState, null);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue2, startRestartGroup, 6);
            int b10 = ms.n.b(a(mutableState));
            d.a b11 = b(collectAsStateWithLifecycle);
            if (b11 instanceof d.a.b) {
                bVar = (d.a.b) b11;
            }
            if (bVar != null) {
                i18 = bVar.a();
            }
            int b12 = ms.n.b(i18);
            Boolean valueOf = Boolean.valueOf(b(collectAsStateWithLifecycle) instanceof d.a.C0583a);
            Boolean valueOf2 = Boolean.valueOf(!(b(collectAsStateWithLifecycle) instanceof d.a.c));
            Boolean valueOf3 = Boolean.valueOf(z10);
            ms.n a10 = ms.n.a(b10);
            ms.n a11 = ms.n.a(b12);
            int i19 = i11 << 3;
            aVar.invoke(boxScope, valueOf, valueOf2, function0, function1, valueOf3, a10, a11, startRestartGroup, Integer.valueOf((i11 & 14) | (i19 & 7168) | (i19 & 57344) | (458752 & i11) | ((i11 << 12) & 234881024)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.o
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return e.d(BoxScope.this, iVar, function0, function1, aVar, z10, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void g(MutableState<Integer> mutableState, int i10) {
        mutableState.setValue(Integer.valueOf(i10));
    }
}
