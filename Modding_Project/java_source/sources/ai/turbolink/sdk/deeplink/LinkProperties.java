package ai.turbolink.sdk.deeplink;

import ai.turbolink.sdk.deeplink.LinkProperties;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestPath;
import ai.turbolink.sdk.request.ServerRequestSync;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: LinkProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkProperties extends JSONObject {
    @NotNull
    private final String url = AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V3() + ServerRequestPath.POST_CREATE_DEEPLINK.getPath();
    @NotNull
    private final JSONObject redirectionsObj = new JSONObject();

    /* compiled from: LinkProperties.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface LinkPropertiesCallback {
        void onFailure(int i10, @NotNull String str);

        void onSuccess(@NotNull LinkResponse linkResponse);
    }

    public final void build(@NotNull final LinkPropertiesCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        put("project_id", AppPrefHelper.Companion.getPROJECT_ID());
        ServerRequestSync.INSTANCE.doFreedomReqDeepLink(this.url, this, new LinkPropertiesCallback() { // from class: ai.turbolink.sdk.deeplink.LinkProperties$build$1
            @Override // ai.turbolink.sdk.deeplink.LinkProperties.LinkPropertiesCallback
            public void onFailure(int i10, @NotNull String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                LinkProperties.LinkPropertiesCallback.this.onFailure(i10, msg);
            }

            @Override // ai.turbolink.sdk.deeplink.LinkProperties.LinkPropertiesCallback
            public void onSuccess(@NotNull LinkResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                LinkProperties.LinkPropertiesCallback.this.onSuccess(response);
            }
        });
    }

    @NotNull
    public final LinkProperties setAndroidRedirection(boolean z10, @NotNull String customUrl) {
        Intrinsics.checkNotNullParameter(customUrl, "customUrl");
        JSONObject jSONObject = new JSONObject();
        int i10 = 1;
        jSONObject.put("use_custom", 1);
        jSONObject.put("use_land", z10 ? 1 : 0);
        if (customUrl.length() != 0) {
            i10 = 2;
        }
        jSONObject.put("redirect_type", i10);
        jSONObject.put("custom_url", customUrl);
        this.redirectionsObj.put("android", jSONObject);
        put("redirections", this.redirectionsObj);
        return this;
    }

    @NotNull
    public final LinkProperties setDefaultRedirection(@NotNull String customUrl) {
        Intrinsics.checkNotNullParameter(customUrl, "customUrl");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("use_custom", 1);
        jSONObject.put("custom_url", customUrl);
        this.redirectionsObj.put(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, jSONObject);
        put("redirections", this.redirectionsObj);
        return this;
    }

    @NotNull
    public final LinkProperties setIOSRedirection(boolean z10, @NotNull String customUrl) {
        Intrinsics.checkNotNullParameter(customUrl, "customUrl");
        JSONObject jSONObject = new JSONObject();
        int i10 = 1;
        jSONObject.put("use_custom", 1);
        jSONObject.put("use_land", z10 ? 1 : 0);
        if (customUrl.length() != 0) {
            i10 = 2;
        }
        jSONObject.put("redirect_type", i10);
        jSONObject.put("custom_url", customUrl);
        this.redirectionsObj.put("ios", jSONObject);
        put("redirections", this.redirectionsObj);
        return this;
    }

    @NotNull
    public final LinkProperties setLinkData(@NotNull LinkData linkData) {
        Intrinsics.checkNotNullParameter(linkData, "linkData");
        put("link_data", linkData);
        return this;
    }

    @NotNull
    public final LinkProperties setPreDomain(@NotNull String preDomain) {
        Intrinsics.checkNotNullParameter(preDomain, "preDomain");
        put("pre_domain", preDomain);
        return this;
    }

    @NotNull
    public final LinkProperties setShare(@NotNull ShareProperties share) {
        Intrinsics.checkNotNullParameter(share, "share");
        put("share", share);
        return this;
    }

    @NotNull
    public final LinkProperties setTags(@NotNull String[] tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        JSONArray jSONArray = new JSONArray();
        for (String str : tags) {
            jSONArray.put(str);
        }
        put("tag_name", jSONArray);
        return this;
    }

    @NotNull
    public final LinkProperties setTemplateId(@NotNull String templateId) {
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        put("template_id", templateId);
        return this;
    }

    @NotNull
    public final LinkProperties setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        put("title", title);
        return this;
    }

    @NotNull
    public final LinkProperties setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        put(TTVideoEngineInterface.PLAY_API_KEY_USERID, userId);
        return this;
    }

    @NotNull
    public final LinkProperties setWebRedirection(boolean z10, @NotNull String pcCustomUrl, @NotNull String h5CustomUrl) {
        int i10;
        Intrinsics.checkNotNullParameter(pcCustomUrl, "pcCustomUrl");
        Intrinsics.checkNotNullParameter(h5CustomUrl, "h5CustomUrl");
        JSONObject jSONObject = new JSONObject();
        int i11 = 1;
        jSONObject.put("use_custom", 1);
        jSONObject.put("web_first", z10 ? 1 : 0);
        if (pcCustomUrl.length() == 0) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        jSONObject.put("pc_type", i10);
        jSONObject.put("pc_custom_url", pcCustomUrl);
        if (h5CustomUrl.length() != 0) {
            i11 = 2;
        }
        jSONObject.put("h5_type", i11);
        jSONObject.put("h5_custom_url", h5CustomUrl);
        this.redirectionsObj.put("web", jSONObject);
        put("redirections", this.redirectionsObj);
        return this;
    }
}
