package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.WebTriggerParams;
import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebTriggerParams.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WebTriggerParams {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean debugKeyAllowed;
    @NotNull
    private final Uri registrationUri;

    /* compiled from: WebTriggerParams.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        @NotNull
        public final List<android.adservices.measurement.WebTriggerParams> convertWebTriggerParams$ads_adservices_release(@NotNull List<WebTriggerParams> request) {
            WebTriggerParams.Builder debugKeyAllowed;
            android.adservices.measurement.WebTriggerParams build;
            Intrinsics.checkNotNullParameter(request, "request");
            ArrayList arrayList = new ArrayList();
            for (WebTriggerParams webTriggerParams : request) {
                i0.a();
                debugKeyAllowed = h0.a(webTriggerParams.getRegistrationUri()).setDebugKeyAllowed(webTriggerParams.getDebugKeyAllowed());
                build = debugKeyAllowed.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(param.registrati…                 .build()");
                arrayList.add(build);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public WebTriggerParams(@NotNull Uri registrationUri, boolean z10) {
        Intrinsics.checkNotNullParameter(registrationUri, "registrationUri");
        this.registrationUri = registrationUri;
        this.debugKeyAllowed = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerParams)) {
            return false;
        }
        WebTriggerParams webTriggerParams = (WebTriggerParams) obj;
        if (Intrinsics.areEqual(this.registrationUri, webTriggerParams.registrationUri) && this.debugKeyAllowed == webTriggerParams.debugKeyAllowed) {
            return true;
        }
        return false;
    }

    public final boolean getDebugKeyAllowed() {
        return this.debugKeyAllowed;
    }

    @NotNull
    public final Uri getRegistrationUri() {
        return this.registrationUri;
    }

    public int hashCode() {
        return (this.registrationUri.hashCode() * 31) + Boolean.hashCode(this.debugKeyAllowed);
    }

    @NotNull
    public String toString() {
        return "WebTriggerParams { RegistrationUri=" + this.registrationUri + ", DebugKeyAllowed=" + this.debugKeyAllowed + " }";
    }
}
