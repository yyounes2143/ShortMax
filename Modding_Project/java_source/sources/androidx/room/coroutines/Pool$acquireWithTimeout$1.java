package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.Pool", f = "ConnectionPoolImpl.kt", l = {214}, m = "acquireWithTimeout-KLykuaI")
/* loaded from: classes2.dex */
public final class Pool$acquireWithTimeout$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Pool this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquireWithTimeout$1(Pool pool, rs.c<? super Pool$acquireWithTimeout$1> cVar) {
        super(cVar);
        this.this$0 = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m4328acquireWithTimeoutKLykuaI(0L, null, this);
    }
}
