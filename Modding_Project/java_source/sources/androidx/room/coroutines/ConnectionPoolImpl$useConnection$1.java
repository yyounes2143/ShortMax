package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.ConnectionPoolImpl", f = "ConnectionPoolImpl.kt", l = {120, 124, 143, 148}, m = "useConnection")
/* loaded from: classes2.dex */
public final class ConnectionPoolImpl$useConnection$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConnectionPoolImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPoolImpl$useConnection$1(ConnectionPoolImpl connectionPoolImpl, rs.c<? super ConnectionPoolImpl$useConnection$1> cVar) {
        super(cVar);
        this.this$0 = connectionPoolImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.useConnection(false, null, this);
    }
}
