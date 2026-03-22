package ai.turbolink.sdk.deeplink;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LinkResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkResponse {
    @NotNull
    private String linkTemplate = "";
    @NotNull
    private String shortHash = "";
    @NotNull
    private String linkUrl = "";

    @NotNull
    public final String getLinkTemplate() {
        return this.linkTemplate;
    }

    @NotNull
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    @NotNull
    public final String getShortHash() {
        return this.shortHash;
    }

    public final void parserData(@NotNull JSONObject responseData) {
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        try {
            if (!responseData.isNull("data")) {
                JSONObject jSONObject = responseData.getJSONObject("data");
                if (jSONObject.has("link_template")) {
                    String string = jSONObject.getString("link_template");
                    Intrinsics.checkNotNullExpressionValue(string, "data.getString(\"link_template\")");
                    this.linkTemplate = string;
                }
                if (jSONObject.has("short_hash")) {
                    String string2 = jSONObject.getString("short_hash");
                    Intrinsics.checkNotNullExpressionValue(string2, "data.getString(\"short_hash\")");
                    this.shortHash = string2;
                }
                if (jSONObject.has("link_url")) {
                    String string3 = jSONObject.getString("link_url");
                    Intrinsics.checkNotNullExpressionValue(string3, "data.getString(\"link_url\")");
                    this.linkUrl = string3;
                }
            }
        } catch (JSONException e10) {
            TurboLinkLogger.w("The parser request returns occurred exception." + e10.getMessage());
        } catch (Exception e11) {
            TurboLinkLogger.w("parser request returns occurred exception." + e11.getMessage());
        }
    }
}
