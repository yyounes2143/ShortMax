package org.chromium.support_lib_boundary;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes8.dex */
public interface WebViewStartUpConfigBoundaryInterface {
    Executor getBackgroundExecutor();

    Set<String> getProfileNamesToLoad();

    boolean shouldRunUiThreadStartUpTasks();
}
