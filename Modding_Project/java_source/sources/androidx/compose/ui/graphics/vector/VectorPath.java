package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageVector.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class VectorPath extends VectorNode {
    @Nullable
    private final Brush fill;
    private final float fillAlpha;
    @NotNull
    private final String name;
    @NotNull
    private final List<PathNode> pathData;
    private final int pathFillType;
    @Nullable
    private final Brush stroke;
    private final float strokeAlpha;
    private final int strokeLineCap;
    private final int strokeLineJoin;
    private final float strokeLineMiter;
    private final float strokeLineWidth;
    private final float trimPathEnd;
    private final float trimPathOffset;
    private final float trimPathStart;

    public /* synthetic */ VectorPath(String str, List list, int i10, Brush brush, float f10, Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, i10, brush, f10, brush2, f11, f12, i11, i12, f13, f14, f15, f16);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(VectorPath.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            VectorPath vectorPath = (VectorPath) obj;
            if (Intrinsics.areEqual(this.name, vectorPath.name) && Intrinsics.areEqual(this.fill, vectorPath.fill) && this.fillAlpha == vectorPath.fillAlpha && Intrinsics.areEqual(this.stroke, vectorPath.stroke) && this.strokeAlpha == vectorPath.strokeAlpha && this.strokeLineWidth == vectorPath.strokeLineWidth && StrokeCap.m2142equalsimpl0(this.strokeLineCap, vectorPath.strokeLineCap) && StrokeJoin.m2152equalsimpl0(this.strokeLineJoin, vectorPath.strokeLineJoin) && this.strokeLineMiter == vectorPath.strokeLineMiter && this.trimPathStart == vectorPath.trimPathStart && this.trimPathEnd == vectorPath.trimPathEnd && this.trimPathOffset == vectorPath.trimPathOffset && PathFillType.m2081equalsimpl0(this.pathFillType, vectorPath.pathFillType) && Intrinsics.areEqual(this.pathData, vectorPath.pathData)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public final Brush getFill() {
        return this.fill;
    }

    public final float getFillAlpha() {
        return this.fillAlpha;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final List<PathNode> getPathData() {
        return this.pathData;
    }

    /* renamed from: getPathFillType-Rg-k1Os  reason: not valid java name */
    public final int m2447getPathFillTypeRgk1Os() {
        return this.pathFillType;
    }

    @Nullable
    public final Brush getStroke() {
        return this.stroke;
    }

    public final float getStrokeAlpha() {
        return this.strokeAlpha;
    }

    /* renamed from: getStrokeLineCap-KaPHkGw  reason: not valid java name */
    public final int m2448getStrokeLineCapKaPHkGw() {
        return this.strokeLineCap;
    }

    /* renamed from: getStrokeLineJoin-LxFBmk8  reason: not valid java name */
    public final int m2449getStrokeLineJoinLxFBmk8() {
        return this.strokeLineJoin;
    }

    public final float getStrokeLineMiter() {
        return this.strokeLineMiter;
    }

    public final float getStrokeLineWidth() {
        return this.strokeLineWidth;
    }

    public final float getTrimPathEnd() {
        return this.trimPathEnd;
    }

    public final float getTrimPathOffset() {
        return this.trimPathOffset;
    }

    public final float getTrimPathStart() {
        return this.trimPathStart;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.name.hashCode() * 31) + this.pathData.hashCode()) * 31;
        Brush brush = this.fill;
        int i11 = 0;
        if (brush != null) {
            i10 = brush.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode2 = (((hashCode + i10) * 31) + Float.hashCode(this.fillAlpha)) * 31;
        Brush brush2 = this.stroke;
        if (brush2 != null) {
            i11 = brush2.hashCode();
        }
        return ((((((((((((((((((hashCode2 + i11) * 31) + Float.hashCode(this.strokeAlpha)) * 31) + Float.hashCode(this.strokeLineWidth)) * 31) + StrokeCap.m2143hashCodeimpl(this.strokeLineCap)) * 31) + StrokeJoin.m2153hashCodeimpl(this.strokeLineJoin)) * 31) + Float.hashCode(this.strokeLineMiter)) * 31) + Float.hashCode(this.trimPathStart)) * 31) + Float.hashCode(this.trimPathEnd)) * 31) + Float.hashCode(this.trimPathOffset)) * 31) + PathFillType.m2082hashCodeimpl(this.pathFillType);
    }

    public /* synthetic */ VectorPath(String str, List list, int i10, Brush brush, float f10, Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? "" : str, list, i10, (i13 & 8) != 0 ? null : brush, (i13 & 16) != 0 ? 1.0f : f10, (i13 & 32) != 0 ? null : brush2, (i13 & 64) != 0 ? 1.0f : f11, (i13 & 128) != 0 ? 0.0f : f12, (i13 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : i11, (i13 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : i12, (i13 & 1024) != 0 ? 4.0f : f13, (i13 & 2048) != 0 ? 0.0f : f14, (i13 & 4096) != 0 ? 1.0f : f15, (i13 & 8192) != 0 ? 0.0f : f16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private VectorPath(String str, List<? extends PathNode> list, int i10, Brush brush, float f10, Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16) {
        super(null);
        this.name = str;
        this.pathData = list;
        this.pathFillType = i10;
        this.fill = brush;
        this.fillAlpha = f10;
        this.stroke = brush2;
        this.strokeAlpha = f11;
        this.strokeLineWidth = f12;
        this.strokeLineCap = i11;
        this.strokeLineJoin = i12;
        this.strokeLineMiter = f13;
        this.trimPathStart = f14;
        this.trimPathEnd = f15;
        this.trimPathOffset = f16;
    }
}
