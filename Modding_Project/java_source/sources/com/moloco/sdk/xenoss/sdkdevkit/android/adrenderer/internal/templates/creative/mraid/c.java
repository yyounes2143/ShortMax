package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid;

import android.content.Context;
import android.webkit.JavascriptInterface;
import androidx.compose.runtime.internal.StabilityInferred;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f34559c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f34560d = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34561a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a f34562b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public c(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a mraidCommunicationHub) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidCommunicationHub, "mraidCommunicationHub");
        this.f34561a = context;
        this.f34562b = mraidCommunicationHub;
    }

    @JavascriptInterface
    public final void close() {
        this.f34562b.a();
    }

    @JavascriptInterface
    public final void expand(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @JavascriptInterface
    public final void open(@NotNull String jsonParams) {
        Intrinsics.checkNotNullParameter(jsonParams, "jsonParams");
        String string = new JSONObject(jsonParams).getString("url");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a aVar = this.f34562b;
        Intrinsics.checkNotNull(string);
        aVar.a(string);
    }

    @JavascriptInterface
    public final void resize(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @JavascriptInterface
    public final void setOrientationProperties(@NotNull String jsonParams) {
        Intrinsics.checkNotNullParameter(jsonParams, "jsonParams");
        try {
            JSONObject jSONObject = new JSONObject(jsonParams);
            boolean optBoolean = jSONObject.optBoolean("allowOrientationChange", true);
            String optString = jSONObject.optString("forceOrientation", DevicePublicKeyStringDef.NONE);
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debug$default(molocoLogger, "MraidJsEventReceiver", "Orientation Set from JSON: " + optBoolean + ", " + optString, false, 4, null);
            p a10 = p.f34323a.a(optString);
            if (a10 != null) {
                this.f34562b.a(optBoolean, a10);
            }
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidJsEventReceiver", "Error parsing orientation properties JSON", e10, false, 8, null);
        }
    }
}
