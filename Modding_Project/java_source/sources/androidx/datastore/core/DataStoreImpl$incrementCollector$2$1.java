package androidx.datastore.core;

import androidx.datastore.core.DataStoreImpl;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl$incrementCollector$2$1", f = "DataStoreImpl.kt", l = {134, 135}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$incrementCollector$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$incrementCollector$2$1(DataStoreImpl<T> dataStoreImpl, c<? super DataStoreImpl$incrementCollector$2$1> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DataStoreImpl$incrementCollector$2$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DataStoreImpl$incrementCollector$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        DataStoreImpl.InitDataStore initDataStore;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            initDataStore = ((DataStoreImpl) this.this$0).readAndInit;
            this.label = 1;
            if (initDataStore.awaitComplete(this) == f10) {
                return f10;
            }
        }
        b o10 = kotlinx.coroutines.flow.c.o(this.this$0.getCoordinator().getUpdateNotifications());
        final DataStoreImpl<T> dataStoreImpl = this.this$0;
        kt.c cVar = new kt.c() { // from class: androidx.datastore.core.DataStoreImpl$incrementCollector$2$1.1
            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj2, c cVar2) {
                return emit((Unit) obj2, (c<? super Unit>) cVar2);
            }

            @Nullable
            public final Object emit(@NotNull Unit unit, @NotNull c<? super Unit> cVar2) {
                Object readDataAndUpdateCache;
                if (!(((DataStoreImpl) dataStoreImpl).inMemoryCache.getCurrentState() instanceof Final)) {
                    readDataAndUpdateCache = dataStoreImpl.readDataAndUpdateCache(true, cVar2);
                    return readDataAndUpdateCache == kotlin.coroutines.intrinsics.a.f() ? readDataAndUpdateCache : Unit.f60915a;
                }
                return Unit.f60915a;
            }
        };
        this.label = 2;
        if (o10.collect(cVar, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
