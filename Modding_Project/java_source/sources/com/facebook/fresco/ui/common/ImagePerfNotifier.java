package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImagePerfNotifier.kt */
@Metadata
/* loaded from: classes3.dex */
public interface ImagePerfNotifier {
    void notifyStatusUpdated(@NotNull ImagePerfState imagePerfState, @NotNull ImageLoadStatus imageLoadStatus);

    void notifyVisibilityUpdated(@NotNull ImagePerfState imagePerfState, @NotNull VisibilityState visibilityState);
}
