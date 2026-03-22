package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {347}, m = "stopTrackingTable")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$stopTrackingTable$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$stopTrackingTable$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super TriggerBasedInvalidationTracker$stopTrackingTable$1> cVar) {
        super(cVar);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object stopTrackingTable;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        stopTrackingTable = this.this$0.stopTrackingTable(null, 0, this);
        return stopTrackingTable;
    }
}
