package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import android.graphics.Bitmap;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationBitmapFrame.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimationBitmapFrame implements Closeable {
    @NotNull
    private final o2.a<Bitmap> bitmap;
    private int frameNumber;

    public AnimationBitmapFrame(int i10, @NotNull o2.a<Bitmap> bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.frameNumber = i10;
        this.bitmap = bitmap;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.bitmap.close();
    }

    @NotNull
    public final o2.a<Bitmap> getBitmap() {
        return this.bitmap;
    }

    public final int getFrameNumber() {
        return this.frameNumber;
    }

    public final boolean isValid() {
        return this.bitmap.u();
    }

    public final boolean isValidFor(int i10) {
        if (this.frameNumber == i10 && this.bitmap.u()) {
            return true;
        }
        return false;
    }

    public final void setFrameNumber(int i10) {
        this.frameNumber = i10;
    }
}
