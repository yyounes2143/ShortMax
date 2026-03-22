package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.ClientRewardsProperties;
import ai.turbolink.sdk.network.NetworkInterface;
import ai.turbolink.sdk.request.assistance.ClientDistributeRewards;
import ai.turbolink.sdk.utils.TurboLinkCode;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import rs.c;
/* compiled from: ServerRequestSync.kt */
@Metadata
@d(c = "ai.turbolink.sdk.request.ServerRequestSync$doFreedomReqRewards$1", f = "ServerRequestSync.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ServerRequestSync$doFreedomReqRewards$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ ClientDistributeRewards.TurboLinkClientRewardsCallback $callback;
    final /* synthetic */ JSONObject $reqBody;
    final /* synthetic */ TurboLink $turboLink;
    final /* synthetic */ String $url;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerRequestSync$doFreedomReqRewards$1(TurboLink turboLink, String str, JSONObject jSONObject, ClientDistributeRewards.TurboLinkClientRewardsCallback turboLinkClientRewardsCallback, c<? super ServerRequestSync$doFreedomReqRewards$1> cVar) {
        super(2, cVar);
        this.$turboLink = turboLink;
        this.$url = str;
        this.$reqBody = jSONObject;
        this.$callback = turboLinkClientRewardsCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ServerRequestSync$doFreedomReqRewards$1(this.$turboLink, this.$url, this.$reqBody, this.$callback, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ServerRequestSync$doFreedomReqRewards$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                serverResponse = networkInterface.doRestfulPost(this.$url, this.$reqBody);
            } else {
                serverResponse = null;
            }
            if (serverResponse == null) {
                ClientDistributeRewards.TurboLinkClientRewardsCallback turboLinkClientRewardsCallback = this.$callback;
                if (turboLinkClientRewardsCallback != null) {
                    turboLinkClientRewardsCallback.onFailure(TurboLinkCode.ERROR_INVALID_REQUEST.getCode(), "Response is null.");
                }
                return Unit.f60915a;
            }
            if (serverResponse.getResponseStatus() == 200) {
                if (serverResponse.getResponseBody() == null) {
                    ClientDistributeRewards.TurboLinkClientRewardsCallback turboLinkClientRewardsCallback2 = this.$callback;
                    if (turboLinkClientRewardsCallback2 != null) {
                        turboLinkClientRewardsCallback2.onFailure(TurboLinkCode.ERROR_GATEWAY.getCode(), "Response body is null.");
                    }
                } else if (serverResponse.getEventResponse().getCode() != TurboLinkCode.SUCCESS.getCode()) {
                    ClientDistributeRewards.TurboLinkClientRewardsCallback turboLinkClientRewardsCallback3 = this.$callback;
                    if (turboLinkClientRewardsCallback3 != null) {
                        turboLinkClientRewardsCallback3.onFailure(serverResponse.getEventResponse().getCode(), serverResponse.getEventResponse().getMsg());
                    }
                } else {
                    JSONObject responseBody = serverResponse.getResponseBody();
                    if (responseBody == null) {
                        responseBody = new JSONObject();
                    }
                    ClientRewardsProperties clientRewardsProperties = new ClientRewardsProperties();
                    try {
                        if (!responseBody.isNull("data")) {
                            JSONObject jSONObject = responseBody.getJSONObject("data");
                            Intrinsics.checkNotNullExpressionValue(jSONObject, "responseDataObj.getJSONObject(\"data\")");
                            clientRewardsProperties.responseDataToProperties(jSONObject);
                        }
                    } catch (JSONException e10) {
                        TurboLinkLogger.w("The parser request returns occurred exception." + e10.getMessage());
                    } catch (Exception e11) {
                        TurboLinkLogger.w("parser request returns occurred exception." + e11.getMessage());
                    }
                    this.$callback.onSuccess(clientRewardsProperties);
                }
            } else {
                ClientDistributeRewards.TurboLinkClientRewardsCallback turboLinkClientRewardsCallback4 = this.$callback;
                if (turboLinkClientRewardsCallback4 != null) {
                    int code = TurboLinkCode.ERROR_GATEWAY.getCode();
                    turboLinkClientRewardsCallback4.onFailure(code, "Network request error " + serverResponse.getMessage());
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
