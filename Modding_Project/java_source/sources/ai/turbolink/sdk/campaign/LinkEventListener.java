package ai.turbolink.sdk.campaign;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkEventListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkEventListener {
    @NotNull
    private Context context;

    public LinkEventListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void postMessage(@org.jetbrains.annotations.NotNull java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.campaign.LinkEventListener.postMessage(java.lang.String):void");
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
