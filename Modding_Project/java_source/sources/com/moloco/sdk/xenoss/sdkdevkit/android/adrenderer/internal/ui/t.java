package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nLifecycleAwareAdCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,59:1\n473#2,4:60\n477#2,2:68\n481#2:74\n25#3:64\n1057#4,3:65\n1060#4,3:71\n1057#4,6:75\n1057#4,6:81\n473#5:70\n76#6:87\n76#6:88\n*S KotlinDebug\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt\n*L\n35#1:60,4\n35#1:68,2\n35#1:74\n35#1:64\n35#1:65,3\n35#1:71,3\n37#1:75,6\n43#1:81,6\n35#1:70\n37#1:87\n41#1:88\n*E\n"})
/* loaded from: classes6.dex */
public final class t {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.LifecycleAwareAdCountdownButtonKt$LifecycleAwareAdCountdownButton$1$1", f = "LifecycleAwareAdCountdownButton.kt", l = {46}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nLifecycleAwareAdCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt$LifecycleAwareAdCountdownButton$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,59:1\n17#2:60\n19#2:64\n46#3:61\n51#3:63\n105#4:62\n*S KotlinDebug\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt$LifecycleAwareAdCountdownButton$1$1\n*L\n45#1:60\n45#1:64\n45#1:61\n45#1:63\n45#1:62\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34954h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ State<ms.n> f34955i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ State<Function0<Unit>> f34956j;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0547a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ State<Function0<Unit>> f34957a;

            /* JADX WARN: Multi-variable type inference failed */
            public C0547a(State<? extends Function0<Unit>> state) {
                this.f34957a = state;
            }

