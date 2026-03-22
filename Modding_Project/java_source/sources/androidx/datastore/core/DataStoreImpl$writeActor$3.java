package androidx.datastore.core;

import androidx.datastore.core.Message;
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
@d(c = "androidx.datastore.core.DataStoreImpl$writeActor$3", f = "DataStoreImpl.kt", l = {207}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DataStoreImpl$writeActor$3<T> extends SuspendLambda implements Function2<Message.Update<T>, c<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeActor$3(DataStoreImpl<T> dataStoreImpl, c<? super DataStoreImpl$writeActor$3> cVar) {
        super(2, cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DataStoreImpl$writeActor$3 dataStoreImpl$writeActor$3 = new DataStoreImpl$writeActor$3(this.this$0, cVar);
        dataStoreImpl$writeActor$3.L$0 = obj;
        return dataStoreImpl$writeActor$3;
    }

    @Nullable
    public final Object invoke(@NotNull Message.Update<T> update, @Nullable c<? super Unit> cVar) {
        return ((DataStoreImpl$writeActor$3) create(update, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object handleUpdate;
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
            DataStoreImpl<T> dataStoreImpl = this.this$0;
            this.label = 1;
            handleUpdate = dataStoreImpl.handleUpdate((Message.Update) this.L$0, this);
            if (handleUpdate == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((Message.Update) ((Message.Update) obj), cVar);
    }
}
