package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.assistance.ClientDistributeRewards;
import ai.turbolink.sdk.request.event.EventCustom;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventCustom.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventCustom extends ServerRequestURL {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventCustom(@NotNull String event, @NotNull TurboLinkCustomProperties customDataBuilder, @NotNull Context context, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        super(context, event);
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(customDataBuilder, "customDataBuilder");
        Intrinsics.checkNotNullParameter(context, "context");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("custom_data", customDataBuilder);
        } catch (JSONException e10) {
            TurboLinkLogger.w("Occurred exception when add new JSONArray to the custom_data." + e10.getMessage());
        }
        setPost(jSONObject);
        setCallback(turboLinkEventCallback);
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getEventListenerCallback() != null && companion.getToggleClickAppEventListenerCallback()) {
            companion.setWebviewGoReloadUrl(true);
            companion.setWebviewGoReloadUrlLastCustomEventTime(System.currentTimeMillis() / 1000);
            if (TurboLink.Campaign.INSTANCE.getLastOpenWebviewActivity() != null) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: h.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        EventCustom.m11_init_$lambda0();
                    }
                }, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m11_init_$lambda0() {
        if (TurboLink.Companion.getWebviewGoReloadUrl()) {
            TurboLink.Campaign.reLoadUrl();
        }
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleErrors(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.handleErrors(context);
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleFailure(int i10, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        super.handleFailure(i10, msg);
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onFailure(i10, msg);
        }
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleSuccess(@NotNull ServerResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        super.handleSuccess(response);
        ClientDistributeRewards.INSTANCE.doDistribute();
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onSuccess(response.getEventResponse());
        }
    }
}
