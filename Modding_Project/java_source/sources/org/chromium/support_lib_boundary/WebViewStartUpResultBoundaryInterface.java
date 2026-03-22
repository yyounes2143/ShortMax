package org.chromium.support_lib_boundary;

import java.util.List;
/* loaded from: classes8.dex */
public interface WebViewStartUpResultBoundaryInterface {
    List<Throwable> getAsyncStartUpLocations();

    List<Throwable> getBlockingStartUpLocations();

    Long getMaxTimePerTaskInUiThreadMillis();

    Long getTotalTimeInUiThreadMillis();
}
