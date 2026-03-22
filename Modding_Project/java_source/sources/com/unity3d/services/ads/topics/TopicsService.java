package com.unity3d.services.ads.topics;

import android.adservices.AdServicesState;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.ext.SdkExtensions;
import androidx.core.os.b;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import gt.d1;
import i.a;
import i.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TopicsService.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
/* loaded from: classes7.dex */
public final class TopicsService {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final IEventSender eventSender;
    @Nullable
    private final d topicsManager;

    public TopicsService(@NotNull Context context, @NotNull ISDKDispatchers dispatchers, @NotNull IEventSender eventSender) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(eventSender, "eventSender");
        this.dispatchers = dispatchers;
        this.eventSender = eventSender;
        this.topicsManager = getTopicsManager(context);
    }

    private final d getTopicsManager(Context context) {
        int extensionVersion;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (extensionVersion < 4) {
                return null;
            }
            return (d) context.getSystemService(d.class);
        }
        return null;
    }

    @NotNull
    public final TopicsStatus checkAvailability() {
        int extensionVersion;
        boolean isAdServicesStateEnabled;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (extensionVersion < 4) {
                return TopicsStatus.ERROR_EXTENSION_BELOW_4;
            }
            if (this.topicsManager != null) {
                isAdServicesStateEnabled = AdServicesState.isAdServicesStateEnabled();
                if (!isAdServicesStateEnabled) {
                    return TopicsStatus.ERROR_AD_SERVICES_DISABLED;
                }
                return TopicsStatus.TOPICS_AVAILABLE;
            }
            return TopicsStatus.ERROR_TOPICSMANAGER_NULL;
        }
        return TopicsStatus.ERROR_API_BELOW_33;
    }

    public final void getTopics(@NotNull String adsSdkName, boolean z10) {
        Intrinsics.checkNotNullParameter(adsSdkName, "adsSdkName");
        TopicsReceiver topicsReceiver = new TopicsReceiver(this.eventSender);
        new a.C0772a().b(adsSdkName).c(z10).a();
        Intrinsics.checkNotNullExpressionValue(null, "Builder().setAdsSdkName(…ecordObservation).build()");
        try {
            d dVar = this.topicsManager;
            if (dVar != null) {
                dVar.b(null, d1.a(this.dispatchers.getDefault()), b.a(topicsReceiver));
            }
        } catch (Exception e10) {
            this.eventSender.sendEvent(WebViewEventCategory.TOPICS, TopicsEvents.NOT_AVAILABLE, TopicsErrors.ERROR_EXCEPTION, e10.toString());
            DeviceLog.debug("Failed to get topics with error: " + e10);
        }
    }
}
