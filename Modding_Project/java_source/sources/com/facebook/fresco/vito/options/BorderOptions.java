package com.facebook.fresco.vito.options;

import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BorderOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class BorderOptions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @ColorInt
    public final int color;
    public final float padding;
    public final boolean scaleDownInsideBorders;
    public final float width;

    /* compiled from: BorderOptions.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ BorderOptions create$default(Companion companion, int i10, float f10, float f11, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                f11 = 0.0f;
            }
            if ((i11 & 8) != 0) {
                z10 = false;
            }
            return companion.create(i10, f10, f11, z10);
        }

        @NotNull
        public final BorderOptions create(@ColorInt int i10, float f10) {
            return create$default(this, i10, f10, 0.0f, false, 12, null);
        }

        private Companion() {
        }

        @NotNull
        public final BorderOptions create(@ColorInt int i10, float f10, float f11) {
            return create$default(this, i10, f10, f11, false, 8, null);
        }

        @NotNull
        public final BorderOptions create(@ColorInt int i10, float f10, float f11, boolean z10) {
            return new BorderOptions(i10, f10, f11, z10);
        }
    }

    public BorderOptions(@ColorInt int i10, float f10, float f11, boolean z10) {
        this.color = i10;
        this.width = f10;
        this.padding = f11;
        this.scaleDownInsideBorders = z10;
    }

    public static /* synthetic */ BorderOptions copy$default(BorderOptions borderOptions, int i10, float f10, float f11, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = borderOptions.color;
        }
        if ((i11 & 2) != 0) {
            f10 = borderOptions.width;
        }
        if ((i11 & 4) != 0) {
            f11 = borderOptions.padding;
        }
        if ((i11 & 8) != 0) {
            z10 = borderOptions.scaleDownInsideBorders;
        }
        return borderOptions.copy(i10, f10, f11, z10);
    }

    @NotNull
    public static final BorderOptions create(@ColorInt int i10, float f10) {
        return Companion.create(i10, f10);
    }

    public final int component1() {
        return this.color;
    }

    public final float component2() {
        return this.width;
    }

    public final float component3() {
        return this.padding;
    }

    public final boolean component4() {
        return this.scaleDownInsideBorders;
    }

    @NotNull
    public final BorderOptions copy(@ColorInt int i10, float f10, float f11, boolean z10) {
        return new BorderOptions(i10, f10, f11, z10);
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
        if (!Intrinsics.areEqual(BorderOptions.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.options.BorderOptions");
        BorderOptions borderOptions = (BorderOptions) obj;
        if (this.color == borderOptions.color && this.width == borderOptions.width && this.padding == borderOptions.padding && this.scaleDownInsideBorders == borderOptions.scaleDownInsideBorders) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.color * 31) + Float.hashCode(this.width)) * 31) + Float.hashCode(this.padding)) * 31) + Boolean.hashCode(this.scaleDownInsideBorders);
    }

    @NotNull
    public String toString() {
        int i10 = this.color;
        float f10 = this.width;
        float f11 = this.padding;
        boolean z10 = this.scaleDownInsideBorders;
        return "BorderOptions(color=" + i10 + ", width=" + f10 + ", padding=" + f11 + ", scaleDownInsideBorders=" + z10 + ")";
    }

    @NotNull
    public static final BorderOptions create(@ColorInt int i10, float f10, float f11) {
        return Companion.create(i10, f10, f11);
    }

    @NotNull
    public static final BorderOptions create(@ColorInt int i10, float f10, float f11, boolean z10) {
        return Companion.create(i10, f10, f11, z10);
    }

    public /* synthetic */ BorderOptions(int i10, float f10, float f11, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, f10, (i11 & 4) != 0 ? 0.0f : f11, (i11 & 8) != 0 ? false : z10);
    }
}
