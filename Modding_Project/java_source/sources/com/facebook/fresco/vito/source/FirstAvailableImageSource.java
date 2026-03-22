package com.facebook.fresco.vito.source;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FirstAvailableImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FirstAvailableImageSource implements ImageSource {
    @NotNull
    private final ImageSource[] imageSources;

    public FirstAvailableImageSource(@NotNull ImageSource[] imageSources) {
        Intrinsics.checkNotNullParameter(imageSources, "imageSources");
        this.imageSources = imageSources;
    }

    public static /* synthetic */ FirstAvailableImageSource copy$default(FirstAvailableImageSource firstAvailableImageSource, ImageSource[] imageSourceArr, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            imageSourceArr = firstAvailableImageSource.imageSources;
        }
        return firstAvailableImageSource.copy(imageSourceArr);
    }

    @NotNull
    public final ImageSource[] component1() {
        return this.imageSources;
    }

    @NotNull
    public final FirstAvailableImageSource copy(@NotNull ImageSource[] imageSources) {
        Intrinsics.checkNotNullParameter(imageSources, "imageSources");
        return new FirstAvailableImageSource(imageSources);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(FirstAvailableImageSource.class, cls)) {
            return false;
        }
        ImageSource[] imageSourceArr = this.imageSources;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.source.FirstAvailableImageSource");
        return Arrays.equals(imageSourceArr, ((FirstAvailableImageSource) obj).imageSources);
    }

    @NotNull
    public final ImageSource[] getImageSources() {
        return this.imageSources;
    }

    public int hashCode() {
        return Arrays.hashCode(this.imageSources);
    }

    @NotNull
    public String toString() {
        String arrays = Arrays.toString(this.imageSources);
        return "FirstAvailableImageSource(imageSources=" + arrays + ")";
    }
}