            public final Object a(int i10, rs.c<? super Unit> cVar) {
                t.d(this.f34957a).invoke();
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((ms.n) obj).g(), cVar);
            }
        }

        @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class b implements kt.b<ms.n> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.b f34958a;

            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt$LifecycleAwareAdCountdownButton$1$1\n*L\n1#1,49:1\n18#2:50\n19#2:52\n45#3:51\n*E\n"})
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0548a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ kt.c f34959a;

                @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.LifecycleAwareAdCountdownButtonKt$LifecycleAwareAdCountdownButton$1$1$invokeSuspend$$inlined$filter$1$2", f = "LifecycleAwareAdCountdownButton.kt", l = {50}, m = "emit")
                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public static final class C0549a extends ContinuationImpl {

                    /* renamed from: h  reason: collision with root package name */
                    public /* synthetic */ Object f34960h;

                    /* renamed from: i  reason: collision with root package name */
                    public int f34961i;

                    public C0549a(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f34960h = obj;
                        this.f34961i |= Integer.MIN_VALUE;
                        return C0548a.this.emit(null, this);
                    }
                }

                public C0548a(kt.c cVar) {
                    this.f34959a = cVar;
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
                        boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t.a.b.C0548a.C0549a
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$b$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t.a.b.C0548a.C0549a) r0
                        int r1 = r0.f34961i
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f34961i = r1
                        goto L18
                    L13:
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$b$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t$a$b$a$a
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f34960h
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.f34961i
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
                        kt.c r6 = r4.f34959a
                        r2 = r5
                        ms.n r2 = (ms.n) r2
                        int r2 = r2.g()
                        if (r2 != 0) goto L48
                        r0.f34961i = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L48
                        return r1
                    L48:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.t.a.b.C0548a.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            public b(kt.b bVar) {
                this.f34958a = bVar;
            }

            @Override // kt.b
            public Object collect(kt.c<? super ms.n> cVar, rs.c cVar2) {
                Object collect = this.f34958a.collect(new C0548a(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(State<ms.n> state, State<? extends Function0<Unit>> state2, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34955i = state;
            this.f34956j = state2;
        }

        public static final ms.n i(State state) {
            return ms.n.a(t.a(state));
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34955i, this.f34956j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34954h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final State<ms.n> state = this.f34955i;
                b bVar = new b(SnapshotStateKt.snapshotFlow(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.h0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return t.a.i(State.this);
                    }
                }));
                C0547a c0547a = new C0547a(this.f34956j);
                this.f34954h = 1;
                if (bVar.collect(c0547a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public static final int a(State<ms.n> state) {
        return state.getValue().g();
    }

    public static final Unit b(BoxScope boxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p pVar, boolean z10, boolean z11, Function0 function0, Function0 function02, Function1 function1, at.a aVar, boolean z12, int i10, Composer composer, int i11) {
        c(boxScope, pVar, z10, z11, function0, function02, function1, aVar, z12, composer, i10 | 1);
        return Unit.f60915a;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void c(@NotNull final BoxScope boxScope, @NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<ms.n> initialSecondsLeft, final boolean z10, final boolean z11, @NotNull final Function0<Unit> onCountdownFinished, @NotNull final Function0<Unit> onClick, @NotNull final Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, @NotNull final at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit> basedOnAdCountdownButton, final boolean z12, @Nullable Composer composer, final int i10) {
        int i11;
        Composer composer2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        Intrinsics.checkNotNullParameter(boxScope, "<this>");
        Intrinsics.checkNotNullParameter(initialSecondsLeft, "initialSecondsLeft");
        Intrinsics.checkNotNullParameter(onCountdownFinished, "onCountdownFinished");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
        Intrinsics.checkNotNullParameter(basedOnAdCountdownButton, "basedOnAdCountdownButton");
        Composer startRestartGroup = composer.startRestartGroup(686000336);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(boxScope)) {
                i20 = 4;
            } else {
                i20 = 2;
            }
            i11 = i20 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(initialSecondsLeft)) {
                i19 = 32;
            } else {
                i19 = 16;
            }
            i11 |= i19;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(z10)) {
                i18 = 256;
            } else {
                i18 = 128;
            }
            i11 |= i18;
        }
        if ((i10 & 3072) == 0) {
            if (startRestartGroup.changed(z11)) {
                i17 = 2048;
            } else {
                i17 = 1024;
            }
            i11 |= i17;
        }
        if ((i10 & 24576) == 0) {
            if (startRestartGroup.changed(onCountdownFinished)) {
                i16 = 16384;
            } else {
                i16 = 8192;
            }
            i11 |= i16;
        }
        if ((196608 & i10) == 0) {
            if (startRestartGroup.changed(onClick)) {
                i15 = 131072;
            } else {
                i15 = 65536;
            }
            i11 |= i15;
        }
        if ((1572864 & i10) == 0) {
            if (startRestartGroup.changed(onButtonRendered)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i11 |= i14;
        }
        if ((12582912 & i10) == 0) {
            if (startRestartGroup.changed(basedOnAdCountdownButton)) {
                i13 = 8388608;
            } else {
                i13 = 4194304;
            }
            i11 |= i13;
        }
        if ((100663296 & i10) == 0) {
            if (startRestartGroup.changed(z12)) {
                i12 = 67108864;
            } else {
                i12 = 33554432;
            }
            i11 |= i12;
        }
        int i21 = i11;
        if ((38347923 & i21) == 38347922 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(686000336, i21, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.LifecycleAwareAdCountdownButton (LifecycleAwareAdCountdownButton.kt:33)");
            }
            startRestartGroup.startReplaceableGroup(773894976);
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, startRestartGroup));
                startRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                rememberedValue = compositionScopedCoroutineScopeCanceller;
            }
            startRestartGroup.endReplaceableGroup();
            gt.g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1117955184);
            boolean changed = startRestartGroup.changed(initialSecondsLeft);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g.b(initialSecondsLeft.a().g(), coroutineScope);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            State collectAsStateWithLifecycle = FlowExtKt.collectAsStateWithLifecycle((kt.i) rememberedValue2, (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, startRestartGroup, 0, 7);
            State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onCountdownFinished, startRestartGroup, (i21 >> 12) & 14);
            Unit unit = Unit.f60915a;
            startRestartGroup.startReplaceableGroup(1117962924);
            boolean changed2 = startRestartGroup.changed(collectAsStateWithLifecycle) | startRestartGroup.changed(rememberUpdatedState);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue3 == companion.getEmpty()) {
                rememberedValue3 = new a(collectAsStateWithLifecycle, rememberUpdatedState, null);
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue3, startRestartGroup, 6);
            Boolean valueOf = Boolean.valueOf(z11);
            Boolean valueOf2 = Boolean.valueOf(z10);
            Boolean valueOf3 = Boolean.valueOf(z12);
            ms.n a10 = initialSecondsLeft.a();
            ms.n a11 = ms.n.a(a(collectAsStateWithLifecycle));
            int i22 = i21 & 14;
            int i23 = i21 >> 6;
            composer2 = startRestartGroup;
            basedOnAdCountdownButton.invoke(boxScope, valueOf, valueOf2, onClick, onButtonRendered, valueOf3, a10, a11, composer2, Integer.valueOf(i22 | (i23 & 112) | (i21 & 896) | (i23 & 7168) | (i23 & 57344) | ((i21 >> 9) & 458752) | ((i21 << 3) & 234881024)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.g0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return t.b(BoxScope.this, initialSecondsLeft, z10, z11, onCountdownFinished, onClick, onButtonRendered, basedOnAdCountdownButton, z12, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final Function0<Unit> d(State<? extends Function0<Unit>> state) {
        return state.getValue();
    }
}
