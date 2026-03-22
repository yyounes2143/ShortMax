package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.device.DeviceInfo;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.event.EventRequestData;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import com.ss.ttm.player.MediaFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ServerRequestURL.kt */
@Metadata
/* loaded from: classes.dex */
public class ServerRequestURL extends ServerRequest {
    @NotNull
    private String event;
    private boolean isAsync_;
    @NotNull
    private final EventRequestData requestData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerRequestURL(@NotNull Context context, @NotNull String event) {
        super(context, ServerRequestPath.GET_EVENT);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        this.requestData = new EventRequestData();
    }

    @Override // ai.turbolink.sdk.request.ServerRequest
    @NotNull
    public EventRequestData getRequestData() {
        return this.requestData;
    }

    @Override // ai.turbolink.sdk.request.ServerRequest
    public void handleErrors(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // ai.turbolink.sdk.request.ServerRequest
    public void handleFailure(int i10, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    @Override // ai.turbolink.sdk.request.ServerRequest
    public void handleSuccess(@NotNull ServerResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public final boolean isAsync() {
        return this.isAsync_;
    }

    public final void setAsync() {
        this.isAsync_ = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ai.turbolink.sdk.request.ServerRequest
    public void setPost(@NotNull JSONObject post) {
        Intrinsics.checkNotNullParameter(post, "post");
        try {
            long currentTimeMillis = System.currentTimeMillis();
            EventRequestData eventRequestData = this.requestData;
            AppPrefHelper.Companion companion = AppPrefHelper.Companion;
            eventRequestData.putProjectID(companion.getPROJECT_ID());
            this.requestData.putRequestID();
            this.requestData.putTimestamp();
            this.requestData.putMsgSignature(companion.getKEY_APPSECRET());
            this.requestData.putEvent(this.event);
            JSONObject jSONObject = new JSONObject();
            DeviceInfo.Companion companion2 = DeviceInfo.Companion;
            DeviceInfo companion3 = companion2.getInstance();
            if (companion3 != null) {
                companion3.getRequestUserDataParams(jSONObject);
            }
            this.requestData.putUserData(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            if (post.has("event_data")) {
                jSONObject2 = post.getJSONObject("event_data");
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "post.getJSONObject(\"event_data\")");
            }
            jSONObject2.put(MediaFormat.KEY_LANGUAGE, TurboLink.Campaign.INSTANCE.getLang());
            this.requestData.putEventData(jSONObject2);
            if (post.has("custom_data")) {
                EventRequestData eventRequestData2 = this.requestData;
                JSONArray jSONArray = post.getJSONArray("custom_data");
                Intrinsics.checkNotNullExpressionValue(jSONArray, "post.getJSONArray(\"custom_data\")");
                eventRequestData2.putCustomData(jSONArray);
            }
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObject4 = new JSONObject();
            DeviceInfo companion4 = companion2.getInstance();
            if (companion4 != null) {
                companion4.getRequestExtDataParams(jSONObject4);
            }
            jSONObject3.put("android", jSONObject4);
            TurboLink.SessionObj.INSTANCE.setSessionInitParamTime(System.currentTimeMillis() - currentTimeMillis);
            JSONObject jSONObject5 = new JSONObject();
            DeviceInfo companion5 = companion2.getInstance();
            if (companion5 != null) {
                companion5.getSessionParams(jSONObject5);
            }
            jSONObject3.put("session", jSONObject5);
            this.requestData.putExtData(jSONObject3);
        } catch (JSONException e10) {
            TurboLinkLogger.w("Initialize request data exception " + e10.getMessage());
        }
        super.setPost(post);
    }
}
