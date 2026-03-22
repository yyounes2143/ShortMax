package ai.turbolink.sdk.request;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServerDefines.kt */
@Metadata
/* loaded from: classes.dex */
public enum ServerRequestPath {
    GET_EVENT(NotificationCompat.CATEGORY_EVENT),
    GET_CAMPAIGN_INFO("campaign/campaign-info"),
    GET_CAMPAIGN_LAUNCH_TIME("event/campaign-launch-stat"),
    POST_SDK_VERIFY_INFO("event/verify"),
    POST_CREATE_DEEPLINK("deeplink/create"),
    POST_CLIENT_REWARDS("campaign/client-reward");
    
    @NotNull
    private String path;

    ServerRequestPath(String str) {
        this.path = str;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }
}
