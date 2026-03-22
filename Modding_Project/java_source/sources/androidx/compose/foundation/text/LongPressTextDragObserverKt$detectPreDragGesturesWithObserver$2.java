package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LongPressTextDragObserver.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {98}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongPressTextDragObserver.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1", f = "LongPressTextDragObserver.kt", l = {99, 103}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextDragObserver textDragObserver, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$observer = textDragObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0058 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0056 -> B:17:0x0059). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r15) {
            /*
                r14 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r14.label
                r2 = 0
                r3 = 2
                r4 = 0
                r5 = 1
                if (r1 == 0) goto L2c
                if (r1 == r5) goto L24
                if (r1 != r3) goto L1c
                java.lang.Object r1 = r14.L$1
                androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                java.lang.Object r6 = r14.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r6 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r6
                kotlin.f.b(r15)
                goto L59
            L1c:
                java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r15.<init>(r0)
                throw r15
            L24:
                java.lang.Object r1 = r14.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                kotlin.f.b(r15)
                goto L3f
            L2c:
                kotlin.f.b(r15)
                java.lang.Object r15 = r14.L$0
                r1 = r15
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                r14.L$0 = r1
                r14.label = r5
                java.lang.Object r15 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r1, r2, r14, r5, r4)
                if (r15 != r0) goto L3f
                return r0
            L3f:
                androidx.compose.ui.input.pointer.PointerInputChange r15 = (androidx.compose.ui.input.pointer.PointerInputChange) r15
                androidx.compose.foundation.text.TextDragObserver r6 = r14.$observer
                long r7 = r15.m3208getPositionF1C5BW0()
                r6.mo760onDownk4lQ0M(r7)
                r6 = r1
                r1 = r15
            L4c:
                r14.L$0 = r6
                r14.L$1 = r1
                r14.label = r3
                java.lang.Object r15 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r6, r4, r14, r5, r4)
                if (r15 != r0) goto L59
                return r0
            L59:
                androidx.compose.ui.input.pointer.PointerEvent r15 = (androidx.compose.ui.input.pointer.PointerEvent) r15
                java.util.List r15 = r15.getChanges()
                int r7 = r15.size()
                r8 = r2
            L64:
                if (r8 >= r7) goto L84
                java.lang.Object r9 = r15.get(r8)
                androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                long r10 = r9.m3207getIdJ3iCeTQ()
                long r12 = r1.m3207getIdJ3iCeTQ()
                boolean r10 = androidx.compose.ui.input.pointer.PointerId.m3195equalsimpl0(r10, r12)
                if (r10 == 0) goto L81
                boolean r9 = r9.getPressed()
                if (r9 == 0) goto L81
                goto L4c
            L81:
                int r8 = r8 + 1
                goto L64
            L84:
                androidx.compose.foundation.text.TextDragObserver r15 = r14.$observer
                r15.onUp()
                kotlin.Unit r15 = kotlin.Unit.f60915a
                return r15
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(TextDragObserver textDragObserver, c<? super LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2> cVar) {
        super(2, cVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(this.$observer, cVar);
        longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.L$0 = obj;
        return longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, null);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
