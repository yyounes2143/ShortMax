package ai.turbolink.sdk.campaign;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LinkRedirectListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkRedirectListener {
    @NotNull
    private Context context;

    /* compiled from: LinkRedirectListener.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum RedirectType {
        USE_REWARD(1),
        FREEDOM_COMPONENT(2),
        TARGET_CAMPAIGN_URL(3);
        

        /* renamed from: v  reason: collision with root package name */
        private final int f654v;

        RedirectType(int i10) {
            this.f654v = i10;
        }

        public final int getV() {
            return this.f654v;
        }
    }

    public LinkRedirectListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0163  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void postMessage(@org.jetbrains.annotations.NotNull java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.campaign.LinkRedirectListener.postMessage(java.lang.String):void");
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}
