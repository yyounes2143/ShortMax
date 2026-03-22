package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Clickable.kt */
@Metadata
@d(c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1", f = "Clickable.kt", l = {318}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ClickableKt$combinedClickable$4$gesture$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ State<Function0<Boolean>> $delayPressInteraction;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ boolean $hasDoubleClick;
    final /* synthetic */ boolean $hasLongClick;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ State<Function0<Unit>> $onClickState;
    final /* synthetic */ State<Function0<Unit>> $onDoubleClickState;
    final /* synthetic */ State<Function0<Unit>> $onLongClickState;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Clickable.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$3", f = "Clickable.kt", l = {331}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements n<PressGestureScope, Offset, c<? super Unit>, Object> {
        final /* synthetic */ State<Function0<Boolean>> $delayPressInteraction;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
        /* synthetic */ long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(boolean z10, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, State<? extends Function0<Boolean>> state, c<? super AnonymousClass3> cVar) {
            super(3, cVar);
            this.$enabled = z10;
            this.$interactionSource = mutableInteractionSource;
            this.$pressedInteraction = mutableState;
            this.$delayPressInteraction = state;
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, c<? super Unit> cVar) {
            return m231invoked4ec7I(pressGestureScope, offset.m1616unboximpl(), cVar);
        }

        @Nullable
        /* renamed from: invoke-d-4ec7I  reason: not valid java name */
        public final Object m231invoked4ec7I(@NotNull PressGestureScope pressGestureScope, long j10, @Nullable c<? super Unit> cVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, cVar);
            anonymousClass3.L$0 = pressGestureScope;
            anonymousClass3.J$0 = j10;
            return anonymousClass3.invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                long j10 = this.J$0;
                if (this.$enabled) {
                    MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                    MutableState<PressInteraction.Press> mutableState = this.$pressedInteraction;
                    State<Function0<Boolean>> state = this.$delayPressInteraction;
                    this.label = 1;
                    if (ClickableKt.m226handlePressInteractionEPk0efs(pressGestureScope, j10, mutableInteractionSource, mutableState, state, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ClickableKt$combinedClickable$4$gesture$1(boolean z10, boolean z11, boolean z12, State<? extends Function0<Unit>> state, State<? extends Function0<Unit>> state2, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, State<? extends Function0<Boolean>> state3, State<? extends Function0<Unit>> state4, c<? super ClickableKt$combinedClickable$4$gesture$1> cVar) {
        super(2, cVar);
        this.$hasDoubleClick = z10;
        this.$enabled = z11;
        this.$hasLongClick = z12;
        this.$onDoubleClickState = state;
        this.$onLongClickState = state2;
        this.$interactionSource = mutableInteractionSource;
        this.$pressedInteraction = mutableState;
        this.$delayPressInteraction = state3;
        this.$onClickState = state4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ClickableKt$combinedClickable$4$gesture$1 clickableKt$combinedClickable$4$gesture$1 = new ClickableKt$combinedClickable$4$gesture$1(this.$hasDoubleClick, this.$enabled, this.$hasLongClick, this.$onDoubleClickState, this.$onLongClickState, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, this.$onClickState, cVar);
        clickableKt$combinedClickable$4$gesture$1.L$0 = obj;
        return clickableKt$combinedClickable$4$gesture$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((ClickableKt$combinedClickable$4$gesture$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Function1<Offset, Unit> function1;
        Function1<Offset, Unit> function12;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            if (this.$hasDoubleClick && this.$enabled) {
                final State<Function0<Unit>> state = this.$onDoubleClickState;
                function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                        m229invokek4lQ0M(offset.m1616unboximpl());
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                    public final void m229invokek4lQ0M(long j10) {
                        Function0<Unit> value = state.getValue();
                        if (value != null) {
                            value.invoke();
                        }
                    }
                };
            } else {
                function1 = null;
            }
            if (this.$hasLongClick && this.$enabled) {
                final State<Function0<Unit>> state2 = this.$onLongClickState;
                function12 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                        m230invokek4lQ0M(offset.m1616unboximpl());
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                    public final void m230invokek4lQ0M(long j10) {
                        Function0<Unit> value = state2.getValue();
                        if (value != null) {
                            value.invoke();
                        }
                    }
                };
            } else {
                function12 = null;
            }
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, null);
            final boolean z10 = this.$enabled;
            final State<Function0<Unit>> state3 = this.$onClickState;
            Function1<Offset, Unit> function13 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m232invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m232invokek4lQ0M(long j10) {
                    if (z10) {
                        state3.getValue().invoke();
                    }
                }
            };
            this.label = 1;
            if (TapGestureDetectorKt.detectTapGestures(pointerInputScope, function1, function12, anonymousClass3, function13, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
