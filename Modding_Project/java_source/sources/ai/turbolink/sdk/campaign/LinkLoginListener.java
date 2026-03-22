package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import android.content.Intent;
import android.webkit.JavascriptInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkLoginListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkLoginListener {
    @NotNull
    private Context context;

    public LinkLoginListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @JavascriptInterface
    public final void postMessage(@NotNull String message) {
        Class cls;
        Intrinsics.checkNotNullParameter(message, "message");
        TurboLink.Companion companion = TurboLink.Companion;
        CampaignBuilder.LoginListenerCallback loginListenerCallback = companion.getLoginListenerCallback();
        if (companion.getLoginActivity() != null && loginListenerCallback == null) {
            try {
                Context context = this.context;
                KClass<? extends Object> loginActivity = companion.getLoginActivity();
                if (loginActivity != null) {
                    cls = zs.a.b(loginActivity);
                } else {
                    cls = null;
                }
                Intent intent = new Intent(context, cls);
                Context context2 = this.context;
                if (context2 instanceof CampaignWebviewActivity) {
                    Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type ai.turbolink.sdk.campaign.CampaignWebviewActivity");
                    ((CampaignWebviewActivity) context2).setIsTriggerLoginListener();
                }
                this.context.startActivity(intent);
            } catch (Exception e10) {
                TurboLinkLogger.w("An exception occurred when invoking the login activity reference." + e10.getMessage());
            }
        }
        if (loginListenerCallback != null) {
            loginListenerCallback.onSuccess(this.context);
            Context context3 = this.context;
            if (context3 instanceof CampaignWebviewActivity) {
                Intrinsics.checkNotNull(context3, "null cannot be cast to non-null type ai.turbolink.sdk.campaign.CampaignWebviewActivity");
                ((CampaignWebviewActivity) context3).setIsTriggerLoginListener();
            }
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
