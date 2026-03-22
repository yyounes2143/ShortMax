package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {372}, m = "refreshInvalidation$room_runtime")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$refreshInvalidation$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$refreshInvalidation$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super TriggerBasedInvalidationTracker$refreshInvalidation$1> cVar) {
        super(cVar);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.refreshInvalidation$room_runtime(null, null, null, this);
    }
}
