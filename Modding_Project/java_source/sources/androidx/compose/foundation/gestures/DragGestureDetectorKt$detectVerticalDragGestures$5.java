package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
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
/* compiled from: DragGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5", f = "DragGestureDetector.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ACCURATE_LAYOUT}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$detectVerticalDragGestures$5 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onDragCancel;
    final /* synthetic */ Function0<Unit> $onDragEnd;
    final /* synthetic */ Function1<Offset, Unit> $onDragStart;
    final /* synthetic */ Function2<PointerInputChange, Float, Unit> $onVerticalDrag;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DragGestureDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1", f = "DragGestureDetector.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, 434, TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ASYNC}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function0<Unit> $onDragEnd;
        final /* synthetic */ Function1<Offset, Unit> $onDragStart;
        final /* synthetic */ Function2<PointerInputChange, Float, Unit> $onVerticalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Offset, Unit> function1, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function0<Unit> function0, Function0<Unit> function02, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$onDragStart = function1;
            this.$onVerticalDrag = function2;
            this.$onDragEnd = function0;
            this.$onDragCancel = function02;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b0  */
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
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L32
                if (r1 == r4) goto L2a
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.f.b(r13)
                goto La2
            L16:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1e:
                java.lang.Object r1 = r12.L$1
                kotlin.jvm.internal.Ref$FloatRef r1 = (kotlin.jvm.internal.Ref.FloatRef) r1
                java.lang.Object r3 = r12.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r3 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r3
                kotlin.f.b(r13)
                goto L6d
            L2a:
                java.lang.Object r1 = r12.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                kotlin.f.b(r13)
                goto L48
            L32:
                kotlin.f.b(r13)
                java.lang.Object r13 = r12.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
                r12.L$0 = r13
                r12.label = r4
                r1 = 0
                java.lang.Object r1 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r13, r1, r12)
                if (r1 != r0) goto L45
                return r0
            L45:
                r11 = r1
                r1 = r13
                r13 = r11
            L48:
                androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                kotlin.jvm.internal.Ref$FloatRef r10 = new kotlin.jvm.internal.Ref$FloatRef
                r10.<init>()
                long r5 = r13.m3207getIdJ3iCeTQ()
                int r7 = r13.m3211getTypeT8wyACA()
                androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1 r8 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1
                r8.<init>()
                r12.L$0 = r1
                r12.L$1 = r10
                r12.label = r3
                r4 = r1
                r9 = r12
                java.lang.Object r13 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m289awaitVerticalPointerSlopOrCancellationgDDlDlE(r4, r5, r7, r8, r9)
                if (r13 != r0) goto L6b
                return r0
            L6b:
                r3 = r1
                r1 = r10
            L6d:
                androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                if (r13 == 0) goto Lb5
                kotlin.jvm.functions.Function1<androidx.compose.ui.geometry.Offset, kotlin.Unit> r4 = r12.$onDragStart
                long r5 = r13.m3208getPositionF1C5BW0()
                androidx.compose.ui.geometry.Offset r5 = androidx.compose.ui.geometry.Offset.m1595boximpl(r5)
                r4.invoke(r5)
                kotlin.jvm.functions.Function2<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, kotlin.Unit> r4 = r12.$onVerticalDrag
                float r1 = r1.element
                java.lang.Float r1 = kotlin.coroutines.jvm.internal.a.c(r1)
                r4.invoke(r13, r1)
                long r4 = r13.m3207getIdJ3iCeTQ()
                androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1$1 r13 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1$1
                kotlin.jvm.functions.Function2<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float, kotlin.Unit> r1 = r12.$onVerticalDrag
                r13.<init>()
                r1 = 0
                r12.L$0 = r1
                r12.L$1 = r1
                r12.label = r2
                java.lang.Object r13 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m296verticalDragjO51t88(r3, r4, r13, r12)
                if (r13 != r0) goto La2
                return r0
            La2:
                java.lang.Boolean r13 = (java.lang.Boolean) r13
                boolean r13 = r13.booleanValue()
                if (r13 == 0) goto Lb0
                kotlin.jvm.functions.Function0<kotlin.Unit> r13 = r12.$onDragEnd
                r13.invoke()
                goto Lb5
            Lb0:
                kotlin.jvm.functions.Function0<kotlin.Unit> r13 = r12.$onDragCancel
                r13.invoke()
            Lb5:
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DragGestureDetectorKt$detectVerticalDragGestures$5(Function1<? super Offset, Unit> function1, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function0<Unit> function0, Function0<Unit> function02, c<? super DragGestureDetectorKt$detectVerticalDragGestures$5> cVar) {
        super(2, cVar);
        this.$onDragStart = function1;
        this.$onVerticalDrag = function2;
        this.$onDragEnd = function0;
        this.$onDragCancel = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DragGestureDetectorKt$detectVerticalDragGestures$5 dragGestureDetectorKt$detectVerticalDragGestures$5 = new DragGestureDetectorKt$detectVerticalDragGestures$5(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, cVar);
        dragGestureDetectorKt$detectVerticalDragGestures$5.L$0 = obj;
        return dragGestureDetectorKt$detectVerticalDragGestures$5;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((DragGestureDetectorKt$detectVerticalDragGestures$5) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, null);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
