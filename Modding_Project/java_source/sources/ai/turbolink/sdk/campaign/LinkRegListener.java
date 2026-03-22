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
/* compiled from: LinkRegListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkRegListener {
    @NotNull
    private Context context;

    public LinkRegListener(@NotNull Context context) {
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
        CampaignBuilder.RegListenerCallback regListenerCallback = companion.getRegListenerCallback();
        if (companion.getLoginActivity() != null && regListenerCallback == null) {
            try {
                Context context = this.context;
                KClass<? extends Object> regActivity = companion.getRegActivity();
                if (regActivity != null) {
                    cls = zs.a.b(regActivity);
                } else {
                    cls = null;
                }
                Intent intent = new Intent(context, cls);
                Context context2 = this.context;
                boolean z10 = context2 instanceof CampaignWebviewActivity;
                context2.startActivity(intent);
            } catch (Exception e10) {
                TurboLinkLogger.w("An exception occurred when invoking the register activity reference." + e10.getMessage());
            }
        }
        if (regListenerCallback != null) {
            regListenerCallback.onSuccess(this.context);
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
