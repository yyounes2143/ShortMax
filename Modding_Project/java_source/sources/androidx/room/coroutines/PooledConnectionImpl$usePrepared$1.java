package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {568}, m = "usePrepared")
/* loaded from: classes2.dex */
public final class PooledConnectionImpl$usePrepared$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PooledConnectionImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PooledConnectionImpl$usePrepared$1(PooledConnectionImpl pooledConnectionImpl, rs.c<? super PooledConnectionImpl$usePrepared$1> cVar) {
        super(cVar);
        this.this$0 = pooledConnectionImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.usePrepared(null, null, this);
    }
}
