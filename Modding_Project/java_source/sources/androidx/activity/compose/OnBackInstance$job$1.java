package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PredictiveBackHandler.kt */
@Metadata
@d(c = "androidx.activity.compose.OnBackInstance$job$1", f = "PredictiveBackHandler.kt", l = {154}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class OnBackInstance$job$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function2<b<BackEventCompat>, c<? super Unit>, Object> $onBack;
    Object L$0;
    int label;
    final /* synthetic */ OnBackInstance this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PredictiveBackHandler.kt */
    @Metadata
    @d(c = "androidx.activity.compose.OnBackInstance$job$1$1", f = "PredictiveBackHandler.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.activity.compose.OnBackInstance$job$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements n<kt.c<? super BackEventCompat>, Throwable, c<? super Unit>, Object> {
        final /* synthetic */ Ref.BooleanRef $completed;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.BooleanRef booleanRef, c<? super AnonymousClass1> cVar) {
            super(3, cVar);
            this.$completed = booleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                this.$completed.element = true;
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // at.n
        @Nullable
        public final Object invoke(@NotNull kt.c<? super BackEventCompat> cVar, @Nullable Throwable th2, @Nullable c<? super Unit> cVar2) {
            return new AnonymousClass1(this.$completed, cVar2).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OnBackInstance$job$1(Function2<? super b<BackEventCompat>, ? super c<? super Unit>, ? extends Object> function2, OnBackInstance onBackInstance, c<? super OnBackInstance$job$1> cVar) {
        super(2, cVar);
        this.$onBack = function2;
        this.this$0 = onBackInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OnBackInstance$job$1(this.$onBack, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((OnBackInstance$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Ref.BooleanRef booleanRef;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                booleanRef = (Ref.BooleanRef) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            Function2<b<BackEventCompat>, c<? super Unit>, Object> function2 = this.$onBack;
            b<BackEventCompat> N = kotlinx.coroutines.flow.c.N(kotlinx.coroutines.flow.c.p(this.this$0.getChannel()), new AnonymousClass1(booleanRef2, null));
            this.L$0 = booleanRef2;
            this.label = 1;
            if (function2.invoke(N, this) == f10) {
                return f10;
            }
            booleanRef = booleanRef2;
        }
        if (booleanRef.element) {
            return Unit.f60915a;
        }
        throw new IllegalStateException("You must collect the progress flow");
    }
}
