package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.utils.TurboLinkUtil;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: EventRequestData.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventRequestData extends JSONObject {
    private String event;
    private String msgSignature;
    private String project;
    private String requestID;
    private long timestamp;
    @NotNull
    private JSONObject userData = new JSONObject();
    @NotNull
    private JSONObject extData = new JSONObject();
    @NotNull
    private JSONObject eventData = new JSONObject();
    @NotNull
    private JSONArray customData = new JSONArray();

    public final void putCustomData(@NotNull JSONArray customDataArray) {
        Intrinsics.checkNotNullParameter(customDataArray, "customDataArray");
        this.customData = customDataArray;
        put("custom_data", customDataArray);
    }

    public final void putEvent(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        put(NotificationCompat.CATEGORY_EVENT, event);
    }

    public final void putEventData(@NotNull JSONObject eventDataObj) {
        Intrinsics.checkNotNullParameter(eventDataObj, "eventDataObj");
        this.eventData = eventDataObj;
        put("event_data", eventDataObj);
    }

    public final void putExtData(@NotNull JSONObject extDataObj) {
        Intrinsics.checkNotNullParameter(extDataObj, "extDataObj");
        this.extData = extDataObj;
        put(CampaignEx.JSON_KEY_EXT_DATA, extDataObj);
    }

    public final void putMsgSignature(@NotNull String appSecret) {
        Intrinsics.checkNotNullParameter(appSecret, "appSecret");
        TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = this.project;
        String str2 = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("project");
            str = null;
        }
        String str3 = this.requestID;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestID");
            str3 = null;
        }
        String format = String.format("%s_%s_%s_%s", Arrays.copyOf(new Object[]{str, str3, Long.valueOf(this.timestamp), appSecret}, 4));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        String sha1 = turboLinkUtil.getSHA1(format);
        this.msgSignature = sha1;
        if (sha1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("msgSignature");
        } else {
            str2 = sha1;
        }
        put("msg_signature", str2);
    }

    public final void putProjectID(@NotNull String projectId) {
        Intrinsics.checkNotNullParameter(projectId, "projectId");
        this.project = projectId;
        put("project", projectId);
    }

    public final void putRequestID() {
        String uuid = TurboLinkUtil.INSTANCE.getUUID();
        this.requestID = uuid;
        if (uuid == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestID");
            uuid = null;
        }
        put("request_id", uuid);
    }

    public final void putTimestamp() {
        long currentTimestamp = TurboLinkUtil.INSTANCE.getCurrentTimestamp();
        this.timestamp = currentTimestamp;
        put("timestamp", currentTimestamp);
    }

    public final void putUserData(@NotNull JSONObject userDataObj) {
        Intrinsics.checkNotNullParameter(userDataObj, "userDataObj");
        this.userData = userDataObj;
        put("user_data", userDataObj);
    }
}
