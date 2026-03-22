package com.facebook.fresco.ui.common;

import com.facebook.fresco.ui.common.ControllerListener2;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImagePerfState.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ImagePerfState extends ImagePerfLoggingState {
    @Nullable
    private ControllerListener2.Extras _extraData;
    @Nullable
    private Object callerContext;
    private long controllerFailureTimeMs;
    private long controllerFinalImageSetTimeMs;
    @Nullable
    private String controllerId;
    private long controllerIntermediateImageSetTimeMs;
    private long controllerSubmitTimeMs;
    @Nullable
    private DimensionsInfo dimensionsInfo;
    @Nullable
    private Throwable errorThrowable;
    @Nullable
    private Object imageInfo;
    @NotNull
    private ImageLoadStatus imageLoadStatus;
    @Nullable
    private Object imageRequest;
    private long imageRequestEndTimeMs;
    private long imageRequestStartTimeMs;
    private long invisibilityEventTimeMs;
    private boolean isPrefetch;
    private int onScreenHeightPx;
    private int onScreenWidthPx;
    @Nullable
    private String requestId;
    private long visibilityEventTimeMs;
    @NotNull
    private VisibilityState visibilityState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImagePerfState(@NotNull ImageRenderingInfra infra) {
        super(infra);
        Intrinsics.checkNotNullParameter(infra, "infra");
        this.controllerSubmitTimeMs = -1L;
        this.controllerIntermediateImageSetTimeMs = -1L;
        this.controllerFinalImageSetTimeMs = -1L;
        this.controllerFailureTimeMs = -1L;
        this.imageRequestStartTimeMs = -1L;
        this.imageRequestEndTimeMs = -1L;
        this.onScreenWidthPx = -1;
        this.onScreenHeightPx = -1;
        this.imageLoadStatus = ImageLoadStatus.UNKNOWN;
        this.visibilityState = VisibilityState.UNKNOWN;
        this.visibilityEventTimeMs = -1L;
        this.invisibilityEventTimeMs = -1L;
    }

    @Nullable
    public final Object getCallerContext() {
        return this.callerContext;
    }

    @Nullable
    public final DimensionsInfo getDimensionsInfo() {
        return this.dimensionsInfo;
    }

    @Nullable
    public final Object getExtraData() {
        return this._extraData;
    }

    @NotNull
    public final ImageLoadStatus getImageLoadStatus() {
        return this.imageLoadStatus;
    }

    public final long getVisibilityEventTimeMs() {
        return this.visibilityEventTimeMs;
    }

    public final void reset() {
        this.requestId = null;
        this.imageRequest = null;
        this.callerContext = null;
        this.imageInfo = null;
        this.isPrefetch = false;
        this.onScreenWidthPx = -1;
        this.onScreenHeightPx = -1;
        this.errorThrowable = null;
        this.imageLoadStatus = ImageLoadStatus.UNKNOWN;
        this.visibilityState = VisibilityState.UNKNOWN;
        this.dimensionsInfo = null;
        this._extraData = null;
        resetPointsTimestamps();
        resetLoggingState$ui_common_release();
    }

    public final void resetPointsTimestamps() {
        this.imageRequestStartTimeMs = -1L;
        this.imageRequestEndTimeMs = -1L;
        this.controllerSubmitTimeMs = -1L;
        this.controllerFinalImageSetTimeMs = -1L;
        this.controllerFailureTimeMs = -1L;
        this.visibilityEventTimeMs = -1L;
        this.invisibilityEventTimeMs = -1L;
        getIntermediateImageSetTimes().clear();
        setNewIntermediateImageSetPointAvailable(false);
        setEmptyEventTimestampNs(null);
        setReleasedEventTimestampNs(null);
    }

    public final void setCallerContext(@Nullable Object obj) {
        this.callerContext = obj;
    }

    public final void setControllerFailureTimeMs(long j10) {
        this.controllerFailureTimeMs = j10;
    }

    public final void setControllerFinalImageSetTimeMs(long j10) {
        this.controllerFinalImageSetTimeMs = j10;
    }

    public final void setControllerId(@Nullable String str) {
        this.controllerId = str;
    }

    public final void setControllerIntermediateImageSetTimeMs(long j10) {
        this.controllerIntermediateImageSetTimeMs = j10;
    }

    public final void setControllerSubmitTimeMs(long j10) {
        this.controllerSubmitTimeMs = j10;
    }

    public final void setDimensionsInfo(@Nullable DimensionsInfo dimensionsInfo) {
        this.dimensionsInfo = dimensionsInfo;
    }

    public final void setErrorThrowable(@Nullable Throwable th2) {
        this.errorThrowable = th2;
    }

    public final void setExtraData(@Nullable ControllerListener2.Extras extras) {
        this._extraData = extras;
    }

    public final void setImageInfo(@Nullable Object obj) {
        this.imageInfo = obj;
    }

    public final void setImageLoadStatus(@NotNull ImageLoadStatus imageLoadStatus) {
        Intrinsics.checkNotNullParameter(imageLoadStatus, "<set-?>");
        this.imageLoadStatus = imageLoadStatus;
    }

    public final void setImageRequest(@Nullable Object obj) {
        this.imageRequest = obj;
    }

    public final void setImageRequestEndTimeMs(long j10) {
        this.imageRequestEndTimeMs = j10;
    }

    public final void setImageRequestStartTimeMs(long j10) {
        this.imageRequestStartTimeMs = j10;
    }

    public final void setInvisibilityEventTimeMs(long j10) {
        this.invisibilityEventTimeMs = j10;
    }

    public final void setOnScreenHeight(int i10) {
        this.onScreenHeightPx = i10;
    }

    public final void setOnScreenWidth(int i10) {
        this.onScreenWidthPx = i10;
    }

    public final void setPrefetch(boolean z10) {
        this.isPrefetch = z10;
    }

    public final void setRequestId(@Nullable String str) {
        this.requestId = str;
    }

    public final void setVisibilityEventTimeMs(long j10) {
        this.visibilityEventTimeMs = j10;
    }

    public final void setVisible(boolean z10) {
        VisibilityState visibilityState;
        if (z10) {
            visibilityState = VisibilityState.VISIBLE;
        } else {
            visibilityState = VisibilityState.INVISIBLE;
        }
        this.visibilityState = visibilityState;
    }

    @NotNull
    public final ImagePerfData snapshot() {
        return new ImagePerfData(getInfra(), this.controllerId, this.requestId, this.imageRequest, this.callerContext, this.imageInfo, this.controllerSubmitTimeMs, this.controllerIntermediateImageSetTimeMs, this.controllerFinalImageSetTimeMs, this.controllerFailureTimeMs, this.imageRequestStartTimeMs, this.imageRequestEndTimeMs, getEmptyEventTimestampNs(), getReleasedEventTimestampNs(), this.isPrefetch, this.onScreenWidthPx, this.onScreenHeightPx, this.errorThrowable, this.visibilityState, this.visibilityEventTimeMs, this.invisibilityEventTimeMs, this.dimensionsInfo, this._extraData, getCallingClassNameOnVisible(), getRootContextNameOnVisible(), getContextChainArrayOnVisible(), getContextChainExtrasOnVisible(), getContentIdOnVisible(), getSurfaceOnVisible(), getSubSurfaceOnVisible(), getMsSinceLastNavigationOnVisible(), getStartupStatusOnVisible(), CollectionsKt.d1(getIntermediateImageSetTimes()), getNewIntermediateImageSetPointAvailable(), getErrorMessageOnFailure(), getErrorStacktraceStringOnFailure(), getErrorCodeOnFailure(), getDensityDpiOnSuccess());
    }
}
