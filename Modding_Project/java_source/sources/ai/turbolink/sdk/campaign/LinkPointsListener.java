package ai.turbolink.sdk.campaign;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkPointsListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkPointsListener {
    @NotNull
    private Context context;

    public LinkPointsListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void postMessage(@org.jetbrains.annotations.NotNull java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.campaign.LinkPointsListener.postMessage(java.lang.String):void");
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
