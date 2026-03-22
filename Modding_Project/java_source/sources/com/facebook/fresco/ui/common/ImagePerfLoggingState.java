package com.facebook.fresco.ui.common;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImagePerfLoggingState.kt */
@Metadata
/* loaded from: classes3.dex */
public class ImagePerfLoggingState {
    @Nullable
    private String callingClassNameOnVisible;
    @Nullable
    private String contentIdOnVisible;
    @Nullable
    private String[] contextChainArrayOnVisible;
    @Nullable
    private String contextChainExtrasOnVisible;
    @Nullable
    private Integer densityDpiOnSuccess;
    @Nullable
    private Long emptyEventTimestampNs;
    @Nullable
    private Integer errorCodeOnFailure;
    @Nullable
    private String errorMessageOnFailure;
    @Nullable
    private String errorStacktraceStringOnFailure;
    @NotNull
    private final ImageRenderingInfra infra;
    @NotNull
    private final List<Pair<String, Long>> intermediateImageSetTimes;
    @Nullable
    private Long msSinceLastNavigationOnVisible;
    private boolean newIntermediateImageSetPointAvailable;
    @Nullable
    private Long releasedEventTimestampNs;
    @Nullable
    private String rootContextNameOnVisible;
    @Nullable
    private String startupStatusOnVisible;
    @Nullable
    private String subSurfaceOnVisible;
    @Nullable
    private String surfaceOnVisible;

    public ImagePerfLoggingState(@NotNull ImageRenderingInfra infra) {
        Intrinsics.checkNotNullParameter(infra, "infra");
        this.infra = infra;
        this.intermediateImageSetTimes = new ArrayList();
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

    @Nullable
    public final Integer getDensityDpiOnSuccess() {
        return this.densityDpiOnSuccess;
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

    @NotNull
    public final ImageRenderingInfra getInfra() {
        return this.infra;
    }

    @NotNull
    public final List<Pair<String, Long>> getIntermediateImageSetTimes() {
        return this.intermediateImageSetTimes;
    }

    @Nullable
    public final Long getMsSinceLastNavigationOnVisible() {
        return this.msSinceLastNavigationOnVisible;
    }

    public final boolean getNewIntermediateImageSetPointAvailable() {
        return this.newIntermediateImageSetPointAvailable;
    }

    @Nullable
    public final Long getReleasedEventTimestampNs() {
        return this.releasedEventTimestampNs;
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

    public final void resetLoggingState$ui_common_release() {
        this.intermediateImageSetTimes.clear();
        this.newIntermediateImageSetPointAvailable = false;
        this.emptyEventTimestampNs = null;
        this.releasedEventTimestampNs = null;
        this.callingClassNameOnVisible = null;
        this.rootContextNameOnVisible = null;
        this.contextChainArrayOnVisible = null;
        this.contextChainExtrasOnVisible = null;
        this.contentIdOnVisible = null;
        this.surfaceOnVisible = null;
        this.subSurfaceOnVisible = null;
        this.msSinceLastNavigationOnVisible = null;
        this.startupStatusOnVisible = null;
        this.errorMessageOnFailure = null;
        this.errorStacktraceStringOnFailure = null;
        this.errorCodeOnFailure = null;
        this.densityDpiOnSuccess = null;
    }

    public final void setCallingClassNameOnVisible(@Nullable String str) {
        this.callingClassNameOnVisible = str;
    }

    public final void setContentIdOnVisible(@Nullable String str) {
        this.contentIdOnVisible = str;
    }

    public final void setContextChainArrayOnVisible(@Nullable String[] strArr) {
        this.contextChainArrayOnVisible = strArr;
    }

    public final void setContextChainExtrasOnVisible(@Nullable String str) {
        this.contextChainExtrasOnVisible = str;
    }

    public final void setDensityDpiOnSuccess(@Nullable Integer num) {
        this.densityDpiOnSuccess = num;
    }

    public final void setEmptyEventTimestampNs(@Nullable Long l10) {
        this.emptyEventTimestampNs = l10;
    }

    public final void setErrorCodeOnFailure(@Nullable Integer num) {
        this.errorCodeOnFailure = num;
    }

    public final void setErrorMessageOnFailure(@Nullable String str) {
        this.errorMessageOnFailure = str;
    }

    public final void setErrorStacktraceStringOnFailure(@Nullable String str) {
        this.errorStacktraceStringOnFailure = str;
    }

    public final void setMsSinceLastNavigationOnVisible(@Nullable Long l10) {
        this.msSinceLastNavigationOnVisible = l10;
    }

    public final void setNewIntermediateImageSetPointAvailable(boolean z10) {
        this.newIntermediateImageSetPointAvailable = z10;
    }

    public final void setReleasedEventTimestampNs(@Nullable Long l10) {
        this.releasedEventTimestampNs = l10;
    }

    public final void setRootContextNameOnVisible(@Nullable String str) {
        this.rootContextNameOnVisible = str;
    }

    public final void setStartupStatusOnVisible(@Nullable String str) {
        this.startupStatusOnVisible = str;
    }

    public final void setSubSurfaceOnVisible(@Nullable String str) {
        this.subSurfaceOnVisible = str;
    }

    public final void setSurfaceOnVisible(@Nullable String str) {
        this.surfaceOnVisible = str;
    }
}
