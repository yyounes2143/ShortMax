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
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", l = {206}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$detectTapAndPress$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
    final /* synthetic */ Function1<Offset, Unit> $onTap;
    final /* synthetic */ PressGestureScopeImpl $pressScope;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TapGestureDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", l = {208}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$forEachGesture;
        final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
        final /* synthetic */ Function1<Offset, Unit> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TapGestureDetector.kt */
        @Metadata
        @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", l = {210, 216}, m = "invokeSuspend")
        /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00171 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
            final /* synthetic */ g0 $$this$coroutineScope;
            final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
            final /* synthetic */ Function1<Offset, Unit> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TapGestureDetector.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1", f = "TapGestureDetector.kt", l = {213}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00181 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ n<PressGestureScope, Offset, c<? super Unit>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00181(n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, c<? super C00181> cVar) {
                    super(2, cVar);
                    this.$onPress = nVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new C00181(this.$onPress, this.$pressScope, this.$down, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((C00181) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00171(n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, g0 g0Var, PressGestureScopeImpl pressGestureScopeImpl, Function1<? super Offset, Unit> function1, c<? super C00171> cVar) {
                super(2, cVar);
                this.$onPress = nVar;
                this.$$this$coroutineScope = g0Var;
                this.$pressScope = pressGestureScopeImpl;
                this.$onTap = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                C00171 c00171 = new C00171(this.$onPress, this.$$this$coroutineScope, this.$pressScope, this.$onTap, cVar);
                c00171.L$0 = obj;
                return c00171;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                return ((C00171) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @org.jetbrains.annotations.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
                /*
                    r12 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                    int r1 = r12.label
                    r2 = 2
                    r3 = 0
                    r4 = 1
                    if (r1 == 0) goto L23
                    if (r1 == r4) goto L1b
                    if (r1 != r2) goto L13
                    kotlin.f.b(r13)
                    goto L61
                L13:
                    java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r13.<init>(r0)
                    throw r13
                L1b:
                    java.lang.Object r1 = r12.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    kotlin.f.b(r13)
                    goto L37
                L23:
                    kotlin.f.b(r13)
                    java.lang.Object r13 = r12.L$0
                    r1 = r13
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    r12.L$0 = r1
                    r12.label = r4
                    r13 = 0
                    java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r1, r13, r12, r4, r3)
                    if (r13 != r0) goto L37
                    return r0
                L37:
                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                    r13.consume()
                    at.n<androidx.compose.foundation.gestures.PressGestureScope, androidx.compose.ui.geometry.Offset, rs.c<? super kotlin.Unit>, java.lang.Object> r4 = r12.$onPress
                    at.n r5 = androidx.compose.foundation.gestures.TapGestureDetectorKt.access$getNoPressGesture$p()
                    if (r4 == r5) goto L56
                    gt.g0 r6 = r12.$$this$coroutineScope
                    androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1 r9 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1
                    at.n<androidx.compose.foundation.gestures.PressGestureScope, androidx.compose.ui.geometry.Offset, rs.c<? super kotlin.Unit>, java.lang.Object> r4 = r12.$onPress
                    androidx.compose.foundation.gestures.PressGestureScopeImpl r5 = r12.$pressScope
                    r9.<init>(r4, r5, r13, r3)
                    r10 = 3
                    r11 = 0
                    r7 = 0
                    r8 = 0
                    gt.e.d(r6, r7, r8, r9, r10, r11)
                L56:
                    r12.L$0 = r3
                    r12.label = r2
                    java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(r1, r12)
                    if (r13 != r0) goto L61
                    return r0
                L61:
                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                    if (r13 != 0) goto L6b
                    androidx.compose.foundation.gestures.PressGestureScopeImpl r13 = r12.$pressScope
                    r13.cancel()
                    goto L82
                L6b:
                    r13.consume()
                    androidx.compose.foundation.gestures.PressGestureScopeImpl r0 = r12.$pressScope
                    r0.release()
                    kotlin.jvm.functions.Function1<androidx.compose.ui.geometry.Offset, kotlin.Unit> r0 = r12.$onTap
                    if (r0 == 0) goto L82
                    long r1 = r13.m3208getPositionF1C5BW0()
                    androidx.compose.ui.geometry.Offset r13 = androidx.compose.ui.geometry.Offset.m1595boximpl(r1)
                    r0.invoke(r13)
                L82:
                    kotlin.Unit r13 = kotlin.Unit.f60915a
                    return r13
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2.AnonymousClass1.C00171.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PressGestureScopeImpl pressGestureScopeImpl, PointerInputScope pointerInputScope, n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, Function1<? super Offset, Unit> function1, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$pressScope = pressGestureScopeImpl;
            this.$$this$forEachGesture = pointerInputScope;
            this.$onPress = nVar;
            this.$onTap = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, this.$$this$forEachGesture, this.$onPress, this.$onTap, cVar);
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
                this.$pressScope.reset();
                PointerInputScope pointerInputScope = this.$$this$forEachGesture;
                C00171 c00171 = new C00171(this.$onPress, g0Var, this.$pressScope, this.$onTap, null);
                this.label = 1;
                if (pointerInputScope.awaitPointerEventScope(c00171, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TapGestureDetectorKt$detectTapAndPress$2(PressGestureScopeImpl pressGestureScopeImpl, n<? super PressGestureScope, ? super Offset, ? super c<? super Unit>, ? extends Object> nVar, Function1<? super Offset, Unit> function1, c<? super TapGestureDetectorKt$detectTapAndPress$2> cVar) {
        super(2, cVar);
        this.$pressScope = pressGestureScopeImpl;
        this.$onPress = nVar;
        this.$onTap = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TapGestureDetectorKt$detectTapAndPress$2 tapGestureDetectorKt$detectTapAndPress$2 = new TapGestureDetectorKt$detectTapAndPress$2(this.$pressScope, this.$onPress, this.$onTap, cVar);
        tapGestureDetectorKt$detectTapAndPress$2.L$0 = obj;
        return tapGestureDetectorKt$detectTapAndPress$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((TapGestureDetectorKt$detectTapAndPress$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, (PointerInputScope) this.L$0, this.$onPress, this.$onTap, null);
            this.label = 1;
            if (i.f(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
