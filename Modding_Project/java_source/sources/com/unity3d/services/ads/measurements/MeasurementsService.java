package com.unity3d.services.ads.measurements;

import android.adservices.AdServicesState;
import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.ext.SdkExtensions;
import android.view.InputEvent;
import androidx.core.os.b;
import androidx.privacysandbox.ads.adservices.measurement.m;
import androidx.privacysandbox.ads.adservices.measurement.n;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import gt.d1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MeasurementsService.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
/* loaded from: classes7.dex */
public final class MeasurementsService {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final IEventSender eventSender;
    @Nullable
    private final MeasurementManager measurementManager;

    public MeasurementsService(@NotNull Context context, @NotNull ISDKDispatchers dispatchers, @NotNull IEventSender eventSender) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(eventSender, "eventSender");
        this.dispatchers = dispatchers;
        this.eventSender = eventSender;
        this.measurementManager = getMeasurementManager(context);
    }

    private final MeasurementManager getMeasurementManager(Context context) {
        int extensionVersion;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (extensionVersion < 4) {
                return null;
            }
            return n.a(context.getSystemService(m.a()));
        }
        return null;
    }

    public final void checkAvailability() {
        int extensionVersion;
        boolean isAdServicesStateEnabled;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (extensionVersion < 4) {
                this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.NOT_AVAILABLE, MeasurementsErrors.ERROR_EXTENSION_BELOW_4);
                return;
            } else if (this.measurementManager != null) {
                isAdServicesStateEnabled = AdServicesState.isAdServicesStateEnabled();
                if (isAdServicesStateEnabled) {
                    this.measurementManager.getMeasurementApiStatus(d1.a(this.dispatchers.getDefault()), b.a(new MeasurementsStatusReceiver(this.eventSender)));
                    return;
                } else {
                    this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.NOT_AVAILABLE, MeasurementsErrors.ERROR_AD_SERVICES_DISABLED);
                    return;
                }
            } else {
                this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.NOT_AVAILABLE, MeasurementsErrors.ERROR_MANAGER_NULL);
                return;
            }
        }
        this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.NOT_AVAILABLE, MeasurementsErrors.ERROR_API_BELOW_33);
    }

    public final void registerClick(@NotNull String url, @NotNull InputEvent inputEvent) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
        MeasurementManager measurementManager = this.measurementManager;
        if (measurementManager != null) {
            measurementManager.registerSource(Uri.parse(url), inputEvent, d1.a(this.dispatchers.getDefault()), b.a(new MeasurementsReceiver(this.eventSender, MeasurementsEvents.CLICK_SUCCESSFUL, MeasurementsEvents.CLICK_ERROR)));
        }
    }

    public final void registerTrigger(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        MeasurementManager measurementManager = this.measurementManager;
        if (measurementManager != null) {
            measurementManager.registerTrigger(Uri.parse(url), d1.a(this.dispatchers.getDefault()), b.a(new MeasurementsReceiver(this.eventSender, MeasurementsEvents.TRIGGER_SUCCESSFUL, MeasurementsEvents.TRIGGER_ERROR)));
        }
    }

    public final void registerView(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        MeasurementManager measurementManager = this.measurementManager;
        if (measurementManager != null) {
            measurementManager.registerSource(Uri.parse(url), null, d1.a(this.dispatchers.getDefault()), b.a(new MeasurementsReceiver(this.eventSender, MeasurementsEvents.VIEW_SUCCESSFUL, MeasurementsEvents.VIEW_ERROR)));
        }
    }
}
