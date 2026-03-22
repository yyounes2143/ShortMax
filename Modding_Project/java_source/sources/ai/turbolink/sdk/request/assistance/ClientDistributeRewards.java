package ai.turbolink.sdk.request.assistance;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.campaign.properties.ClientRewardsProperties;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestPath;
import ai.turbolink.sdk.request.ServerRequestSync;
import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: ClientDistributeRewards.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClientDistributeRewards {
    @NotNull
    public static final ClientDistributeRewards INSTANCE = new ClientDistributeRewards();
    @NotNull
    private static final String url = AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V2() + ServerRequestPath.POST_CLIENT_REWARDS.getPath();

    /* compiled from: ClientDistributeRewards.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface TurboLinkClientRewardsCallback {
        void onFailure(int i10, @NotNull String str);

        void onSuccess(@NotNull ClientRewardsProperties clientRewardsProperties);
    }

    private ClientDistributeRewards() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void check() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("project_id", AppPrefHelper.Companion.getPROJECT_ID());
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, TurboLink.Companion.getUserId());
        ServerRequestSync.INSTANCE.doFreedomReqRewards(url, jSONObject, new TurboLinkClientRewardsCallback() { // from class: ai.turbolink.sdk.request.assistance.ClientDistributeRewards$check$1
            @Override // ai.turbolink.sdk.request.assistance.ClientDistributeRewards.TurboLinkClientRewardsCallback
            public void onFailure(int i10, @NotNull String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
            }

            @Override // ai.turbolink.sdk.request.assistance.ClientDistributeRewards.TurboLinkClientRewardsCallback
            public void onSuccess(@NotNull ClientRewardsProperties response) {
                CampaignBuilder.ClientRewardsListener clientRewardsListener;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.getRewards().size() > 0 && (clientRewardsListener = TurboLink.Companion.getClientRewardsListener()) != null) {
                    clientRewardsListener.onSuccess(null, response);
                }
            }
        });
    }

    public final void doDistribute() {
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getClientRewardsListener() != null && !TextUtils.isEmpty(companion.getUserId())) {
            g.d(i.a(q0.b()), null, null, new ClientDistributeRewards$doDistribute$1(null), 3, null);
        }
    }
}
