package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j;
import com.ss.ttm.player.MediaPlayer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nCompanion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,98:1\n1057#2,6:99\n1057#2,6:105\n1057#2,6:111\n1057#2,6:117\n68#3,5:123\n73#3:154\n77#3:159\n75#4:128\n76#4,11:130\n89#4:158\n76#5:129\n460#6,13:141\n473#6,3:155\n62#7,5:160\n76#8:165\n*S KotlinDebug\n*F\n+ 1 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt\n*L\n32#1:99,6\n38#1:105,6\n50#1:111,6\n59#1:117,6\n76#1:123,5\n76#1:154\n76#1:159\n76#1:128\n76#1:130,11\n76#1:158\n76#1:129\n76#1:141,13\n76#1:155,3\n39#1:160,5\n44#1:165\n*E\n"})
/* loaded from: classes6.dex */
public final class a {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionKt$Companion$1$1", f = "Companion.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0569a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35812h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35813i;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionKt$Companion$1$1$1", f = "Companion.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0570a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35814h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35815i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0570a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, rs.c<? super C0570a> cVar) {
                super(2, cVar);
                this.f35815i = jVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0570a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0570a(this.f35815i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f35814h == 0) {
                    kotlin.f.b(obj);
                    this.f35815i.b();
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0569a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, rs.c<? super C0569a> cVar) {
            super(2, cVar);
            this.f35813i = jVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0569a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0569a(this.f35813i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35812h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext main = com.moloco.sdk.internal.scheduling.c.a().getMain();
                C0570a c0570a = new C0570a(this.f35813i, null);
                this.f35812h = 1;
                if (gt.e.g(main, c0570a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionKt$Companion$3$1", f = "Companion.kt", l = {51}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<PointerInputScope, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35816h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35817i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35818j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f35818j = jVar;
        }

        public static final Unit j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, Offset offset, Offset offset2) {
            jVar.w(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c.f34983a.c(offset.m1616unboximpl()));
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f35818j, cVar);
            bVar.f35817i = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(PointerInputScope pointerInputScope, rs.c<? super Unit> cVar) {
            return ((b) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35816h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar = this.f35818j;
                Function2 function2 = new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return a.b.j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j.this, (Offset) obj2, (Offset) obj3);
                    }
                };
                this.f35816h = 1;
                if (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.b((PointerInputScope) this.f35817i, function2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionKt$Companion$4$1", f = "Companion.kt", l = {60}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nCompanion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt$Companion$4$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<PointerInputScope, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35819h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35820i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35821j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f35822k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, Function0<Unit> function0, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f35821j = jVar;
            this.f35822k = function0;
        }

        public static final Unit j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, Function0 function0, Offset offset, Offset offset2) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c cVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c.f34983a;
            jVar.w(cVar.c(offset.m1616unboximpl()));
            if (function0 != null) {
                function0.invoke();
            } else {
                jVar.C(cVar.c(offset.m1616unboximpl()));
            }
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(this.f35821j, this.f35822k, cVar);
            cVar2.f35820i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(PointerInputScope pointerInputScope, rs.c<? super Unit> cVar) {
            return ((c) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35819h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar = this.f35821j;
                final Function0<Unit> function0 = this.f35822k;
                Function2 function2 = new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.g
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return a.c.j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j.this, function0, (Offset) obj2, (Offset) obj3);
                    }
                };
                this.f35819h = 1;
                if (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.b((PointerInputScope) this.f35820i, function2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt\n*L\n1#1,483:1\n40#2,2:484\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d implements DisposableEffectResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35823a;

        public d(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar) {
            this.f35823a = jVar;
        }

        @Override // androidx.compose.runtime.DisposableEffectResult
        public void dispose() {
            this.f35823a.K();
        }
    }

    public static final DisposableEffectResult a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        return new d(jVar);
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j b(State<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> state) {
        return state.getValue();
    }

    public static final Unit c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j jVar, Function0 function0, Modifier modifier, int i10, int i11, Composer composer, int i12) {
        e(jVar, function0, modifier, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    public static final Unit d(j.b bVar, Modifier modifier, int i10, int i11, Composer composer, int i12) {
        f(bVar, modifier, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void e(@NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j viewModel, @Nullable final Function0<Unit> function0, @Nullable Modifier modifier, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Composer startRestartGroup = composer.startRestartGroup(-1013674470);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(viewModel)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(function0)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        int i16 = i11 & 4;
        if (i16 != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i12 & 147) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i16 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1013674470, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.Companion (Companion.kt:30)");
            }
            Unit unit = Unit.f60915a;
            startRestartGroup.startReplaceableGroup(-1879742322);
            boolean changed = startRestartGroup.changed(viewModel);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new C0569a(viewModel, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1879738001);
            boolean changed2 = startRestartGroup.changed(viewModel);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return a.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j.this, (DisposableEffectScope) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.DisposableEffect(unit, (Function1) rememberedValue2, startRestartGroup, 6);
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j b10 = b(SnapshotStateKt.collectAsState(viewModel.q(), null, startRestartGroup, 0, 1));
            if (b10 instanceof j.a) {
                startRestartGroup.startReplaceableGroup(1857903466);
                startRestartGroup.startReplaceableGroup(-1879727652);
                boolean changed3 = startRestartGroup.changed(viewModel);
                Object rememberedValue3 = startRestartGroup.rememberedValue();
                if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                    rememberedValue3 = new b(viewModel, null);
                    startRestartGroup.updateRememberedValue(rememberedValue3);
                }
                startRestartGroup.endReplaceableGroup();
                q0.b((j.a) b10, SuspendingPointerInputFilterKt.pointerInput(modifier, unit, (Function2) rememberedValue3), startRestartGroup, 0, 0);
                startRestartGroup.endReplaceableGroup();
            } else if (b10 instanceof j.b) {
                startRestartGroup.startReplaceableGroup(1858286099);
                startRestartGroup.startReplaceableGroup(-1879715540);
                boolean changed4 = startRestartGroup.changed(viewModel) | startRestartGroup.changed(function0);
                Object rememberedValue4 = startRestartGroup.rememberedValue();
                if (changed4 || rememberedValue4 == Composer.Companion.getEmpty()) {
                    rememberedValue4 = new c(viewModel, function0, null);
                    startRestartGroup.updateRememberedValue(rememberedValue4);
                }
                startRestartGroup.endReplaceableGroup();
                f((j.b) b10, SuspendingPointerInputFilterKt.pointerInput(modifier, unit, (Function2) rememberedValue4), startRestartGroup, 0, 0);
                startRestartGroup.endReplaceableGroup();
            } else if (b10 == null) {
                startRestartGroup.startReplaceableGroup(1858714333);
                startRestartGroup.endReplaceableGroup();
            } else {
                startRestartGroup.startReplaceableGroup(-1879731707);
                startRestartGroup.endReplaceableGroup();
                throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return a.c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j.this, function0, modifier2, i10, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void f(final j.b bVar, final Modifier modifier, Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(2103037730);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(bVar)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        int i15 = i11 & 2;
        if (i15 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i12 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i15 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2103037730, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionVastResourceImage (Companion.kt:74)");
            }
            Alignment center = Alignment.Companion.getCenter();
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            at.n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            s0.b(bVar, null, startRestartGroup, i12 & 14, 2);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return a.d(j.b.this, modifier, i10, i11, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
