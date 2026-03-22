package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer;

import android.webkit.JavascriptInterface;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.BuildConfig;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0530a f34567b = new C0530a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final int f34568c = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.f f34569a;

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0530a {
        public /* synthetic */ C0530a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0530a() {
        }
    }

    public a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.f eventHandler) {
        Intrinsics.checkNotNullParameter(eventHandler, "eventHandler");
        this.f34569a = eventHandler;
    }

    @JavascriptInterface
    public final void log(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "TemplateJavascript", message, null, false, 12, null);
    }

    @JavascriptInterface
    public final void onEvent(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f34569a.c(event);
    }

    @JavascriptInterface
    @NotNull
    public final String sdkVersion() {
        return BuildConfig.SDK_VERSION_NAME;
    }
}
