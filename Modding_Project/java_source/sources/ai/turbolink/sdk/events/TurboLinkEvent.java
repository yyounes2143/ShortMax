package ai.turbolink.sdk.events;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.TurboLinkActivityLifeCycleObserver;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.TurboLinkEventType;
import ai.turbolink.sdk.request.event.EventAddtoCartProperties;
import ai.turbolink.sdk.request.event.TurboLinkCustomProperties;
import ai.turbolink.sdk.request.response.EventResponse;
import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkEvent {
    @Nullable
    private Activity activity;
    @NotNull
    private EventAddtoCartProperties addtoCartProperties;
    @Nullable
    private TurboLinkEventCallback callback;
    @NotNull
    private TurboLinkCustomProperties customProperties;
    @NotNull
    private String event;
    @NotNull
    private TurboLinkEventType eventType;
    private boolean isNewIntent;
    @Nullable
    private String linkId;
    @NotNull
    private String nativeMsg;
    @NotNull
    private String userId;

    /* compiled from: TurboLinkEvent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface TurboLinkEventCallback {
        void onFailure(int i10, @NotNull String str);

        void onSuccess(@NotNull EventResponse eventResponse);
    }

    public TurboLinkEvent(@Nullable Activity activity, @NotNull TurboLinkEventType eventType, @NotNull String event) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(event, "event");
        this.customProperties = new TurboLinkCustomProperties();
        this.addtoCartProperties = new EventAddtoCartProperties();
        this.eventType = eventType;
        this.event = event;
        this.activity = activity;
        this.userId = "";
        this.nativeMsg = "";
    }

    public final void build() {
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion == null) {
            return;
        }
        TurboLinkActivityLifeCycleObserver activityLifeCycleObserver = companion.getActivityLifeCycleObserver();
        TurboLinkEventCallback instanceEventCallback = activityLifeCycleObserver != null ? activityLifeCycleObserver.getInstanceEventCallback() : null;
        String[] strArr = {TurboLinkDefaultEvent.REOPEN.getEvent(), TurboLinkDefaultEvent.OPEN.getEvent(), TurboLinkDefaultEvent.INSTALL.getEvent(), TurboLinkDefaultEvent.CODESEARCH.getEvent()};
        for (int i10 = 0; i10 < 4; i10++) {
            if (Intrinsics.areEqual(this.event, strArr[i10])) {
                build(instanceEventCallback);
                return;
            }
        }
        build(null);
    }

    @Nullable
    public final Activity getActivity() {
        return this.activity;
    }

    @NotNull
    public final EventAddtoCartProperties getAddtoCartProperties() {
        return this.addtoCartProperties;
    }

    @Nullable
    public final TurboLinkEventCallback getCallback() {
        return this.callback;
    }

    @NotNull
    public final TurboLinkCustomProperties getCustomProperties() {
        return this.customProperties;
    }

    @NotNull
    public final String getEvent() {
        return this.event;
    }

    @Nullable
    public final String getLinkId() {
        return this.linkId;
    }

    @NotNull
    public final String getNativeMsg() {
        return this.nativeMsg;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final TurboLinkEvent setAddtoCartProperties(@NotNull EventAddtoCartProperties addtoCartProperties) {
        Intrinsics.checkNotNullParameter(addtoCartProperties, "addtoCartProperties");
        this.addtoCartProperties = addtoCartProperties;
        return this;
    }

    @NotNull
    public final TurboLinkEvent setCustomProperties(@NotNull TurboLinkCustomProperties customProperties) {
        Intrinsics.checkNotNullParameter(customProperties, "customProperties");
        this.customProperties = customProperties;
        return this;
    }

    @NotNull
    public final TurboLinkEvent setIntent(@Nullable Intent intent) {
        this.isNewIntent = true;
        TurboLink companion = TurboLink.Companion.getInstance();
        if (intent == null) {
            intent = new Intent();
        }
        boolean haveAndIsTurboLinkIntentUrl = AppPrefHelper.Companion.haveAndIsTurboLinkIntentUrl(intent);
        if (companion != null) {
            companion.onIntentRead(intent, haveAndIsTurboLinkIntentUrl);
        }
        return this;
    }

    @NotNull
    public final TurboLinkEvent setLinkId(@NotNull String linkId) {
        Intrinsics.checkNotNullParameter(linkId, "linkId");
        this.linkId = linkId;
        return this;
    }

    @NotNull
    public final TurboLinkEvent setNativeMsg(@NotNull String nativeMsg) {
        Intrinsics.checkNotNullParameter(nativeMsg, "nativeMsg");
        this.nativeMsg = nativeMsg;
        return this;
    }

    @NotNull
    public final TurboLinkEvent setUserId(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        return this;
    }

    @NotNull
    public final TurboLinkEvent withCallback(@NotNull TurboLinkEventCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        return this;
    }

    public final void build(@Nullable TurboLinkEventCallback turboLinkEventCallback) {
        TurboLink.Companion companion = TurboLink.Companion;
        TurboLink companion2 = companion.getInstance();
        if (companion2 == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.userId)) {
            companion2.setUserId(this.userId);
        }
        if (!TextUtils.isEmpty(this.nativeMsg)) {
            companion.setClipboardText(this.nativeMsg);
        }
        if (turboLinkEventCallback != null) {
            this.callback = turboLinkEventCallback;
        }
        if (this.isNewIntent && AppPrefHelper.Companion.getLAST_INTENT_VALUE() == null) {
            return;
        }
        this.eventType.getHandler().execute(companion2, this);
    }
}
