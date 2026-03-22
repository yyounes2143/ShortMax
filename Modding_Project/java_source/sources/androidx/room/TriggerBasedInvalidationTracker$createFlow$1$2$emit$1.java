package androidx.room;

import androidx.room.TriggerBasedInvalidationTracker$createFlow$1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2", f = "InvalidationTracker.kt", l = {246, 255}, m = "emit")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2<? super T> anonymousClass2, rs.c<? super TriggerBasedInvalidationTracker$createFlow$1$2$emit$1> cVar) {
        super(cVar);
        this.this$0 = anonymousClass2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((int[]) null, (rs.c<? super Unit>) this);
    }
}
