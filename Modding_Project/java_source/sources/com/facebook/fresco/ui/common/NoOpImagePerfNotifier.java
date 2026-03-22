package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NoOpImagePerfNotifier.kt */
@Metadata
/* loaded from: classes3.dex */
public final class NoOpImagePerfNotifier implements ImagePerfNotifier {
    @NotNull
    public static final NoOpImagePerfNotifier INSTANCE = new NoOpImagePerfNotifier();

    private NoOpImagePerfNotifier() {
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyStatusUpdated(@NotNull ImagePerfState state, @NotNull ImageLoadStatus imageLoadStatus) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(imageLoadStatus, "imageLoadStatus");
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyVisibilityUpdated(@NotNull ImagePerfState state, @NotNull VisibilityState visibilityState) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(visibilityState, "visibilityState");
    }
}
