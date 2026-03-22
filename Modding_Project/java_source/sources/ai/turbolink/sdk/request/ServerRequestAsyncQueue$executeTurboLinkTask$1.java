package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.network.NetworkInterface;
import ai.turbolink.sdk.utils.TurboLinkCode;
import android.os.Handler;
import android.os.Looper;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ServerRequestAsyncQueue.kt */
@Metadata
@d(c = "ai.turbolink.sdk.request.ServerRequestAsyncQueue$executeTurboLinkTask$1", f = "ServerRequestAsyncQueue.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ServerRequestAsyncQueue$executeTurboLinkTask$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ ServerRequest $req;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ServerRequestAsyncQueue this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerRequestAsyncQueue$executeTurboLinkTask$1(ServerRequest serverRequest, ServerRequestAsyncQueue serverRequestAsyncQueue, c<? super ServerRequestAsyncQueue$executeTurboLinkTask$1> cVar) {
        super(2, cVar);
        this.$req = serverRequest;
        this.this$0 = serverRequestAsyncQueue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ServerRequestAsyncQueue$executeTurboLinkTask$1 serverRequestAsyncQueue$executeTurboLinkTask$1 = new ServerRequestAsyncQueue$executeTurboLinkTask$1(this.$req, this.this$0, cVar);
        serverRequestAsyncQueue$executeTurboLinkTask$1.L$0 = obj;
        return serverRequestAsyncQueue$executeTurboLinkTask$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ServerRequestAsyncQueue$executeTurboLinkTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ServerResponse serverResponse;
        NetworkInterface networkInterface;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            final g0 g0Var = (g0) this.L$0;
            TurboLink companion = TurboLink.Companion.getInstance();
            if (companion != null && (networkInterface = companion.getNetworkInterface()) != null) {
                serverResponse = networkInterface.doRestfulPost(this.$req.getLongUrl(), this.$req.getRequestData());
            } else {
                serverResponse = null;
            }
            if (serverResponse == null) {
                this.$req.handleFailure(TurboLinkCode.ERROR_INVALID_REQUEST.getCode(), "Response is null.");
                return Unit.f60915a;
            }
            int responseStatus = serverResponse.getResponseStatus();
            if (responseStatus == 200) {
                this.this$0.onExecuteSuccess(this.$req, serverResponse);
            } else {
                this.this$0.onExecuteFailed(this.$req, serverResponse, responseStatus);
            }
            this.this$0.set_currentRequestNetworkCount(0);
            Handler handler = new Handler(Looper.getMainLooper());
            final ServerRequestAsyncQueue serverRequestAsyncQueue = this.this$0;
            handler.post(new Runnable() { // from class: ai.turbolink.sdk.request.a
                @Override // java.lang.Runnable
                public final void run() {
                    g0 g0Var2 = g0.this;
                    serverRequestAsyncQueue.processNextQueueTask();
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
