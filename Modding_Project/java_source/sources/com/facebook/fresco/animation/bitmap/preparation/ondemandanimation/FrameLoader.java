package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import androidx.annotation.UiThread;
import com.facebook.fresco.animation.backend.AnimationInformation;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: FrameLoader.kt */
@Metadata
/* loaded from: classes3.dex */
public interface FrameLoader {
    void clear();

    void compressToFps(int i10);

    @NotNull
    AnimationInformation getAnimationInformation();

    @UiThread
    @NotNull
    FrameResult getFrame(int i10, int i11, int i12);

    void onStop();

    @UiThread
    void prepareFrames(int i10, int i11, @NotNull Function0<Unit> function0);

    /* compiled from: FrameLoader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onStop(@NotNull FrameLoader frameLoader) {
        }

        public static void compressToFps(@NotNull FrameLoader frameLoader, int i10) {
        }
    }
}
