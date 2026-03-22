package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import at.n;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$detectTapGestures$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
    final /* synthetic */ Function1<Offset, Unit> $onLongPress;
    final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
    final /* synthetic */ Function1<Offset, Unit> $onTap;
    final /* synthetic */ PointerInputScope $this_detectTapGestures;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TapGestureDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
        final /* synthetic */ g0 $$this$coroutineScope;
        final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
        final /* synthetic */ Function1<Offset, Unit> $onLongPress;
        final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
        final /* synthetic */ Function1<Offset, Unit> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TapGestureDetector.kt */
        @Metadata
        @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1", f = "TapGestureDetector.kt", l = {94, 106, 117, 127, 140, 158}, m = "invokeSuspend")
        /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00191 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
            final /* synthetic */ g0 $$this$coroutineScope;
            final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
            final /* synthetic */ Function1<Offset, Unit> $onLongPress;
            final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
            final /* synthetic */ Function1<Offset, Unit> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            long J$0;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapGestureDetector.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$1", f = "TapGestureDetector.kt", l = {98}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00201 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00201(n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, c<? super C00201> cVar) {
                    super(2, cVar);
                    this.$onPress = nVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new C00201(this.$onPress, this.$pressScope, this.$down, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((C00201) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                        n<PressGestureScope, Offset, c<? super Unit>, Object> nVar = this.$onPress;
                        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                        Offset m1595boximpl = Offset.m1595boximpl(this.$down.m3208getPositionF1C5BW0());
                        this.label = 1;
                        if (nVar.invoke(pressGestureScopeImpl, m1595boximpl, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapGestureDetector.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$2", f = "TapGestureDetector.kt", l = {107}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$2  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super PointerInputChange>, Object> {
                private /* synthetic */ Object L$0;
                int label;

                AnonymousClass2(c<? super AnonymousClass2> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(cVar);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super PointerInputChange> cVar) {
                    return ((AnonymousClass2) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
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
                        this.label = 1;
                        obj = TapGestureDetectorKt.waitForUpOrCancellation((AwaitPointerEventScope) this.L$0, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return obj;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapGestureDetector.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$3", f = "TapGestureDetector.kt", l = {135}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$3  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                final /* synthetic */ PointerInputChange $secondDown;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, c<? super AnonymousClass3> cVar) {
                    super(2, cVar);
                    this.$onPress = nVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$secondDown = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass3(this.$onPress, this.$pressScope, this.$secondDown, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                        n<PressGestureScope, Offset, c<? super Unit>, Object> nVar = this.$onPress;
                        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                        Offset m1595boximpl = Offset.m1595boximpl(this.$secondDown.m3208getPositionF1C5BW0());
                        this.label = 1;
                        if (nVar.invoke(pressGestureScopeImpl, m1595boximpl, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapGestureDetector.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$4", f = "TapGestureDetector.kt", l = {141}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$4  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass4 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
                final /* synthetic */ Function1<Offset, Unit> $onDoubleTap;
                final /* synthetic */ Function1<Offset, Unit> $onTap;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                final /* synthetic */ Ref.ObjectRef<PointerInputChange> $upOrCancel;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass4(PressGestureScopeImpl pressGestureScopeImpl, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Ref.ObjectRef<PointerInputChange> objectRef, c<? super AnonymousClass4> cVar) {
                    super(2, cVar);
                    this.$pressScope = pressGestureScopeImpl;
                    this.$onDoubleTap = function1;
                    this.$onTap = function12;
                    this.$upOrCancel = objectRef;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, this.$upOrCancel, cVar);
                    anonymousClass4.L$0 = obj;
                    return anonymousClass4;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass4) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
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
                        this.label = 1;
                        obj = TapGestureDetectorKt.waitForUpOrCancellation((AwaitPointerEventScope) this.L$0, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    PointerInputChange pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange != null) {
                        pointerInputChange.consume();
                        this.$pressScope.release();
                        this.$onDoubleTap.invoke(Offset.m1595boximpl(pointerInputChange.m3208getPositionF1C5BW0()));
                        return Unit.f60915a;
                    }
                    this.$pressScope.cancel();
                    Function1<Offset, Unit> function1 = this.$onTap;
                    if (function1 != null) {
                        function1.invoke(Offset.m1595boximpl(this.$upOrCancel.element.m3208getPositionF1C5BW0()));
                        return Unit.f60915a;
                    }
                    return null;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00191(PressGestureScopeImpl pressGestureScopeImpl, n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, g0 g0Var, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function1<? super Offset, Unit> function13, c<? super C00191> cVar) {
                super(2, cVar);
                this.$pressScope = pressGestureScopeImpl;
                this.$onPress = nVar;
                this.$$this$coroutineScope = g0Var;
                this.$onLongPress = function1;
                this.$onDoubleTap = function12;
                this.$onTap = function13;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                C00191 c00191 = new C00191(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, cVar);
                c00191.L$0 = obj;
                return c00191;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                return ((C00191) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x00bd  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x00df A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00e0  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x00e9 A[Catch: PointerEventTimeoutCancellationException -> 0x00ef, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x00ef, blocks: (B:34:0x00e3, B:36:0x00e9, B:38:0x00f3), top: B:93:0x00e3 }] */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00f3 A[Catch: PointerEventTimeoutCancellationException -> 0x00ef, TRY_LEAVE, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x00ef, blocks: (B:34:0x00e3, B:36:0x00e9, B:38:0x00f3), top: B:93:0x00e3 }] */
            /* JADX WARN: Removed duplicated region for block: B:42:0x0102  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x0120 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:49:0x012c  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x015f  */
            /* JADX WARN: Removed duplicated region for block: B:63:0x0174  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x01bc  */
            /* JADX WARN: Removed duplicated region for block: B:75:0x01cf  */
            /* JADX WARN: Removed duplicated region for block: B:78:0x01e9 A[RETURN] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
                /*
                    Method dump skipped, instructions count: 516
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2.AnonymousClass1.C00191.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PressGestureScopeImpl pressGestureScopeImpl, n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, g0 g0Var, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function1<? super Offset, Unit> function13, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$pressScope = pressGestureScopeImpl;
            this.$onPress = nVar;
            this.$$this$coroutineScope = g0Var;
            this.$onLongPress = function1;
            this.$onDoubleTap = function12;
            this.$onTap = function13;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
                C00191 c00191 = new C00191(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, null);
                this.label = 1;
                if (((PointerInputScope) this.L$0).awaitPointerEventScope(c00191, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TapGestureDetectorKt$detectTapGestures$2(PointerInputScope pointerInputScope, n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, Function1<? super Offset, Unit> function1, Function1<? super Offset, Unit> function12, Function1<? super Offset, Unit> function13, c<? super TapGestureDetectorKt$detectTapGestures$2> cVar) {
        super(2, cVar);
        this.$this_detectTapGestures = pointerInputScope;
        this.$onPress = nVar;
        this.$onLongPress = function1;
        this.$onDoubleTap = function12;
        this.$onTap = function13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TapGestureDetectorKt$detectTapGestures$2 tapGestureDetectorKt$detectTapGestures$2 = new TapGestureDetectorKt$detectTapGestures$2(this.$this_detectTapGestures, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, cVar);
        tapGestureDetectorKt$detectTapGestures$2.L$0 = obj;
        return tapGestureDetectorKt$detectTapGestures$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TapGestureDetectorKt$detectTapGestures$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            PressGestureScopeImpl pressGestureScopeImpl = new PressGestureScopeImpl(this.$this_detectTapGestures);
            PointerInputScope pointerInputScope = this.$this_detectTapGestures;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(pressGestureScopeImpl, this.$onPress, g0Var, this.$onLongPress, this.$onDoubleTap, this.$onTap, null);
            this.label = 1;
            if (ForEachGestureKt.forEachGesture(pointerInputScope, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
