package com.ss.ttvideoengine.preRender;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.source.Source;
/* loaded from: classes6.dex */
public interface PreRenderAlgorithm {
    int getAutoRange();

    void shouldStartPreRender(@NonNull Source source, @NonNull PreRenderTriggerListener preRenderTriggerListener);

    void stop();
}
