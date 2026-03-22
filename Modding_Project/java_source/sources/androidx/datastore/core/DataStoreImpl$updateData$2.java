package androidx.datastore.core;

import androidx.datastore.core.Message;
import gt.g0;
import gt.p;
import gt.r;
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
@d(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class DataStoreImpl$updateData$2<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {
    final /* synthetic */ Function2<T, c<? super T>, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreImpl$updateData$2(DataStoreImpl<T> dataStoreImpl, Function2<? super T, ? super c<? super T>, ? extends Object> function2, c<? super DataStoreImpl$updateData$2> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DataStoreImpl$updateData$2 dataStoreImpl$updateData$2 = new DataStoreImpl$updateData$2(this.this$0, this.$transform, cVar);
        dataStoreImpl$updateData$2.L$0 = obj;
        return dataStoreImpl$updateData$2;
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super T> cVar) {
        return ((DataStoreImpl$updateData$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SimpleActor simpleActor;
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
            p b10 = r.b(null, 1, null);
            Message.Update update = new Message.Update(this.$transform, b10, ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState(), ((g0) this.L$0).getCoroutineContext());
            simpleActor = ((DataStoreImpl) this.this$0).writeActor;
            simpleActor.offer(update);
            this.label = 1;
            obj = b10.await(this);
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
