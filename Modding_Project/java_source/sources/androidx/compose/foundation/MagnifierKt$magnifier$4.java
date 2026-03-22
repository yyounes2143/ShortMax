package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.BufferOverflow;
import kt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Magnifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class MagnifierKt$magnifier$4 extends Lambda implements n<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Function1<Density, Offset> $magnifierCenter;
    final /* synthetic */ Function1<DpSize, Unit> $onSizeChanged;
    final /* synthetic */ PlatformMagnifierFactory $platformMagnifierFactory;
    final /* synthetic */ Function1<Density, Offset> $sourceCenter;
    final /* synthetic */ MagnifierStyle $style;
    final /* synthetic */ float $zoom;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Magnifier.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1", f = "Magnifier.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ MutableState<Offset> $anchorPositionInRoot$delegate;
        final /* synthetic */ Density $density;
        final /* synthetic */ State<Boolean> $isMagnifierShown$delegate;
        final /* synthetic */ kt.d<Unit> $onNeedsUpdate;
        final /* synthetic */ PlatformMagnifierFactory $platformMagnifierFactory;
        final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;
        final /* synthetic */ MagnifierStyle $style;
        final /* synthetic */ State<Function1<Density, Offset>> $updatedMagnifierCenter$delegate;
        final /* synthetic */ State<Function1<DpSize, Unit>> $updatedOnSizeChanged$delegate;
        final /* synthetic */ State<Float> $updatedZoom$delegate;
        final /* synthetic */ View $view;
        final /* synthetic */ float $zoom;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Magnifier.kt */
        @Metadata
        @d(c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1$1", f = "Magnifier.kt", l = {}, m = "invokeSuspend")
        /* renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00091 extends SuspendLambda implements Function2<Unit, c<? super Unit>, Object> {
            final /* synthetic */ PlatformMagnifier $magnifier;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00091(PlatformMagnifier platformMagnifier, c<? super C00091> cVar) {
                super(2, cVar);
                this.$magnifier = platformMagnifier;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                return new C00091(this.$magnifier, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.label == 0) {
                    f.b(obj);
                    this.$magnifier.updateContent();
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull Unit unit, @Nullable c<? super Unit> cVar) {
                return ((C00091) create(unit, cVar)).invokeSuspend(Unit.f60915a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PlatformMagnifierFactory platformMagnifierFactory, MagnifierStyle magnifierStyle, View view, Density density, float f10, kt.d<Unit> dVar, State<? extends Function1<? super DpSize, Unit>> state, State<Boolean> state2, State<Offset> state3, State<? extends Function1<? super Density, Offset>> state4, MutableState<Offset> mutableState, State<Float> state5, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$platformMagnifierFactory = platformMagnifierFactory;
            this.$style = magnifierStyle;
            this.$view = view;
            this.$density = density;
            this.$zoom = f10;
            this.$onNeedsUpdate = dVar;
            this.$updatedOnSizeChanged$delegate = state;
            this.$isMagnifierShown$delegate = state2;
            this.$sourceCenterInRoot$delegate = state3;
            this.$updatedMagnifierCenter$delegate = state4;
            this.$anchorPositionInRoot$delegate = mutableState;
            this.$updatedZoom$delegate = state5;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$platformMagnifierFactory, this.$style, this.$view, this.$density, this.$zoom, this.$onNeedsUpdate, this.$updatedOnSizeChanged$delegate, this.$isMagnifierShown$delegate, this.$sourceCenterInRoot$delegate, this.$updatedMagnifierCenter$delegate, this.$anchorPositionInRoot$delegate, this.$updatedZoom$delegate, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            PlatformMagnifier platformMagnifier;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    platformMagnifier = (PlatformMagnifier) this.L$0;
                    try {
                        f.b(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        platformMagnifier.dismiss();
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.L$0;
                final PlatformMagnifier create = this.$platformMagnifierFactory.create(this.$style, this.$view, this.$density, this.$zoom);
                final Ref.LongRef longRef = new Ref.LongRef();
                long mo270getSizeYbymL2g = create.mo270getSizeYbymL2g();
                Density density = this.$density;
                Function1 m262invoke$lambda6 = MagnifierKt$magnifier$4.m262invoke$lambda6(this.$updatedOnSizeChanged$delegate);
                if (m262invoke$lambda6 != null) {
                    m262invoke$lambda6.invoke(DpSize.m4135boximpl(density.mo340toDpSizekrfVVM(IntSizeKt.m4219toSizeozmzZPI(mo270getSizeYbymL2g))));
                }
                longRef.element = mo270getSizeYbymL2g;
                kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.$onNeedsUpdate, new C00091(create, null)), g0Var);
                try {
                    final Density density2 = this.$density;
                    final State<Boolean> state = this.$isMagnifierShown$delegate;
                    final State<Offset> state2 = this.$sourceCenterInRoot$delegate;
                    final State<Function1<Density, Offset>> state3 = this.$updatedMagnifierCenter$delegate;
                    final MutableState<Offset> mutableState = this.$anchorPositionInRoot$delegate;
                    final State<Float> state4 = this.$updatedZoom$delegate;
                    final State<Function1<DpSize, Unit>> state5 = this.$updatedOnSizeChanged$delegate;
                    kt.b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Unit>() { // from class: androidx.compose.foundation.MagnifierKt.magnifier.4.1.2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.f60915a;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            long m1621getUnspecifiedF1C5BW0;
                            if (MagnifierKt$magnifier$4.m257invoke$lambda10(state)) {
                                PlatformMagnifier platformMagnifier2 = PlatformMagnifier.this;
                                long m263invoke$lambda8 = MagnifierKt$magnifier$4.m263invoke$lambda8(state2);
                                Object invoke = MagnifierKt$magnifier$4.m260invoke$lambda4(state3).invoke(density2);
                                MutableState<Offset> mutableState2 = mutableState;
                                long m1616unboximpl = ((Offset) invoke).m1616unboximpl();
                                if (OffsetKt.m1625isSpecifiedk4lQ0M(m1616unboximpl)) {
                                    m1621getUnspecifiedF1C5BW0 = Offset.m1611plusMKHz9U(MagnifierKt$magnifier$4.m256invoke$lambda1(mutableState2), m1616unboximpl);
                                } else {
                                    m1621getUnspecifiedF1C5BW0 = Offset.Companion.m1621getUnspecifiedF1C5BW0();
                                }
                                platformMagnifier2.mo271updateWko1d7g(m263invoke$lambda8, m1621getUnspecifiedF1C5BW0, MagnifierKt$magnifier$4.m261invoke$lambda5(state4));
                                long mo270getSizeYbymL2g2 = PlatformMagnifier.this.mo270getSizeYbymL2g();
                                Ref.LongRef longRef2 = longRef;
                                Density density3 = density2;
                                State<Function1<DpSize, Unit>> state6 = state5;
                                if (IntSize.m4207equalsimpl0(mo270getSizeYbymL2g2, longRef2.element)) {
                                    return;
                                }
                                longRef2.element = mo270getSizeYbymL2g2;
                                Function1 m262invoke$lambda62 = MagnifierKt$magnifier$4.m262invoke$lambda6(state6);
                                if (m262invoke$lambda62 != null) {
                                    m262invoke$lambda62.invoke(DpSize.m4135boximpl(density3.mo340toDpSizekrfVVM(IntSizeKt.m4219toSizeozmzZPI(mo270getSizeYbymL2g2))));
                                    return;
                                }
                                return;
                            }
                            PlatformMagnifier.this.dismiss();
                        }
                    });
                    this.L$0 = create;
                    this.label = 1;
                    if (kotlinx.coroutines.flow.c.l(snapshotFlow, this) == f10) {
                        return f10;
                    }
                    platformMagnifier = create;
                } catch (Throwable th3) {
                    th = th3;
                    platformMagnifier = create;
                    platformMagnifier.dismiss();
                    throw th;
                }
            }
            platformMagnifier.dismiss();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MagnifierKt$magnifier$4(Function1<? super Density, Offset> function1, Function1<? super Density, Offset> function12, float f10, Function1<? super DpSize, Unit> function13, PlatformMagnifierFactory platformMagnifierFactory, MagnifierStyle magnifierStyle) {
        super(3);
        this.$sourceCenter = function1;
        this.$magnifierCenter = function12;
        this.$zoom = f10;
        this.$onSizeChanged = function13;
        this.$platformMagnifierFactory = platformMagnifierFactory;
        this.$style = magnifierStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-1  reason: not valid java name */
    public static final long m256invoke$lambda1(MutableState<Offset> mutableState) {
        return mutableState.getValue().m1616unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-10  reason: not valid java name */
    public static final boolean m257invoke$lambda10(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-2  reason: not valid java name */
    public static final void m258invoke$lambda2(MutableState<Offset> mutableState, long j10) {
        mutableState.setValue(Offset.m1595boximpl(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-3  reason: not valid java name */
    public static final Function1<Density, Offset> m259invoke$lambda3(State<? extends Function1<? super Density, Offset>> state) {
        return (Function1) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-4  reason: not valid java name */
    public static final Function1<Density, Offset> m260invoke$lambda4(State<? extends Function1<? super Density, Offset>> state) {
        return (Function1) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-5  reason: not valid java name */
    public static final float m261invoke$lambda5(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-6  reason: not valid java name */
    public static final Function1<DpSize, Unit> m262invoke$lambda6(State<? extends Function1<? super DpSize, Unit>> state) {
        return (Function1) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-8  reason: not valid java name */
    public static final long m263invoke$lambda8(State<Offset> state) {
        return state.getValue().m1616unboximpl();
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return invoke(modifier, composer, num.intValue());
    }

    @Composable
    @NotNull
    public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(composed, "$this$composed");
        composer.startReplaceableGroup(-454877003);
        View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m1595boximpl(Offset.Companion.m1621getUnspecifiedF1C5BW0()), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue;
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(this.$sourceCenter, composer, 0);
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(this.$magnifierCenter, composer, 0);
        State rememberUpdatedState3 = SnapshotStateKt.rememberUpdatedState(Float.valueOf(this.$zoom), composer, 0);
        State rememberUpdatedState4 = SnapshotStateKt.rememberUpdatedState(this.$onSizeChanged, composer, 0);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt.derivedStateOf(new Function0<Offset>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$4$sourceCenterInRoot$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Offset invoke() {
                    return Offset.m1595boximpl(m265invokeF1C5BW0());
                }

                /* renamed from: invoke-F1C5BW0  reason: not valid java name */
                public final long m265invokeF1C5BW0() {
                    Function1 m259invoke$lambda3;
                    m259invoke$lambda3 = MagnifierKt$magnifier$4.m259invoke$lambda3(rememberUpdatedState);
                    long m1616unboximpl = ((Offset) m259invoke$lambda3.invoke(Density.this)).m1616unboximpl();
                    if (OffsetKt.m1625isSpecifiedk4lQ0M(MagnifierKt$magnifier$4.m256invoke$lambda1(mutableState)) && OffsetKt.m1625isSpecifiedk4lQ0M(m1616unboximpl)) {
                        return Offset.m1611plusMKHz9U(MagnifierKt$magnifier$4.m256invoke$lambda1(mutableState), m1616unboximpl);
                    }
                    return Offset.Companion.m1621getUnspecifiedF1C5BW0();
                }
            });
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final State state = (State) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = SnapshotStateKt.derivedStateOf(new Function0<Boolean>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$4$isMagnifierShown$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(OffsetKt.m1625isSpecifiedk4lQ0M(MagnifierKt$magnifier$4.m263invoke$lambda8(state)));
                }
            });
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        State state2 = (State) rememberedValue3;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue4 = composer.rememberedValue();
        if (rememberedValue4 == companion.getEmpty()) {
            rememberedValue4 = g.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceableGroup();
        final kt.d dVar = (kt.d) rememberedValue4;
        Float valueOf = Float.valueOf(this.$platformMagnifierFactory.getCanUpdateZoom() ? 0.0f : this.$zoom);
        MagnifierStyle magnifierStyle = this.$style;
        EffectsKt.LaunchedEffect(new Object[]{view, density, valueOf, magnifierStyle, Boolean.valueOf(Intrinsics.areEqual(magnifierStyle, MagnifierStyle.Companion.getTextDefault()))}, (Function2<? super g0, ? super c<? super Unit>, ? extends Object>) new AnonymousClass1(this.$platformMagnifierFactory, this.$style, view, density, this.$zoom, dVar, rememberUpdatedState4, state2, state, rememberUpdatedState2, mutableState, rememberUpdatedState3, null), composer, 8);
        Modifier semantics$default = SemanticsModifierKt.semantics$default(DrawModifierKt.drawBehind(OnGloballyPositionedModifierKt.onGloballyPositioned(composed, new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$4.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                invoke2(layoutCoordinates);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutCoordinates it) {
                Intrinsics.checkNotNullParameter(it, "it");
                MagnifierKt$magnifier$4.m258invoke$lambda2(mutableState, LayoutCoordinatesKt.positionInRoot(it));
            }
        }), new Function1<DrawScope, Unit>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$4.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DrawScope drawBehind) {
                Intrinsics.checkNotNullParameter(drawBehind, "$this$drawBehind");
                dVar.g(Unit.f60915a);
            }
        }), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$4.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                SemanticsPropertyKey<Function0<Offset>> magnifierPositionInRoot = MagnifierKt.getMagnifierPositionInRoot();
                final State<Offset> state3 = state;
                semantics.set(magnifierPositionInRoot, new Function0<Offset>() { // from class: androidx.compose.foundation.MagnifierKt.magnifier.4.4.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Offset invoke() {
                        return Offset.m1595boximpl(m264invokeF1C5BW0());
                    }

                    /* renamed from: invoke-F1C5BW0  reason: not valid java name */
                    public final long m264invokeF1C5BW0() {
                        return MagnifierKt$magnifier$4.m263invoke$lambda8(state3);
                    }
                });
            }
        }, 1, null);
        composer.endReplaceableGroup();
        return semantics$default;
    }
}
