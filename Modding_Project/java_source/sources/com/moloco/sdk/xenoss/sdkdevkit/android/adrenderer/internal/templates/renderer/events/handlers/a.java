package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.moloco.sdk.acm.e;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f34647a;

    public a(@NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f34647a = metricsRecorder;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.d("metric");
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "ACMHandler";
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = event.getString(NotificationCompat.CATEGORY_EVENT);
        String string2 = event.getString("metricName");
        String string3 = event.getString("type");
        JSONObject optJSONObject = event.optJSONObject("tags");
        String string4 = event.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (Intrinsics.areEqual(string3, "counter")) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String b10 = b();
            MolocoLogger.debug$default(molocoLogger, b10, "Count metric recorded: " + string2 + " = " + string4, false, 4, null);
            Intrinsics.checkNotNull(string2);
            com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(string2);
            Intrinsics.checkNotNull(string4);
            bVar.d(Integer.parseInt(string4));
            if (optJSONObject != null) {
                Iterator<String> keys = optJSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
                while (keys.hasNext()) {
                    String next = keys.next();
                    Intrinsics.checkNotNull(next);
                    String string5 = optJSONObject.getString(next);
                    Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                    bVar = bVar.e(next, string5);
                }
            }
            this.f34647a.b(bVar);
        } else if (Intrinsics.areEqual(string3, "timer")) {
            MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
            String b11 = b();
            MolocoLogger.debug$default(molocoLogger2, b11, "Timer metric recorded: " + string2 + " = " + string4, false, 4, null);
            e.a aVar = com.moloco.sdk.acm.e.Companion;
            Intrinsics.checkNotNull(string2);
            com.moloco.sdk.acm.e a10 = aVar.a(string2);
            Intrinsics.checkNotNull(string4);
            a10.g(Long.parseLong(string4));
            if (optJSONObject != null) {
                Iterator<String> keys2 = optJSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(keys2, "keys(...)");
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    Intrinsics.checkNotNull(next2);
                    String string6 = optJSONObject.getString(next2);
                    Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                    a10 = a10.f(next2, string6);
                }
            }
            this.f34647a.a(a10);
        } else {
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            String b12 = b();
            MolocoLogger.warn$default(molocoLogger3, b12, "Unknown event type: " + string, null, false, 12, null);
        }
    }
}
