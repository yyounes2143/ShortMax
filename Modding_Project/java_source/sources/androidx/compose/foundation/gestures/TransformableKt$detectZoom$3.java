package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
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
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Transformable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformableKt$detectZoom$3", f = "Transformable.kt", l = {101}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TransformableKt$detectZoom$3 extends SuspendLambda implements Function2<TransformScope, c<? super Unit>, Object> {
    final /* synthetic */ Ref.BooleanRef $lockedToPanZoom;
    final /* synthetic */ Ref.LongRef $pan;
    final /* synthetic */ State<Boolean> $panZoomLock;
    final /* synthetic */ Ref.BooleanRef $pastTouchSlop;
    final /* synthetic */ Ref.FloatRef $rotation;
    final /* synthetic */ PointerInputScope $this_detectZoom;
    final /* synthetic */ float $touchSlop;
    final /* synthetic */ Ref.FloatRef $zoom;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transformable.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.TransformableKt$detectZoom$3$1", f = "Transformable.kt", l = {103}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.TransformableKt$detectZoom$3$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ TransformScope $$this$transform;
        final /* synthetic */ Ref.BooleanRef $lockedToPanZoom;
        final /* synthetic */ Ref.LongRef $pan;
        final /* synthetic */ State<Boolean> $panZoomLock;
        final /* synthetic */ Ref.BooleanRef $pastTouchSlop;
        final /* synthetic */ Ref.FloatRef $rotation;
        final /* synthetic */ float $touchSlop;
        final /* synthetic */ Ref.FloatRef $zoom;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.BooleanRef booleanRef, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.LongRef longRef, float f10, Ref.BooleanRef booleanRef2, State<Boolean> state, TransformScope transformScope, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$pastTouchSlop = booleanRef;
            this.$zoom = floatRef;
            this.$rotation = floatRef2;
            this.$pan = longRef;
            this.$touchSlop = f10;
            this.$lockedToPanZoom = booleanRef2;
            this.$panZoomLock = state;
            this.$$this$transform = transformScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pastTouchSlop, this.$zoom, this.$rotation, this.$pan, this.$touchSlop, this.$lockedToPanZoom, this.$panZoomLock, this.$$this$transform, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x002e A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x004e A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002c -> B:12:0x002f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 309
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt$detectZoom$3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableKt$detectZoom$3(PointerInputScope pointerInputScope, Ref.BooleanRef booleanRef, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.LongRef longRef, float f10, Ref.BooleanRef booleanRef2, State<Boolean> state, c<? super TransformableKt$detectZoom$3> cVar) {
        super(2, cVar);
        this.$this_detectZoom = pointerInputScope;
        this.$pastTouchSlop = booleanRef;
        this.$zoom = floatRef;
        this.$rotation = floatRef2;
        this.$pan = longRef;
        this.$touchSlop = f10;
        this.$lockedToPanZoom = booleanRef2;
        this.$panZoomLock = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformableKt$detectZoom$3 transformableKt$detectZoom$3 = new TransformableKt$detectZoom$3(this.$this_detectZoom, this.$pastTouchSlop, this.$zoom, this.$rotation, this.$pan, this.$touchSlop, this.$lockedToPanZoom, this.$panZoomLock, cVar);
        transformableKt$detectZoom$3.L$0 = obj;
        return transformableKt$detectZoom$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable c<? super Unit> cVar) {
        return ((TransformableKt$detectZoom$3) create(transformScope, cVar)).invokeSuspend(Unit.f60915a);
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
            TransformScope transformScope = (TransformScope) this.L$0;
            PointerInputScope pointerInputScope = this.$this_detectZoom;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pastTouchSlop, this.$zoom, this.$rotation, this.$pan, this.$touchSlop, this.$lockedToPanZoom, this.$panZoomLock, transformScope, null);
            this.label = 1;
            if (pointerInputScope.awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
