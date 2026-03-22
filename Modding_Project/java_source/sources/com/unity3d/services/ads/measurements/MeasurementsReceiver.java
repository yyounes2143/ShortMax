package com.unity3d.services.ads.measurements;

import android.annotation.SuppressLint;
import android.os.OutcomeReceiver;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasurementsReceiver.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
/* loaded from: classes7.dex */
public final class MeasurementsReceiver implements OutcomeReceiver {
    @NotNull
    private final MeasurementsEvents errorEvent;
    @NotNull
    private final IEventSender eventSender;
    @NotNull
    private final MeasurementsEvents successEvent;

    public MeasurementsReceiver(@NotNull IEventSender eventSender, @NotNull MeasurementsEvents successEvent, @NotNull MeasurementsEvents errorEvent) {
        Intrinsics.checkNotNullParameter(eventSender, "eventSender");
        Intrinsics.checkNotNullParameter(successEvent, "successEvent");
        Intrinsics.checkNotNullParameter(errorEvent, "errorEvent");
        this.eventSender = eventSender;
        this.successEvent = successEvent;
        this.errorEvent = errorEvent;
    }

    public void onResult(@NotNull Object p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, this.successEvent, new Object[0]);
    }

    public void onError(@NotNull Exception error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, this.errorEvent, error.toString());
    }
}
