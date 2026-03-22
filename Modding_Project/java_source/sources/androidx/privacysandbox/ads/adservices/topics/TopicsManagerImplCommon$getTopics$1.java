package androidx.privacysandbox.ads.adservices.topics;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", l = {40}, m = "getTopics$suspendImpl")
/* loaded from: classes2.dex */
public final class TopicsManagerImplCommon$getTopics$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TopicsManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManagerImplCommon$getTopics$1(TopicsManagerImplCommon topicsManagerImplCommon, rs.c<? super TopicsManagerImplCommon$getTopics$1> cVar) {
        super(cVar);
        this.this$0 = topicsManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TopicsManagerImplCommon.getTopics$suspendImpl(this.this$0, null, this);
    }
}
