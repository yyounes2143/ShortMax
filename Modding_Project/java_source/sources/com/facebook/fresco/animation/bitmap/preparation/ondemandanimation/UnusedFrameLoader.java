package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimationLoaderFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class UnusedFrameLoader {
    @NotNull
    private final FrameLoader frameLoader;
    @NotNull
    private final Date insertedTime;

    public UnusedFrameLoader(@NotNull FrameLoader frameLoader, @NotNull Date insertedTime) {
        Intrinsics.checkNotNullParameter(frameLoader, "frameLoader");
        Intrinsics.checkNotNullParameter(insertedTime, "insertedTime");
        this.frameLoader = frameLoader;
        this.insertedTime = insertedTime;
    }

    @NotNull
    public final FrameLoader getFrameLoader() {
        return this.frameLoader;
    }

    @NotNull
    public final Date getInsertedTime() {
        return this.insertedTime;
    }
}
