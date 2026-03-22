package androidx.datastore.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1", f = "DataStoreImpl.kt", l = {331}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class DataStoreImpl$transformAndWrite$2$newData$1<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {
    final /* synthetic */ Data<T> $curData;
    final /* synthetic */ Function2<T, c<? super T>, Object> $transform;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$transformAndWrite$2$newData$1(Function2<? super T, ? super c<? super T>, ? extends Object> function2, Data<T> data, c<? super DataStoreImpl$transformAndWrite$2$newData$1> cVar) {
        super(2, cVar);
        this.$transform = function2;
        this.$curData = data;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, this.$curData, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super T> cVar) {
        return ((DataStoreImpl$transformAndWrite$2$newData$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            T value = this.$curData.getValue();
            this.label = 1;
            obj = this.$transform.invoke(value, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
