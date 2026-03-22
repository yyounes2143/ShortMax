package androidx.compose.material;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.State;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1", f = "Slider.kt", l = {955}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SliderKt$rangeSliderPressDragModifier$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ MutableInteractionSource $endInteractionSource;
    final /* synthetic */ State<Function1<Boolean, Unit>> $gestureEndAction;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ float $maxPx;
    final /* synthetic */ State<Function2<Boolean, Float, Unit>> $onDrag;
    final /* synthetic */ State<Float> $rawOffsetEnd;
    final /* synthetic */ State<Float> $rawOffsetStart;
    final /* synthetic */ MutableInteractionSource $startInteractionSource;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Slider.kt */
    @Metadata
    @d(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1", f = "Slider.kt", l = {956}, m = "invokeSuspend")
    /* renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$pointerInput;
        final /* synthetic */ State<Function1<Boolean, Unit>> $gestureEndAction;
        final /* synthetic */ boolean $isRtl;
        final /* synthetic */ float $maxPx;
        final /* synthetic */ State<Function2<Boolean, Float, Unit>> $onDrag;
        final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
        final /* synthetic */ State<Float> $rawOffsetEnd;
        final /* synthetic */ State<Float> $rawOffsetStart;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Slider.kt */
        @Metadata
        @d(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1", f = "Slider.kt", l = {957}, m = "invokeSuspend")
        /* renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00481 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
            final /* synthetic */ g0 $$this$coroutineScope;
            final /* synthetic */ State<Function1<Boolean, Unit>> $gestureEndAction;
            final /* synthetic */ boolean $isRtl;
            final /* synthetic */ float $maxPx;
            final /* synthetic */ State<Function2<Boolean, Float, Unit>> $onDrag;
            final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
            final /* synthetic */ State<Float> $rawOffsetEnd;
            final /* synthetic */ State<Float> $rawOffsetStart;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Slider.kt */
            @Metadata
            @d(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1", f = "Slider.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_AV_SYNC_REFINED, TTVideoEngineInterface.PLAYER_OPTION_GSKEY_BURY_DATA_OPTIMIZE, 987}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00491 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
                final /* synthetic */ g0 $$this$coroutineScope;
                final /* synthetic */ State<Function1<Boolean, Unit>> $gestureEndAction;
                final /* synthetic */ boolean $isRtl;
                final /* synthetic */ float $maxPx;
                final /* synthetic */ State<Function2<Boolean, Float, Unit>> $onDrag;
                final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                final /* synthetic */ State<Float> $rawOffsetEnd;
                final /* synthetic */ State<Float> $rawOffsetStart;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                Object L$3;
                Object L$4;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Slider.kt */
                @Metadata
                @d(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2", f = "Slider.kt", l = {1004}, m = "invokeSuspend")
                /* renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ Ref.BooleanRef $draggingStart;
                    final /* synthetic */ DragInteraction $finishInteraction;
                    final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(RangeSliderLogic rangeSliderLogic, Ref.BooleanRef booleanRef, DragInteraction dragInteraction, c<? super AnonymousClass2> cVar) {
                        super(2, cVar);
                        this.$rangeSliderLogic = rangeSliderLogic;
                        this.$draggingStart = booleanRef;
                        this.$finishInteraction = dragInteraction;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass2(this.$rangeSliderLogic, this.$draggingStart, this.$finishInteraction, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object f10 = a.f();
                        int i10 = this.label;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                f.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            f.b(obj);
                            MutableInteractionSource activeInteraction = this.$rangeSliderLogic.activeInteraction(this.$draggingStart.element);
                            DragInteraction dragInteraction = this.$finishInteraction;
                            this.label = 1;
                            if (activeInteraction.emit(dragInteraction, this) == f10) {
                                return f10;
                            }
                        }
                        return Unit.f60915a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00491(boolean z10, float f10, RangeSliderLogic rangeSliderLogic, State<Float> state, g0 g0Var, State<? extends Function1<? super Boolean, Unit>> state2, State<Float> state3, State<? extends Function2<? super Boolean, ? super Float, Unit>> state4, c<? super C00491> cVar) {
                    super(2, cVar);
                    this.$isRtl = z10;
                    this.$maxPx = f10;
                    this.$rangeSliderLogic = rangeSliderLogic;
                    this.$rawOffsetStart = state;
                    this.$$this$coroutineScope = g0Var;
                    this.$gestureEndAction = state2;
                    this.$rawOffsetEnd = state3;
                    this.$onDrag = state4;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    C00491 c00491 = new C00491(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, cVar);
                    c00491.L$0 = obj;
                    return c00491;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                    return ((C00491) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                /* JADX WARN: Removed duplicated region for block: B:36:0x00da  */
                /* JADX WARN: Removed duplicated region for block: B:53:0x016f A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
                /* JADX WARN: Removed duplicated region for block: B:57:0x017a A[Catch: CancellationException -> 0x0188, TryCatch #0 {CancellationException -> 0x0188, blocks: (B:8:0x001d, B:55:0x0172, B:57:0x017a, B:58:0x0180), top: B:65:0x001d }] */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0180 A[Catch: CancellationException -> 0x0188, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x0188, blocks: (B:8:0x001d, B:55:0x0172, B:57:0x017a, B:58:0x0180), top: B:65:0x001d }] */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r17) {
                    /*
                        Method dump skipped, instructions count: 433
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1.AnonymousClass1.C00481.C00491.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00481(boolean z10, float f10, RangeSliderLogic rangeSliderLogic, State<Float> state, g0 g0Var, State<? extends Function1<? super Boolean, Unit>> state2, State<Float> state3, State<? extends Function2<? super Boolean, ? super Float, Unit>> state4, c<? super C00481> cVar) {
                super(2, cVar);
                this.$isRtl = z10;
                this.$maxPx = f10;
                this.$rangeSliderLogic = rangeSliderLogic;
                this.$rawOffsetStart = state;
                this.$$this$coroutineScope = g0Var;
                this.$gestureEndAction = state2;
                this.$rawOffsetEnd = state3;
                this.$onDrag = state4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                C00481 c00481 = new C00481(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, cVar);
                c00481.L$0 = obj;
                return c00481;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
                return ((C00481) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object f10 = a.f();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    C00491 c00491 = new C00491(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
                    this.label = 1;
                    if (((PointerInputScope) this.L$0).awaitPointerEventScope(c00491, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PointerInputScope pointerInputScope, boolean z10, float f10, RangeSliderLogic rangeSliderLogic, State<Float> state, State<? extends Function1<? super Boolean, Unit>> state2, State<Float> state3, State<? extends Function2<? super Boolean, ? super Float, Unit>> state4, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$$this$pointerInput = pointerInputScope;
            this.$isRtl = z10;
            this.$maxPx = f10;
            this.$rangeSliderLogic = rangeSliderLogic;
            this.$rawOffsetStart = state;
            this.$gestureEndAction = state2;
            this.$rawOffsetEnd = state3;
            this.$onDrag = state4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$pointerInput, this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, cVar);
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
            Object f10 = a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.L$0;
                PointerInputScope pointerInputScope = this.$$this$pointerInput;
                C00481 c00481 = new C00481(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, g0Var, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
                this.label = 1;
                if (ForEachGestureKt.forEachGesture(pointerInputScope, c00481, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SliderKt$rangeSliderPressDragModifier$1(MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, State<Float> state, State<Float> state2, State<? extends Function2<? super Boolean, ? super Float, Unit>> state3, boolean z10, float f10, State<? extends Function1<? super Boolean, Unit>> state4, c<? super SliderKt$rangeSliderPressDragModifier$1> cVar) {
        super(2, cVar);
        this.$startInteractionSource = mutableInteractionSource;
        this.$endInteractionSource = mutableInteractionSource2;
        this.$rawOffsetStart = state;
        this.$rawOffsetEnd = state2;
        this.$onDrag = state3;
        this.$isRtl = z10;
        this.$maxPx = f10;
        this.$gestureEndAction = state4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SliderKt$rangeSliderPressDragModifier$1 sliderKt$rangeSliderPressDragModifier$1 = new SliderKt$rangeSliderPressDragModifier$1(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag, this.$isRtl, this.$maxPx, this.$gestureEndAction, cVar);
        sliderKt$rangeSliderPressDragModifier$1.L$0 = obj;
        return sliderKt$rangeSliderPressDragModifier$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((SliderKt$rangeSliderPressDragModifier$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((PointerInputScope) this.L$0, this.$isRtl, this.$maxPx, new RangeSliderLogic(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag), this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
            this.label = 1;
            if (i.f(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
