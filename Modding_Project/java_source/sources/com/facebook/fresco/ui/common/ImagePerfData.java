package com.facebook.fresco.ui.common;

import com.facebook.fresco.ui.common.ControllerListener2;
import java.util.List;
import k2.f;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImagePerfData.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ImagePerfData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long UNSET = -1;
    @Nullable
    private final Object callerContext;
    @Nullable
    private final String callingClassNameOnVisible;
    @Nullable
    private final String contentIdOnVisible;
    @Nullable
    private final String[] contextChainArrayOnVisible;
    @Nullable
    private final String contextChainExtrasOnVisible;
    private final long controllerFailureTimeMs;
    private final long controllerFinalImageSetTimeMs;
    @Nullable
    private final String controllerId;
    private final long controllerSubmitTimeMs;
    @Nullable
    private final Integer densityDpiOnSuccess;
    @Nullable
    private final DimensionsInfo dimensionsInfo;
    @Nullable
    private final Long emptyEventTimestampNs;
    @Nullable
    private final Integer errorCodeOnFailure;
    @Nullable
    private final String errorMessageOnFailure;
    @Nullable
    private final String errorStacktraceStringOnFailure;
    @Nullable
    private final Throwable errorThrowable;
    @Nullable
    private final ControllerListener2.Extras extraData;
    @Nullable
    private final Object imageInfo;
    @Nullable
    private final Object imageRequest;
    private final long imageRequestEndTimeMs;
    private final long imageRequestStartTimeMs;
    @NotNull
    private final ImageRenderingInfra infra;
    private final int instanceId;
    private final long intermediateImageLoadTimeMs;
    @NotNull
    private final List<Pair<String, Long>> intermediateImageSetTimes;
    private final long invisibilityEventTimeMs;
    private final boolean isPrefetch;
    @Nullable
    private final Long msSinceLastNavigationOnVisible;
    private final boolean newIntermediateImageSetPointAvailable;
    private final int onScreenHeightPx;
    private final int onScreenWidthPx;
    @Nullable
    private final Long releasedEventTimestampNs;
    @Nullable
    private final String requestId;
    @Nullable
    private final String rootContextNameOnVisible;
    @Nullable
    private final String startupStatusOnVisible;
    @Nullable
    private final String subSurfaceOnVisible;
    @Nullable
    private final String surfaceOnVisible;
    private final long visibilityEventTimeMs;
    @NotNull
    private final VisibilityState visibilityState;

    /* compiled from: ImagePerfData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ImagePerfData(@NotNull ImageRenderingInfra infra, @Nullable String str, @Nullable String str2, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, long j10, long j11, long j12, long j13, long j14, long j15, @Nullable Long l10, @Nullable Long l11, boolean z10, int i10, int i11, @Nullable Throwable th2, @NotNull VisibilityState visibilityState, long j16, long j17, @Nullable DimensionsInfo dimensionsInfo, @Nullable ControllerListener2.Extras extras, @Nullable String str3, @Nullable String str4, @Nullable String[] strArr, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Long l12, @Nullable String str9, @NotNull List<Pair<String, Long>> intermediateImageSetTimes, boolean z11, @Nullable String str10, @Nullable String str11, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(infra, "infra");
        Intrinsics.checkNotNullParameter(visibilityState, "visibilityState");
        Intrinsics.checkNotNullParameter(intermediateImageSetTimes, "intermediateImageSetTimes");
        this.infra = infra;
        this.controllerId = str;
        this.requestId = str2;
        this.imageRequest = obj;
        this.callerContext = obj2;
        this.imageInfo = obj3;
        this.controllerSubmitTimeMs = j10;
        this.intermediateImageLoadTimeMs = j11;
        this.controllerFinalImageSetTimeMs = j12;
        this.controllerFailureTimeMs = j13;
        this.imageRequestStartTimeMs = j14;
        this.imageRequestEndTimeMs = j15;
        this.emptyEventTimestampNs = l10;
        this.releasedEventTimestampNs = l11;
        this.isPrefetch = z10;
        this.onScreenWidthPx = i10;
        this.onScreenHeightPx = i11;
        this.errorThrowable = th2;
        this.visibilityState = visibilityState;
        this.visibilityEventTimeMs = j16;
        this.invisibilityEventTimeMs = j17;
        this.dimensionsInfo = dimensionsInfo;
        this.extraData = extras;
        this.callingClassNameOnVisible = str3;
        this.rootContextNameOnVisible = str4;
        this.contextChainArrayOnVisible = strArr;
        this.contextChainExtrasOnVisible = str5;
        this.contentIdOnVisible = str6;
        this.surfaceOnVisible = str7;
        this.subSurfaceOnVisible = str8;
        this.msSinceLastNavigationOnVisible = l12;
        this.startupStatusOnVisible = str9;
        this.intermediateImageSetTimes = intermediateImageSetTimes;
        this.newIntermediateImageSetPointAvailable = z11;
        this.errorMessageOnFailure = str10;
        this.errorStacktraceStringOnFailure = str11;
        this.errorCodeOnFailure = num;
        this.densityDpiOnSuccess = num2;
        this.instanceId = str != null ? str.hashCode() : 0;
    }

    @NotNull
    public final String createDebugString() {
        String aVar = f.b(this).c("rendering Infra", this.infra).c("controller ID", this.controllerId).c("request ID", this.requestId).b("controller submit", this.controllerSubmitTimeMs).b("controller final image", this.controllerFinalImageSetTimeMs).b("controller failure", this.controllerFailureTimeMs).b("start time", this.imageRequestStartTimeMs).b("end time", this.imageRequestEndTimeMs).d("prefetch", this.isPrefetch).c("caller context", this.callerContext).c("image request", this.imageRequest).c("image info", this.imageInfo).a("on-screen width", this.onScreenWidthPx).a("on-screen height", this.onScreenHeightPx).c("visibility state", this.visibilityState).b("visibility event", this.visibilityEventTimeMs).b("invisibility event", this.invisibilityEventTimeMs).c("dimensions info", this.dimensionsInfo).c("extra data", this.extraData).toString();
        Intrinsics.checkNotNullExpressionValue(aVar, "toString(...)");
        return aVar;
    }

    @Nullable
    public final Object getCallerContext() {
        return this.callerContext;
    }

    @Nullable
    public final String getCallingClassNameOnVisible() {
        return this.callingClassNameOnVisible;
    }

    @Nullable
    public final String getContentIdOnVisible() {
        return this.contentIdOnVisible;
    }

    @Nullable
    public final String[] getContextChainArrayOnVisible() {
        return this.contextChainArrayOnVisible;
    }

    @Nullable
    public final String getContextChainExtrasOnVisible() {
        return this.contextChainExtrasOnVisible;
    }

    public final long getControllerFailureTimeMs() {
        return this.controllerFailureTimeMs;
    }

    public final long getControllerFinalImageSetTimeMs() {
        return this.controllerFinalImageSetTimeMs;
    }

    @Nullable
    public final String getControllerId() {
        return this.controllerId;
    }

    public final long getControllerSubmitTimeMs() {
        return this.controllerSubmitTimeMs;
    }

    @Nullable
    public final Integer getDensityDpiOnSuccess() {
        return this.densityDpiOnSuccess;
    }

    @Nullable
    public final DimensionsInfo getDimensionsInfo() {
        return this.dimensionsInfo;
    }

    @Nullable
    public final Long getEmptyEventTimestampNs() {
        return this.emptyEventTimestampNs;
    }

    @Nullable
    public final Integer getErrorCodeOnFailure() {
        return this.errorCodeOnFailure;
    }

    @Nullable
    public final String getErrorMessageOnFailure() {
        return this.errorMessageOnFailure;
    }

    @Nullable
    public final String getErrorStacktraceStringOnFailure() {
        return this.errorStacktraceStringOnFailure;
    }

    @Nullable
    public final Throwable getErrorThrowable() {
        return this.errorThrowable;
    }

    @Nullable
    public final ControllerListener2.Extras getExtraData() {
        return this.extraData;
    }

    public final long getFinalImageLoadTimeMs() {
        long j10 = this.imageRequestEndTimeMs;
        if (j10 == -1) {
            return -1L;
        }
        long j11 = this.imageRequestStartTimeMs;
        if (j11 == -1) {
            return -1L;
        }
        return j10 - j11;
    }

    @Nullable
    public final Object getImageInfo() {
        return this.imageInfo;
    }

    @Nullable
    public final Object getImageRequest() {
        return this.imageRequest;
    }

    public final long getImageRequestEndTimeMs() {
        return this.imageRequestEndTimeMs;
    }

    public final long getImageRequestStartTimeMs() {
        return this.imageRequestStartTimeMs;
    }

    @NotNull
    public final ImageRenderingInfra getInfra() {
        return this.infra;
    }

    public final int getInstanceId() {
        return this.instanceId;
    }

    public final long getIntermediateImageLoadTimeMs() {
        return this.intermediateImageLoadTimeMs;
    }

    @NotNull
    public final List<Pair<String, Long>> getIntermediateImageSetTimes() {
        return this.intermediateImageSetTimes;
    }

    public final long getInvisibilityEventTimeMs() {
        return this.invisibilityEventTimeMs;
    }

    @Nullable
    public final Long getMsSinceLastNavigationOnVisible() {
        return this.msSinceLastNavigationOnVisible;
    }

    public final boolean getNewIntermediateImageSetPointAvailable() {
        return this.newIntermediateImageSetPointAvailable;
    }

    public final int getOnScreenHeightPx() {
        return this.onScreenHeightPx;
    }

    public final int getOnScreenWidthPx() {
        return this.onScreenWidthPx;
    }

    @Nullable
    public final Long getReleasedEventTimestampNs() {
        return this.releasedEventTimestampNs;
    }

    @Nullable
    public final String getRequestId() {
        return this.requestId;
    }

    @Nullable
    public final String getRootContextNameOnVisible() {
        return this.rootContextNameOnVisible;
    }

    @Nullable
    public final String getStartupStatusOnVisible() {
        return this.startupStatusOnVisible;
    }

    @Nullable
    public final String getSubSurfaceOnVisible() {
        return this.subSurfaceOnVisible;
    }

    @Nullable
    public final String getSurfaceOnVisible() {
        return this.surfaceOnVisible;
    }

    public final long getVisibilityEventTimeMs() {
        return this.visibilityEventTimeMs;
    }

    @NotNull
    public final VisibilityState getVisibilityState() {
        return this.visibilityState;
    }

    public final boolean isPrefetch() {
        return this.isPrefetch;
    }
}
