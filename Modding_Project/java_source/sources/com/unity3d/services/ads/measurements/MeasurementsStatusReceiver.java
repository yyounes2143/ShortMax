package com.unity3d.services.ads.measurements;

import android.annotation.SuppressLint;
import android.os.OutcomeReceiver;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasurementsStatusReceiver.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
/* loaded from: classes7.dex */
public final class MeasurementsStatusReceiver implements OutcomeReceiver {
    @NotNull
    private final IEventSender eventSender;

    public MeasurementsStatusReceiver(@NotNull IEventSender eventSender) {
        Intrinsics.checkNotNullParameter(eventSender, "eventSender");
        this.eventSender = eventSender;
    }

    public /* bridge */ /* synthetic */ void onResult(Object obj) {
        onResult(((Number) obj).intValue());
    }

    public void onError(@NotNull Exception error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.NOT_AVAILABLE, MeasurementsErrors.ERROR_EXCEPTION, error.toString());
    }

    public void onResult(int i10) {
        this.eventSender.sendEvent(WebViewEventCategory.MEASUREMENTS, MeasurementsEvents.AVAILABLE, Integer.valueOf(i10));
    }
}
