package ai.turbolink.sdk.deeplink;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: ShareProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShareProperties extends JSONObject {
    @NotNull
    public final ShareProperties setDesc(@NotNull String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        put(CampaignEx.JSON_KEY_DESC, desc);
        return this;
    }

    @NotNull
    public final ShareProperties setImage(@NotNull String image) {
        Intrinsics.checkNotNullParameter(image, "image");
        put("image", image);
        return this;
    }

    @NotNull
    public final ShareProperties setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        put("title", title);
        return this;
    }
}
