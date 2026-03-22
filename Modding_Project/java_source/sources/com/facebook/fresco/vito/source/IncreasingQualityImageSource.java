package com.facebook.fresco.vito.source;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IncreasingQualityImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public final class IncreasingQualityImageSource implements ImageSource {
    @Nullable
    private final Map<String, Object> extras;
    @NotNull
    private final ImageSource highResSource;
    @NotNull
    private final ImageSource lowResSource;

    public IncreasingQualityImageSource(@NotNull ImageSource lowResSource, @NotNull ImageSource highResSource, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(lowResSource, "lowResSource");
        Intrinsics.checkNotNullParameter(highResSource, "highResSource");
        this.lowResSource = lowResSource;
        this.highResSource = highResSource;
        this.extras = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ IncreasingQualityImageSource copy$default(IncreasingQualityImageSource increasingQualityImageSource, ImageSource imageSource, ImageSource imageSource2, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            imageSource = increasingQualityImageSource.lowResSource;
        }
        if ((i10 & 2) != 0) {
            imageSource2 = increasingQualityImageSource.highResSource;
        }
        if ((i10 & 4) != 0) {
            map = increasingQualityImageSource.extras;
        }
        return increasingQualityImageSource.copy(imageSource, imageSource2, map);
    }

    @NotNull
    public final ImageSource component1() {
        return this.lowResSource;
    }

    @NotNull
    public final ImageSource component2() {
        return this.highResSource;
    }

    @Nullable
    public final Map<String, Object> component3() {
        return this.extras;
    }

    @NotNull
    public final IncreasingQualityImageSource copy(@NotNull ImageSource lowResSource, @NotNull ImageSource highResSource, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(lowResSource, "lowResSource");
        Intrinsics.checkNotNullParameter(highResSource, "highResSource");
        return new IncreasingQualityImageSource(lowResSource, highResSource, map);
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
        if (!Intrinsics.areEqual(IncreasingQualityImageSource.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.source.IncreasingQualityImageSource");
        IncreasingQualityImageSource increasingQualityImageSource = (IncreasingQualityImageSource) obj;
        if (Intrinsics.areEqual(this.lowResSource, increasingQualityImageSource.lowResSource) && Intrinsics.areEqual(this.highResSource, increasingQualityImageSource.highResSource) && Intrinsics.areEqual(this.extras, increasingQualityImageSource.extras)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object getExtra(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, Object> map = this.extras;
        if (map != null) {
            return map.get(key);
        }
        return null;
    }

    @Nullable
    public final Map<String, Object> getExtras() {
        return this.extras;
    }

    @NotNull
    public final ImageSource getHighResSource() {
        return this.highResSource;
    }

    @NotNull
    public final ImageSource getLowResSource() {
        return this.lowResSource;
    }

    @Nullable
    public final String getStringExtra(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object extra = getExtra(key);
        if (extra instanceof String) {
            return (String) extra;
        }
        return null;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.lowResSource.hashCode() * 31) + this.highResSource.hashCode()) * 31;
        Map<String, Object> map = this.extras;
        if (map != null) {
            i10 = map.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        ImageSource imageSource = this.lowResSource;
        ImageSource imageSource2 = this.highResSource;
        Map<String, Object> map = this.extras;
        return "IncreasingQualityImageSource(lowResSource=" + imageSource + ", highResSource=" + imageSource2 + ", extras=" + map + ")";
    }

    public /* synthetic */ IncreasingQualityImageSource(ImageSource imageSource, ImageSource imageSource2, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageSource, imageSource2, (i10 & 4) != 0 ? null : map);
    }
}
