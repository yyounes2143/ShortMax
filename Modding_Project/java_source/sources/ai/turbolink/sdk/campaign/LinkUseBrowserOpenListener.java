package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkUseBrowserOpenListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkUseBrowserOpenListener {
    @NotNull
    private Context context;

    public LinkUseBrowserOpenListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @JavascriptInterface
    public final void postMessage(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (TextUtils.isEmpty(message)) {
            return;
        }
        try {
            this.context.startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(message)));
        } catch (ActivityNotFoundException e10) {
            TurboLinkLogger.w("The url can`t be opened using browser. error msg:" + e10.getMessage());
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
