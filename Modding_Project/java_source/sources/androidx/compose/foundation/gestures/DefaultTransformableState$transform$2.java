package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import gt.g0;
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
/* compiled from: TransformableState.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DefaultTransformableState$transform$2", f = "TransformableState.kt", l = {249}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DefaultTransformableState$transform$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function2<TransformScope, c<? super Unit>, Object> $block;
    final /* synthetic */ MutatePriority $transformPriority;
    int label;
    final /* synthetic */ DefaultTransformableState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransformableState.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.DefaultTransformableState$transform$2$1", f = "TransformableState.kt", l = {252}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.DefaultTransformableState$transform$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TransformScope, c<? super Unit>, Object> {
        final /* synthetic */ Function2<TransformScope, c<? super Unit>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DefaultTransformableState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(DefaultTransformableState defaultTransformableState, Function2<? super TransformScope, ? super c<? super Unit>, ? extends Object> function2, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = defaultTransformableState;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$block, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull TransformScope transformScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(transformScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            MutableState mutableState;
            MutableState mutableState2;
            MutableState mutableState3;
            Object f10 = a.f();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    TransformScope transformScope = (TransformScope) this.L$0;
                    mutableState2 = this.this$0.isTransformingState;
                    mutableState2.setValue(kotlin.coroutines.jvm.internal.a.a(true));
                    Function2<TransformScope, c<? super Unit>, Object> function2 = this.$block;
                    this.label = 1;
                    if (function2.invoke(transformScope, this) == f10) {
                        return f10;
                    }
                }
                mutableState3 = this.this$0.isTransformingState;
                mutableState3.setValue(kotlin.coroutines.jvm.internal.a.a(false));
                return Unit.f60915a;
            } catch (Throwable th2) {
                mutableState = this.this$0.isTransformingState;
                mutableState.setValue(kotlin.coroutines.jvm.internal.a.a(false));
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DefaultTransformableState$transform$2(DefaultTransformableState defaultTransformableState, MutatePriority mutatePriority, Function2<? super TransformScope, ? super c<? super Unit>, ? extends Object> function2, c<? super DefaultTransformableState$transform$2> cVar) {
        super(2, cVar);
        this.this$0 = defaultTransformableState;
        this.$transformPriority = mutatePriority;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DefaultTransformableState$transform$2(this.this$0, this.$transformPriority, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DefaultTransformableState$transform$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutatorMutex mutatorMutex;
        TransformScope transformScope;
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
            mutatorMutex = this.this$0.transformMutex;
            transformScope = this.this$0.transformScope;
            MutatePriority mutatePriority = this.$transformPriority;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$block, null);
            this.label = 1;
            if (mutatorMutex.mutateWith(transformScope, mutatePriority, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
