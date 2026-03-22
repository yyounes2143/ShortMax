package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.PassthroughConnection", f = "PassthroughConnectionPool.kt", l = {89, 91}, m = "usePrepared")
/* loaded from: classes2.dex */
public final class PassthroughConnection$usePrepared$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PassthroughConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughConnection$usePrepared$1(PassthroughConnection passthroughConnection, rs.c<? super PassthroughConnection$usePrepared$1> cVar) {
        super(cVar);
        this.this$0 = passthroughConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.usePrepared(null, null, this);
    }
}
