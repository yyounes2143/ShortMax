package androidx.privacysandbox.ads.adservices.java.topics;

import androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: TopicsManagerFutures.kt */
@Metadata
@d(c = "androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1", f = "TopicsManagerFutures.kt", l = {55}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1 extends SuspendLambda implements Function2<g0, c<? super GetTopicsResponse>, Object> {
    final /* synthetic */ GetTopicsRequest $request;
    int label;
    final /* synthetic */ TopicsManagerFutures.CommonApiJavaImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(TopicsManagerFutures.CommonApiJavaImpl commonApiJavaImpl, GetTopicsRequest getTopicsRequest, c<? super TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1> cVar) {
        super(2, cVar);
        this.this$0 = commonApiJavaImpl;
        this.$request = getTopicsRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(this.this$0, this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super GetTopicsResponse> cVar) {
        return ((TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TopicsManager topicsManager;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            topicsManager = this.this$0.mTopicsManager;
            GetTopicsRequest getTopicsRequest = this.$request;
            this.label = 1;
            obj = topicsManager.getTopics(getTopicsRequest, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
