package androidx.room.coroutines;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.Pool", f = "ConnectionPoolImpl.kt", l = {VideoRef.VALUE_VIDEO_REF_CONST_DEPTH}, m = "acquire")
/* loaded from: classes2.dex */
public final class Pool$acquire$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Pool this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquire$1(Pool pool, rs.c<? super Pool$acquire$1> cVar) {
        super(cVar);
        this.this$0 = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.acquire(this);
    }
}
