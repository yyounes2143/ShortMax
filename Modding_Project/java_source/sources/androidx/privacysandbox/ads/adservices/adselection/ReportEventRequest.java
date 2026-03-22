package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.ReportEventRequest;
import android.annotation.SuppressLint;
import android.util.Log;
import android.view.InputEvent;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ReportEventRequest.kt */
@Metadata
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes2.dex */
public final class ReportEventRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FLAG_REPORTING_DESTINATION_BUYER = 2;
    public static final int FLAG_REPORTING_DESTINATION_SELLER = 1;
    private final long adSelectionId;
    @NotNull
    private final String eventData;
    @NotNull
    private final String eventKey;
    @Nullable
    private final InputEvent inputEvent;
    private final int reportingDestinations;

    /* compiled from: ReportEventRequest.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: ReportEventRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ReportEventRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(@NotNull ReportEventRequest request) {
                ReportEventRequest.Builder inputEvent;
                android.adservices.adselection.ReportEventRequest build;
                Intrinsics.checkNotNullParameter(request, "request");
                r0.a();
                inputEvent = q0.a(request.getAdSelectionId(), request.getEventKey(), request.getEventData(), request.getReportingDestinations()).setInputEvent(request.getInputEvent());
                build = inputEvent.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    /* compiled from: ReportEventRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext8Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ReportEventRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(@NotNull ReportEventRequest request) {
                android.adservices.adselection.ReportEventRequest build;
                Intrinsics.checkNotNullParameter(request, "request");
                if (request.getInputEvent() != null) {
                    Log.w("ReportEventRequest", "inputEvent is ignored. Min version to use inputEvent is API 31 ext 10");
                }
                r0.a();
                build = q0.a(request.getAdSelectionId(), request.getEventKey(), request.getEventData(), request.getReportingDestinations()).build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext8Impl() {
        }
    }

    /* compiled from: ReportEventRequest.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface ReportingDestination {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReportEventRequest(long j10, @NotNull String eventKey, @NotNull String eventData, int i10) {
        this(j10, eventKey, eventData, i10, null, 16, null);
        Intrinsics.checkNotNullParameter(eventKey, "eventKey");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @SuppressLint({"NewApi"})
    @NotNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final android.adservices.adselection.ReportEventRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            return Ext8Impl.Companion.convertReportEventRequest(this);
        }
        return Ext10Impl.Companion.convertReportEventRequest(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportEventRequest)) {
            return false;
        }
        ReportEventRequest reportEventRequest = (ReportEventRequest) obj;
        if (this.adSelectionId == reportEventRequest.adSelectionId && Intrinsics.areEqual(this.eventKey, reportEventRequest.eventKey) && Intrinsics.areEqual(this.eventData, reportEventRequest.eventData) && this.reportingDestinations == reportEventRequest.reportingDestinations && Intrinsics.areEqual(this.inputEvent, reportEventRequest.inputEvent)) {
            return true;
        }
        return false;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    @NotNull
    public final String getEventData() {
        return this.eventData;
    }

    @NotNull
    public final String getEventKey() {
        return this.eventKey;
    }

    @Nullable
    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final int getReportingDestinations() {
        return this.reportingDestinations;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((((Long.hashCode(this.adSelectionId) * 31) + this.eventKey.hashCode()) * 31) + this.eventData.hashCode()) * 31) + Integer.hashCode(this.reportingDestinations)) * 31;
        InputEvent inputEvent = this.inputEvent;
        if (inputEvent != null) {
            i10 = inputEvent.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "ReportEventRequest: adSelectionId=" + this.adSelectionId + ", eventKey=" + this.eventKey + ", eventData=" + this.eventData + ", reportingDestinations=" + this.reportingDestinations + "inputEvent=" + this.inputEvent;
    }

    public ReportEventRequest(long j10, @NotNull String eventKey, @NotNull String eventData, int i10, @Nullable InputEvent inputEvent) {
        Intrinsics.checkNotNullParameter(eventKey, "eventKey");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        this.adSelectionId = j10;
        this.eventKey = eventKey;
        this.eventData = eventData;
        this.reportingDestinations = i10;
        this.inputEvent = inputEvent;
        if (i10 <= 0 || i10 > 3) {
            throw new IllegalArgumentException("Invalid reporting destinations bitfield.");
        }
    }

    public /* synthetic */ ReportEventRequest(long j10, String str, String str2, int i10, InputEvent inputEvent, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, str, str2, i10, (i11 & 16) != 0 ? null : inputEvent);
    }

    @ExperimentalFeatures.Ext10OptIn
    public static /* synthetic */ void getInputEvent$annotations() {
    }
}
