package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {557}, m = "endTransaction")
/* loaded from: classes2.dex */
public final class PooledConnectionImpl$endTransaction$1 extends ContinuationImpl {
    Object L$0;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PooledConnectionImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PooledConnectionImpl$endTransaction$1(PooledConnectionImpl pooledConnectionImpl, rs.c<? super PooledConnectionImpl$endTransaction$1> cVar) {
        super(cVar);
        this.this$0 = pooledConnectionImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object endTransaction;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        endTransaction = this.this$0.endTransaction(false, this);
        return endTransaction;
    }
}
