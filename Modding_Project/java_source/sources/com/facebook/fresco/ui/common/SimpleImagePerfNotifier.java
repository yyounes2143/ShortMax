package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SimpleImagePerfNotifier.kt */
@Metadata
/* loaded from: classes3.dex */
public final class SimpleImagePerfNotifier implements ImagePerfNotifier {
    @NotNull
    private final ImagePerfDataListener imagePerfDataListener;

    public SimpleImagePerfNotifier(@NotNull ImagePerfDataListener imagePerfDataListener) {
        Intrinsics.checkNotNullParameter(imagePerfDataListener, "imagePerfDataListener");
        this.imagePerfDataListener = imagePerfDataListener;
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyStatusUpdated(@NotNull ImagePerfState state, @NotNull ImageLoadStatus imageLoadStatus) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(imageLoadStatus, "imageLoadStatus");
        this.imagePerfDataListener.onImageLoadStatusUpdated(state.snapshot(), imageLoadStatus);
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyVisibilityUpdated(@NotNull ImagePerfState state, @NotNull VisibilityState visibilityState) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(visibilityState, "visibilityState");
        this.imagePerfDataListener.onImageVisibilityUpdated(state.snapshot(), visibilityState);
    }
}
