package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.CampaignInfoProperties;
import ai.turbolink.sdk.network.NetworkInterface;
import ai.turbolink.sdk.request.campaign.CampaignInfo;
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
import org.json.JSONObject;
import rs.c;
/* compiled from: ServerRequestSync.kt */
@Metadata
@d(c = "ai.turbolink.sdk.request.ServerRequestSync$doFreedomReq$1", f = "ServerRequestSync.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ServerRequestSync$doFreedomReq$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ CampaignInfo.TurboLinkCampaignCallback $callback;
    final /* synthetic */ JSONObject $reqBody;
    final /* synthetic */ TurboLink $turboLink;
    final /* synthetic */ String $url;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerRequestSync$doFreedomReq$1(TurboLink turboLink, String str, JSONObject jSONObject, CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback, c<? super ServerRequestSync$doFreedomReq$1> cVar) {
        super(2, cVar);
        this.$turboLink = turboLink;
        this.$url = str;
        this.$reqBody = jSONObject;
        this.$callback = turboLinkCampaignCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ServerRequestSync$doFreedomReq$1(this.$turboLink, this.$url, this.$reqBody, this.$callback, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ServerRequestSync$doFreedomReq$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback = this.$callback;
                if (turboLinkCampaignCallback != null) {
                    turboLinkCampaignCallback.onFailure(TurboLinkCode.ERROR_INVALID_REQUEST.getCode(), "Response is null.");
                }
                return Unit.f60915a;
            }
            if (serverResponse.getResponseStatus() == 200) {
                if (serverResponse.getResponseBody() == null) {
                    CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback2 = this.$callback;
                    if (turboLinkCampaignCallback2 != null) {
                        turboLinkCampaignCallback2.onFailure(TurboLinkCode.ERROR_GATEWAY.getCode(), "Response body is null.");
                    }
                } else if (serverResponse.getEventResponse().getCode() != TurboLinkCode.SUCCESS.getCode()) {
                    CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback3 = this.$callback;
                    if (turboLinkCampaignCallback3 != null) {
                        turboLinkCampaignCallback3.onFailure(serverResponse.getEventResponse().getCode(), serverResponse.getEventResponse().getMsg());
                    }
                } else {
                    CampaignInfoProperties campaignInfoProperties = new CampaignInfoProperties();
                    JSONObject responseBody = serverResponse.getResponseBody();
                    if (responseBody == null) {
                        responseBody = new JSONObject();
                    }
                    campaignInfoProperties.responseDataToProperties(responseBody);
                    CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback4 = this.$callback;
                    if (turboLinkCampaignCallback4 != null) {
                        turboLinkCampaignCallback4.onSuccess(campaignInfoProperties);
                    }
                }
            } else {
                CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback5 = this.$callback;
                if (turboLinkCampaignCallback5 != null) {
                    int code = TurboLinkCode.ERROR_GATEWAY.getCode();
                    turboLinkCampaignCallback5.onFailure(code, "Network request error " + serverResponse.getMessage());
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
