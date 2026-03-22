package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImagePerfDataNotifier.kt */
@Metadata
/* loaded from: classes3.dex */
public class ImagePerfDataNotifier implements ImagePerfNotifier {
    @NotNull
    private final ImagePerfDataListener perfDataListener;

    public ImagePerfDataNotifier(@NotNull ImagePerfDataListener perfDataListener) {
        Intrinsics.checkNotNullParameter(perfDataListener, "perfDataListener");
        this.perfDataListener = perfDataListener;
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyStatusUpdated(@NotNull ImagePerfState state, @NotNull ImageLoadStatus imageLoadStatus) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(imageLoadStatus, "imageLoadStatus");
        this.perfDataListener.onImageLoadStatusUpdated(state.snapshot(), imageLoadStatus);
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyVisibilityUpdated(@NotNull ImagePerfState state, @NotNull VisibilityState visibilityState) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(visibilityState, "visibilityState");
        this.perfDataListener.onImageVisibilityUpdated(state.snapshot(), visibilityState);
    }
}
