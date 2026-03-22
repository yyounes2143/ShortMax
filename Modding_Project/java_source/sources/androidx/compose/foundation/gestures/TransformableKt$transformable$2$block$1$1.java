package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Transformable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.TransformableKt$transformable$2$block$1$1", f = "Transformable.kt", l = {71}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TransformableKt$transformable$2$block$1$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ State<Boolean> $updatePanZoomLock;
    final /* synthetic */ State<TransformableState> $updatedState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transformable.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.TransformableKt$transformable$2$block$1$1$1", f = "Transformable.kt", l = {72}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.TransformableKt$transformable$2$block$1$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
        final /* synthetic */ State<Boolean> $updatePanZoomLock;
        final /* synthetic */ State<TransformableState> $updatedState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(State<Boolean> state, State<? extends TransformableState> state2, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$updatePanZoomLock = state;
            this.$updatedState = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$updatePanZoomLock, this.$updatedState, cVar);
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
            Object detectZoom;
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
                State<Boolean> state = this.$updatePanZoomLock;
                State<TransformableState> state2 = this.$updatedState;
                this.label = 1;
                detectZoom = TransformableKt.detectZoom((PointerInputScope) this.L$0, state, state2, this);
                if (detectZoom == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransformableKt$transformable$2$block$1$1(State<Boolean> state, State<? extends TransformableState> state2, c<? super TransformableKt$transformable$2$block$1$1> cVar) {
        super(2, cVar);
        this.$updatePanZoomLock = state;
        this.$updatedState = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TransformableKt$transformable$2$block$1$1 transformableKt$transformable$2$block$1$1 = new TransformableKt$transformable$2$block$1$1(this.$updatePanZoomLock, this.$updatedState, cVar);
        transformableKt$transformable$2$block$1$1.L$0 = obj;
        return transformableKt$transformable$2$block$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((TransformableKt$transformable$2$block$1$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$updatePanZoomLock, this.$updatedState, null);
            this.label = 1;
            if (ForEachGestureKt.forEachGesture((PointerInputScope) this.L$0, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
