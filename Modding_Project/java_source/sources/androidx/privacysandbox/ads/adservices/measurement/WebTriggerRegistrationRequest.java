package androidx.privacysandbox.ads.adservices.measurement;

import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebTriggerRegistrationRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WebTriggerRegistrationRequest {
    @NotNull
    private final Uri destination;
    @NotNull
    private final List<WebTriggerParams> webTriggerParams;

    public WebTriggerRegistrationRequest(@NotNull List<WebTriggerParams> webTriggerParams, @NotNull Uri destination) {
        Intrinsics.checkNotNullParameter(webTriggerParams, "webTriggerParams");
        Intrinsics.checkNotNullParameter(destination, "destination");
        this.webTriggerParams = webTriggerParams;
        this.destination = destination;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @NotNull
    public final android.adservices.measurement.WebTriggerRegistrationRequest convertToAdServices$ads_adservices_release() {
        android.adservices.measurement.WebTriggerRegistrationRequest build;
        l0.a();
        build = k0.a(WebTriggerParams.Companion.convertWebTriggerParams$ads_adservices_release(this.webTriggerParams), this.destination).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …   )\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerRegistrationRequest)) {
            return false;
        }
        WebTriggerRegistrationRequest webTriggerRegistrationRequest = (WebTriggerRegistrationRequest) obj;
        if (Intrinsics.areEqual(this.webTriggerParams, webTriggerRegistrationRequest.webTriggerParams) && Intrinsics.areEqual(this.destination, webTriggerRegistrationRequest.destination)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Uri getDestination() {
        return this.destination;
    }

    @NotNull
    public final List<WebTriggerParams> getWebTriggerParams() {
        return this.webTriggerParams;
    }

    public int hashCode() {
        return (this.webTriggerParams.hashCode() * 31) + this.destination.hashCode();
    }

    @NotNull
    public String toString() {
        return "WebTriggerRegistrationRequest { WebTriggerParams=" + this.webTriggerParams + ", Destination=" + this.destination;
    }
}
