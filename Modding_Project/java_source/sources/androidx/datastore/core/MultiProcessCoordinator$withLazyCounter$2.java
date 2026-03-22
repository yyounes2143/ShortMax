package androidx.datastore.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: MultiProcessCoordinator.android.kt */
@Metadata
@d(c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2", f = "MultiProcessCoordinator.android.kt", l = {163}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nMultiProcessCoordinator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2\n*L\n1#1,205:1\n*E\n"})
/* loaded from: classes2.dex */
public final class MultiProcessCoordinator$withLazyCounter$2<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {
    final /* synthetic */ Function2<SharedCounter, c<? super T>, Object> $block;
    int label;
    final /* synthetic */ MultiProcessCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MultiProcessCoordinator$withLazyCounter$2(Function2<? super SharedCounter, ? super c<? super T>, ? extends Object> function2, MultiProcessCoordinator multiProcessCoordinator, c<? super MultiProcessCoordinator$withLazyCounter$2> cVar) {
        super(2, cVar);
        this.$block = function2;
        this.this$0 = multiProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new MultiProcessCoordinator$withLazyCounter$2(this.$block, this.this$0, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super T> cVar) {
        return ((MultiProcessCoordinator$withLazyCounter$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SharedCounter sharedCounter;
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
            Function2<SharedCounter, c<? super T>, Object> function2 = this.$block;
            sharedCounter = this.this$0.getSharedCounter();
            this.label = 1;
            obj = function2.invoke(sharedCounter, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        SharedCounter sharedCounter;
        Function2<SharedCounter, c<? super T>, Object> function2 = this.$block;
        sharedCounter = this.this$0.getSharedCounter();
        return function2.invoke(sharedCounter, this);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
