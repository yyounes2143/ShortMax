package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.model.WebViewClientError;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidSendWebViewClientErrorDiagnostics.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidSendWebViewClientErrorDiagnostics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSendWebViewClientErrorDiagnostics.kt\ncom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1855#2,2:28\n*S KotlinDebug\n*F\n+ 1 AndroidSendWebViewClientErrorDiagnostics.kt\ncom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics\n*L\n11#1:28,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidSendWebViewClientErrorDiagnostics implements SendWebViewClientErrorDiagnostics {
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidSendWebViewClientErrorDiagnostics(@NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    @Override // com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics
    public void invoke(@NotNull List<WebViewClientError> errors) {
        Map map;
        Intrinsics.checkNotNullParameter(errors, "errors");
        for (WebViewClientError webViewClientError : errors) {
            String url = webViewClientError.getUrl();
            if (url != null && url.length() != 0) {
                map = p0.f(k.a("webview_url", webViewClientError.getUrl()));
            } else {
                map = null;
            }
            Map map2 = map;
            Map o10 = p0.o(k.a("reason", Integer.valueOf(webViewClientError.getReason().getCode())));
            if (webViewClientError.getStatusCode() != null) {
                o10.put("webview_error_code", webViewClientError.getStatusCode());
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "webview_error", null, map2, o10, null, null, 50, null);
        }
    }
}
