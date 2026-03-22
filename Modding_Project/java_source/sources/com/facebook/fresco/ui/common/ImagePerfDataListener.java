package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImagePerfDataListener.kt */
@Metadata
/* loaded from: classes3.dex */
public interface ImagePerfDataListener {
    void onImageLoadStatusUpdated(@NotNull ImagePerfData imagePerfData, @NotNull ImageLoadStatus imageLoadStatus);

    void onImageVisibilityUpdated(@NotNull ImagePerfData imagePerfData, @NotNull VisibilityState visibilityState);
}
