package ai.turbolink.sdk.campaign;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkShareListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkShareListener {
    @NotNull
    private Context context;

    public LinkShareListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void postMessage(@org.jetbrains.annotations.NotNull java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.campaign.LinkShareListener.postMessage(java.lang.String):void");
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
