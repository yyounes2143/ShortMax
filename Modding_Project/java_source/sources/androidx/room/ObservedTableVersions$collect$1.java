package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.ObservedTableVersions", f = "InvalidationTracker.kt", l = {652}, m = "collect")
/* loaded from: classes2.dex */
public final class ObservedTableVersions$collect$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ObservedTableVersions this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservedTableVersions$collect$1(ObservedTableVersions observedTableVersions, rs.c<? super ObservedTableVersions$collect$1> cVar) {
        super(cVar);
        this.this$0 = observedTableVersions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
