package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.network.NetworkInterface;
import ai.turbolink.sdk.utils.TurboLinkCode;
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
/* compiled from: ServerRequestSync.kt */
@Metadata
@d(c = "ai.turbolink.sdk.request.ServerRequestSync$doReq$1", f = "ServerRequestSync.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ServerRequestSync$doReq$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ ServerRequestURL $req;
    final /* synthetic */ TurboLink $turboLink;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerRequestSync$doReq$1(TurboLink turboLink, ServerRequestURL serverRequestURL, c<? super ServerRequestSync$doReq$1> cVar) {
        super(2, cVar);
        this.$turboLink = turboLink;
        this.$req = serverRequestURL;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ServerRequestSync$doReq$1(this.$turboLink, this.$req, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ServerRequestSync$doReq$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ServerResponse serverResponse;
        NetworkInterface networkInterface;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            TurboLink turboLink = this.$turboLink;
            if (turboLink != null && (networkInterface = turboLink.getNetworkInterface()) != null) {
                serverResponse = networkInterface.doRestfulPost(this.$req.getLongUrl(), this.$req.getRequestData());
            } else {
                serverResponse = null;
            }
            if (serverResponse == null) {
                this.$req.handleFailure(TurboLinkCode.ERROR_INVALID_REQUEST.getCode(), "Response is null.");
                return Unit.f60915a;
            }
            if (serverResponse.getResponseStatus() == 200) {
                if (serverResponse.getResponseBody() == null) {
                    this.$req.handleFailure(TurboLinkCode.ERROR_GATEWAY.getCode(), "Response body is null.");
                } else if (serverResponse.getEventResponse().getCode() != TurboLinkCode.SUCCESS.getCode()) {
                    this.$req.handleFailure(serverResponse.getEventResponse().getCode(), serverResponse.getEventResponse().getMsg());
                } else {
                    this.$req.handleSuccess(serverResponse);
                }
            } else {
                ServerRequestURL serverRequestURL = this.$req;
                int code = TurboLinkCode.ERROR_GATEWAY.getCode();
                serverRequestURL.handleFailure(code, "Network request error " + serverResponse.getMessage());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
