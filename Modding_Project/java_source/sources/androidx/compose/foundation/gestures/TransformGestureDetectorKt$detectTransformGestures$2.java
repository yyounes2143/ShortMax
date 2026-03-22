package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import at.o;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransformGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2", f = "TransformGestureDetector.kt", l = {52}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TransformGestureDetectorKt$detectTransformGestures$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ o<Offset, Offset, Float, Float, Unit> $onGesture;
    final /* synthetic */ boolean $panZoomLock;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransformGestureDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2$1", f = "TransformGestureDetector.kt", l = {60, 62}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ o<Offset, Offset, Float, Float, Unit> $onGesture;
        final /* synthetic */ boolean $panZoomLock;
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(boolean z10, o<? super Offset, ? super Offset, ? super Float, ? super Float, Unit> oVar, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$panZoomLock = z10;
            this.$onGesture = oVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$panZoomLock, this.$onGesture, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0126, code lost:
            if (androidx.compose.ui.geometry.Offset.m1603equalsimpl0(r7, androidx.compose.ui.geometry.Offset.Companion.m1622getZeroF1C5BW0()) == false) goto L57;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x016b  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00ad A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2, types: [int] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x008c -> B:17:0x008f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r24) {
            /*
                Method dump skipped, instructions count: 416
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransformGestureDetectorKt$detectTransformGestures$2(boolean z10, o<? super Offset, ? super Offset, ? super Float, ? super Float, Unit> oVar, c<? super TransformGestureDetectorKt$detectTransformGestures$2> cVar) {
        super(2, cVar);
        this.$panZoomLock = z10;
        this.$onGesture = oVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformGestureDetectorKt$detectTransformGestures$2 transformGestureDetectorKt$detectTransformGestures$2 = new TransformGestureDetectorKt$detectTransformGestures$2(this.$panZoomLock, this.$onGesture, cVar);
        transformGestureDetectorKt$detectTransformGestures$2.L$0 = obj;
        return transformGestureDetectorKt$detectTransformGestures$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((TransformGestureDetectorKt$detectTransformGestures$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$panZoomLock, this.$onGesture, null);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
