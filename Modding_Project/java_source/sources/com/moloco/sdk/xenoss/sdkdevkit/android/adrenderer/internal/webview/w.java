package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import androidx.compose.runtime.internal.StabilityInferred;
import com.vungle.ads.internal.Constants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final x f36536a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final u f36537b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final v f36538c;

    public w(@NotNull x localAssetLoader, @NotNull u contentEncoder, @NotNull v cssMarginHandler) {
        Intrinsics.checkNotNullParameter(localAssetLoader, "localAssetLoader");
        Intrinsics.checkNotNullParameter(contentEncoder, "contentEncoder");
        Intrinsics.checkNotNullParameter(cssMarginHandler, "cssMarginHandler");
        this.f36536a = localAssetLoader;
        this.f36537b = contentEncoder;
        this.f36538c = cssMarginHandler;
    }

    @NotNull
    public String a(@NotNull String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        String a10 = this.f36536a.a(Constants.AD_MRAID_JS_FILE_NAME);
        String a11 = this.f36536a.a("mraid-bridge.js");
        String a12 = this.f36538c.a(html);
        String a13 = this.f36537b.a(StringsKt.P(a12, "<script src=\"mraid.js\"></script>", "<script>" + a10 + "</script>", false, 4, null));
        return StringsKt.n("\n            <script>" + a11 + "</script>\n            <iframe id=\"adFrame\"\n                style=\"width:100vw; height:100vh; border:none;\"\n                src=\"data:text/html;base64," + a13 + "\"\n                sandbox=\"allow-scripts allow-same-origin\"\n            >\n            </iframe>\n        ");
    }

    public /* synthetic */ w(x xVar, u uVar, v vVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(xVar, uVar, (i10 & 4) != 0 ? new v() : vVar);
    }
}
