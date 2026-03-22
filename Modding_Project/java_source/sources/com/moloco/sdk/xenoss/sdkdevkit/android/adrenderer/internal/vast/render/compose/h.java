package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.profileinstaller.ProfileVerifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nLinear.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Linear.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/LinearKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,165:1\n1057#2,6:166\n1057#2,6:205\n1057#2,6:211\n1057#2,6:217\n1057#2,6:223\n1057#2,6:229\n1057#2,6:235\n1057#2,6:241\n1057#2,6:247\n1057#2,6:253\n1057#2,6:259\n1057#2,6:265\n1057#2,6:271\n1057#2,6:277\n67#3,6:172\n73#3:204\n77#3:287\n75#4:178\n76#4,11:180\n89#4:286\n76#5:179\n460#6,13:191\n473#6,3:283\n76#7:288\n76#7:289\n76#7:290\n102#7,2:291\n76#7:293\n102#7,2:294\n76#7:296\n102#7,2:297\n76#7:299\n*S KotlinDebug\n*F\n+ 1 Linear.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/LinearKt\n*L\n42#1:166,6\n52#1:205,6\n56#1:211,6\n63#1:217,6\n73#1:223,6\n77#1:229,6\n85#1:235,6\n89#1:241,6\n92#1:247,6\n101#1:253,6\n118#1:259,6\n121#1:265,6\n132#1:271,6\n133#1:277,6\n48#1:172,6\n48#1:204\n48#1:287\n48#1:178\n48#1:180,11\n48#1:286\n48#1:179\n48#1:191,13\n48#1:283,3\n49#1:288\n50#1:289\n52#1:290\n52#1:291,2\n56#1:293\n56#1:294,2\n63#1:296\n63#1:297,2\n129#1:299\n*E\n"})
/* loaded from: classes6.dex */
public final class h {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.LinearKt$Linear$1$1", f = "Linear.kt", l = {43}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35873h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m f35874i;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.LinearKt$Linear$1$1$1", f = "Linear.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0572a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35875h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m f35876i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0572a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, rs.c<? super C0572a> cVar) {
                super(2, cVar);
                this.f35876i = mVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0572a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0572a(this.f35876i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f35875h == 0) {
                    kotlin.f.b(obj);
                    this.f35876i.b();
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f35874i = mVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f35874i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35873h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext main = com.moloco.sdk.internal.scheduling.c.a().getMain();
                C0572a c0572a = new C0572a(this.f35874i, null);
                this.f35873h = 1;
                if (gt.e.g(main, c0572a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, Unit> {
        public b(Object obj) {
            super(1, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m.class, "onError", "onError(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/VastAdShowError;)V", 0);
        }

        public final void b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m) this.receiver).v(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l lVar) {
            b(lVar);
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.LinearKt$Linear$2$5$1", f = "Linear.kt", l = {93}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nLinear.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Linear.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/LinearKt$Linear$2$5$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<PointerInputScope, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35877h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35878i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f35879j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m f35880k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Function0<Unit> function0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f35879j = function0;
            this.f35880k = mVar;
        }

        public static final Unit j(Function0 function0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, Offset offset, Offset offset2) {
            if (function0 != null) {
                function0.invoke();
            } else {
                mVar.C(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c.f34983a.c(offset.m1616unboximpl()));
            }
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(this.f35879j, this.f35880k, cVar);
            cVar2.f35878i = obj;
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
            int i10 = this.f35877h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final Function0<Unit> function0 = this.f35879j;
                final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar = this.f35880k;
                Function2 function2 = new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.x
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return h.c.j(Function0.this, mVar, (Offset) obj2, (Offset) obj3);
                    }
                };
                this.f35877h = 1;
                if (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.b((PointerInputScope) this.f35878i, function2, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
        public d(Object obj) {
            super(1, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m.class, "onMuteChange", "onMuteChange(Z)V", 0);
        }

        public final void b(boolean z10) {
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m) this.receiver).O(z10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            b(bool.booleanValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class e extends FunctionReferenceImpl implements Function0<Unit> {
        public e(Object obj) {
            super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m.class, "onVastPrivacyIconDisplayed", "onVastPrivacyIconDisplayed()V", 0);
        }

        public final void b() {
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m) this.receiver).i();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class f extends FunctionReferenceImpl implements Function0<Unit> {
        public f(Object obj) {
            super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m.class, "onVastPrivacyIconClick", "onVastPrivacyIconClick()V", 0);
        }

        public final void b() {
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m) this.receiver).v();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class g implements at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<? extends Unit>, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Alignment f35881a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ PaddingValues f35882b;

        /* loaded from: classes6.dex */
        public static final class a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j f35883a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f35884b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f35885c;

            public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, Function0<Unit> function0, Function0<Unit> function02) {
                this.f35883a = jVar;
                this.f35884b = function0;
                this.f35885c = function02;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(989733896, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastIcon.<anonymous>.<anonymous> (Linear.kt:155)");
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar = this.f35883a;
                if (jVar != null) {
                    l.b(jVar, this.f35884b, this.f35885c, null, composer, 0, 8);
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                a(animatedVisibilityScope, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public g(Alignment alignment, PaddingValues paddingValues) {
            this.f35881a = alignment;
            this.f35882b = paddingValues;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(BoxScope boxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, Function0<Unit> onDisplayed, Function0<Unit> onClick, Composer composer, int i10) {
            int i11;
            boolean z10;
            int i12;
            int i13;
            int i14;
            int i15;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onDisplayed, "onDisplayed");
            Intrinsics.checkNotNullParameter(onClick, "onClick");
            if ((i10 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i11 = i15 | i10;
            } else {
                i11 = i10;
            }
            if ((i10 & 48) == 0) {
                if (composer.changed(jVar)) {
                    i14 = 32;
                } else {
                    i14 = 16;
                }
                i11 |= i14;
            }
            if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(onDisplayed)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i11 |= i13;
            }
            if ((i10 & 3072) == 0) {
                if (composer.changed(onClick)) {
                    i12 = 2048;
                } else {
                    i12 = 1024;
                }
                i11 |= i12;
            }
            if ((i11 & 9363) == 9362 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-903645392, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastIcon.<anonymous> (Linear.kt:149)");
            }
            if (jVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            AnimatedVisibilityKt.AnimatedVisibility(z10, PaddingKt.padding(boxScope.align(Modifier.Companion, this.f35881a), this.f35882b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, 989733896, true, new a(jVar, onDisplayed, onClick)), composer, (int) ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.q
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, Function0<? extends Unit> function0, Function0<? extends Unit> function02, Composer composer, Integer num) {
            a(boxScope, jVar, function0, function02, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @Composable
    @NotNull
    public static final at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> a(@Nullable Alignment alignment, @Nullable PaddingValues paddingValues, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1318345093);
        if ((i11 & 1) != 0) {
            alignment = Alignment.Companion.getBottomStart();
        }
        if ((i11 & 2) != 0) {
            paddingValues = PaddingKt.m440PaddingValues0680j_4(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.a());
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1318345093, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastIcon (Linear.kt:148)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, -903645392, true, new g(alignment, paddingValues));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> b(MutableState<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean>> mutableState) {
        return mutableState.getValue();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> c(State<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long>> state) {
        return state.getValue();
    }

    public static final Unit d(MutableState mutableState, boolean z10) {
        k(mutableState, new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p(Boolean.valueOf(z10)));
        return Unit.f60915a;
    }

    public static final Unit e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, MutableState mutableState, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i it) {
        Intrinsics.checkNotNullParameter(it, "it");
        mVar.I(it);
        j(mutableState, it);
        return Unit.f60915a;
    }

    public static final Unit f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, MutableState mutableState, boolean z10) {
        mVar.P(z10);
        m(mutableState, z10);
        return Unit.f60915a;
    }

    public static final Unit g(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, a.AbstractC0597a.c button, a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        mVar.h(button);
        mVar.i(buttonType);
        return Unit.f60915a;
    }

    public static final Unit h(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, Function0 function0, Modifier modifier, at.r rVar, at.p pVar, at.q qVar, at.r rVar2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, Function0 function02, int i10, int i11, Composer composer, int i12) {
        l(mVar, function0, modifier, rVar, pVar, qVar, rVar2, a0Var, function02, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    public static final Unit i(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m mVar, boolean z10) {
        if (z10) {
            mVar.Q();
        } else {
            mVar.R();
        }
        return Unit.f60915a;
    }

    public static final void j(MutableState<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> mutableState, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar) {
        mutableState.setValue(iVar);
    }

    public static final void k(MutableState<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean>> mutableState, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar) {
        mutableState.setValue(pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:209:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00fa  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void l(@org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m r33, @org.jetbrains.annotations.Nullable final kotlin.jvm.functions.Function0<kotlin.Unit> r34, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r35, @org.jetbrains.annotations.Nullable final at.r<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super java.lang.Boolean, ? super kotlin.jvm.functions.Function2<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, ? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c.EnumC0599a, kotlin.Unit>, ? super kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r36, @org.jetbrains.annotations.Nullable final at.p<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, @org.jetbrains.annotations.Nullable final at.q<? super androidx.compose.foundation.layout.BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r38, @org.jetbrains.annotations.Nullable final at.r<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit>, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 r40, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r41, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 1327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h.l(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, at.r, at.p, at.q, at.r, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void m(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    public static final boolean n(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    public static final boolean o(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i p(MutableState<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> mutableState) {
        return mutableState.getValue();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j q(State<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j> state) {
        return state.getValue();
    }
}
