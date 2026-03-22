package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleProcessCoordinator.kt */
@Metadata
@d(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {66, 41}, m = "lock")
/* loaded from: classes2.dex */
public final class SingleProcessCoordinator$lock$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SingleProcessCoordinator this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessCoordinator$lock$1(SingleProcessCoordinator singleProcessCoordinator, c<? super SingleProcessCoordinator$lock$1> cVar) {
        super(cVar);
        this.this$0 = singleProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.lock(null, this);
    }
}
