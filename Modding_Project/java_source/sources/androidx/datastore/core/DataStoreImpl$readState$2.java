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
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", l = {218, 226}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readState$2<T> extends SuspendLambda implements Function2<g0, c<? super State<T>>, Object> {
    final /* synthetic */ boolean $requireLock;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readState$2(DataStoreImpl<T> dataStoreImpl, boolean z10, c<? super DataStoreImpl$readState$2> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
        this.$requireLock = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DataStoreImpl$readState$2(this.this$0, this.$requireLock, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super State<T>> cVar) {
        return ((DataStoreImpl$readState$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object readAndInitOrPropagateAndThrowFailure;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f.b(obj);
                        return (State) obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
            } else {
                f.b(obj);
                if (((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState() instanceof Final) {
                    return ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState();
                }
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                readAndInitOrPropagateAndThrowFailure = dataStoreImpl.readAndInitOrPropagateAndThrowFailure(this);
                if (readAndInitOrPropagateAndThrowFailure == f10) {
                    return f10;
                }
            }
            DataStoreImpl<T> dataStoreImpl2 = this.this$0;
            boolean z10 = this.$requireLock;
            this.label = 2;
            obj = dataStoreImpl2.readDataAndUpdateCache(z10, this);
            if (obj == f10) {
                return f10;
            }
            return (State) obj;
        } catch (Throwable th2) {
            return new ReadException(th2, -1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
