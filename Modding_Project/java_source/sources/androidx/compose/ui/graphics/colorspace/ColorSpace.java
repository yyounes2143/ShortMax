package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ColorSpace.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class ColorSpace {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MaxId = 63;
    public static final int MinId = -1;

    /* renamed from: id  reason: collision with root package name */
    private final int f1242id;
    private final long model;
    @NotNull
    private final String name;

    /* compiled from: ColorSpace.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ ColorSpace(String str, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(getClass()), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        if (this.f1242id != colorSpace.f1242id || !Intrinsics.areEqual(this.name, colorSpace.name)) {
            return false;
        }
        return ColorModel.m2200equalsimpl0(this.model, colorSpace.model);
    }

    @NotNull
    public final float[] fromXyz(float f10, float f11, float f12) {
        float[] fArr = new float[ColorModel.m2201getComponentCountimpl(this.model)];
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        return fromXyz(fArr);
    }

    @NotNull
    public abstract float[] fromXyz(@NotNull float[] fArr);

    public final int getComponentCount() {
        return ColorModel.m2201getComponentCountimpl(this.model);
    }

    public final int getId$ui_graphics_release() {
        return this.f1242id;
    }

    public abstract float getMaxValue(int i10);

    public abstract float getMinValue(int i10);

    /* renamed from: getModel-xdoWZVw  reason: not valid java name */
    public final long m2209getModelxdoWZVw() {
        return this.model;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + ColorModel.m2202hashCodeimpl(this.model)) * 31) + this.f1242id;
    }

    public boolean isSrgb() {
        return false;
    }

    public abstract boolean isWideGamut();

    @NotNull
    public String toString() {
        return this.name + " (id=" + this.f1242id + ", model=" + ((Object) ColorModel.m2203toStringimpl(this.model)) + ')';
    }

    @NotNull
    public final float[] toXyz(float f10, float f11, float f12) {
        return toXyz(new float[]{f10, f11, f12});
    }

    @NotNull
    public abstract float[] toXyz(@NotNull float[] fArr);

    public /* synthetic */ ColorSpace(String str, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10);
    }

    private ColorSpace(String str, long j10, int i10) {
        this.name = str;
        this.model = j10;
        this.f1242id = i10;
        if (str.length() == 0) {
            throw new IllegalArgumentException("The name of a color space cannot be null and must contain at least 1 character");
        }
        if (i10 < -1 || i10 > 63) {
            throw new IllegalArgumentException("The id must be between -1 and 63");
        }
    }

    private ColorSpace(String str, long j10) {
        this(str, j10, -1, null);
    }
}
