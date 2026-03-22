package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PathNode.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public abstract class PathNode {
    private final boolean isCurve;
    private final boolean isQuad;

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class ArcTo extends PathNode {
        private final float arcStartX;
        private final float arcStartY;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        public ArcTo(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            super(false, false, 3, null);
            this.horizontalEllipseRadius = f10;
            this.verticalEllipseRadius = f11;
            this.theta = f12;
            this.isMoreThanHalf = z10;
            this.isPositiveArc = z11;
            this.arcStartX = f13;
            this.arcStartY = f14;
        }

        public static /* synthetic */ ArcTo copy$default(ArcTo arcTo, float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = arcTo.horizontalEllipseRadius;
            }
            if ((i10 & 2) != 0) {
                f11 = arcTo.verticalEllipseRadius;
            }
            float f15 = f11;
            if ((i10 & 4) != 0) {
                f12 = arcTo.theta;
            }
            float f16 = f12;
            if ((i10 & 8) != 0) {
                z10 = arcTo.isMoreThanHalf;
            }
            boolean z12 = z10;
            if ((i10 & 16) != 0) {
                z11 = arcTo.isPositiveArc;
            }
            boolean z13 = z11;
            if ((i10 & 32) != 0) {
                f13 = arcTo.arcStartX;
            }
            float f17 = f13;
            if ((i10 & 64) != 0) {
                f14 = arcTo.arcStartY;
            }
            return arcTo.copy(f10, f15, f16, z12, z13, f17, f14);
        }

        public final float component1() {
            return this.horizontalEllipseRadius;
        }

        public final float component2() {
            return this.verticalEllipseRadius;
        }

        public final float component3() {
            return this.theta;
        }

        public final boolean component4() {
            return this.isMoreThanHalf;
        }

        public final boolean component5() {
            return this.isPositiveArc;
        }

        public final float component6() {
            return this.arcStartX;
        }

        public final float component7() {
            return this.arcStartY;
        }

        @NotNull
        public final ArcTo copy(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            return new ArcTo(f10, f11, f12, z10, z11, f13, f14);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArcTo)) {
                return false;
            }
            ArcTo arcTo = (ArcTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.horizontalEllipseRadius), (Object) Float.valueOf(arcTo.horizontalEllipseRadius)) && Intrinsics.areEqual((Object) Float.valueOf(this.verticalEllipseRadius), (Object) Float.valueOf(arcTo.verticalEllipseRadius)) && Intrinsics.areEqual((Object) Float.valueOf(this.theta), (Object) Float.valueOf(arcTo.theta)) && this.isMoreThanHalf == arcTo.isMoreThanHalf && this.isPositiveArc == arcTo.isPositiveArc && Intrinsics.areEqual((Object) Float.valueOf(this.arcStartX), (Object) Float.valueOf(arcTo.arcStartX)) && Intrinsics.areEqual((Object) Float.valueOf(this.arcStartY), (Object) Float.valueOf(arcTo.arcStartY))) {
                return true;
            }
            return false;
        }

        public final float getArcStartX() {
            return this.arcStartX;
        }

        public final float getArcStartY() {
            return this.arcStartY;
        }

        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        public final float getTheta() {
            return this.theta;
        }

        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((Float.hashCode(this.horizontalEllipseRadius) * 31) + Float.hashCode(this.verticalEllipseRadius)) * 31) + Float.hashCode(this.theta)) * 31;
            boolean z10 = this.isMoreThanHalf;
            int i10 = 1;
            int i11 = z10;
            if (z10 != 0) {
                i11 = 1;
            }
            int i12 = (hashCode + i11) * 31;
            boolean z11 = this.isPositiveArc;
            if (!z11) {
                i10 = z11 ? 1 : 0;
            }
            return ((((i12 + i10) * 31) + Float.hashCode(this.arcStartX)) * 31) + Float.hashCode(this.arcStartY);
        }

        public final boolean isMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        public final boolean isPositiveArc() {
            return this.isPositiveArc;
        }

        @NotNull
        public String toString() {
            return "ArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartX=" + this.arcStartX + ", arcStartY=" + this.arcStartY + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Close extends PathNode {
        @NotNull
        public static final Close INSTANCE = new Close();

        private Close() {
            super(false, false, 3, null);
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class CurveTo extends PathNode {

        /* renamed from: x1  reason: collision with root package name */
        private final float f1251x1;

        /* renamed from: x2  reason: collision with root package name */
        private final float f1252x2;

        /* renamed from: x3  reason: collision with root package name */
        private final float f1253x3;

        /* renamed from: y1  reason: collision with root package name */
        private final float f1254y1;

        /* renamed from: y2  reason: collision with root package name */
        private final float f1255y2;

        /* renamed from: y3  reason: collision with root package name */
        private final float f1256y3;

        public CurveTo(float f10, float f11, float f12, float f13, float f14, float f15) {
            super(true, false, 2, null);
            this.f1251x1 = f10;
            this.f1254y1 = f11;
            this.f1252x2 = f12;
            this.f1255y2 = f13;
            this.f1253x3 = f14;
            this.f1256y3 = f15;
        }

        public static /* synthetic */ CurveTo copy$default(CurveTo curveTo, float f10, float f11, float f12, float f13, float f14, float f15, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = curveTo.f1251x1;
            }
            if ((i10 & 2) != 0) {
                f11 = curveTo.f1254y1;
            }
            float f16 = f11;
            if ((i10 & 4) != 0) {
                f12 = curveTo.f1252x2;
            }
            float f17 = f12;
            if ((i10 & 8) != 0) {
                f13 = curveTo.f1255y2;
            }
            float f18 = f13;
            if ((i10 & 16) != 0) {
                f14 = curveTo.f1253x3;
            }
            float f19 = f14;
            if ((i10 & 32) != 0) {
                f15 = curveTo.f1256y3;
            }
            return curveTo.copy(f10, f16, f17, f18, f19, f15);
        }

        public final float component1() {
            return this.f1251x1;
        }

        public final float component2() {
            return this.f1254y1;
        }

        public final float component3() {
            return this.f1252x2;
        }

        public final float component4() {
            return this.f1255y2;
        }

        public final float component5() {
            return this.f1253x3;
        }

        public final float component6() {
            return this.f1256y3;
        }

        @NotNull
        public final CurveTo copy(float f10, float f11, float f12, float f13, float f14, float f15) {
            return new CurveTo(f10, f11, f12, f13, f14, f15);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CurveTo)) {
                return false;
            }
            CurveTo curveTo = (CurveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1251x1), (Object) Float.valueOf(curveTo.f1251x1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1254y1), (Object) Float.valueOf(curveTo.f1254y1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1252x2), (Object) Float.valueOf(curveTo.f1252x2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1255y2), (Object) Float.valueOf(curveTo.f1255y2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1253x3), (Object) Float.valueOf(curveTo.f1253x3)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1256y3), (Object) Float.valueOf(curveTo.f1256y3))) {
                return true;
            }
            return false;
        }

        public final float getX1() {
            return this.f1251x1;
        }

        public final float getX2() {
            return this.f1252x2;
        }

        public final float getX3() {
            return this.f1253x3;
        }

        public final float getY1() {
            return this.f1254y1;
        }

        public final float getY2() {
            return this.f1255y2;
        }

        public final float getY3() {
            return this.f1256y3;
        }

        public int hashCode() {
            return (((((((((Float.hashCode(this.f1251x1) * 31) + Float.hashCode(this.f1254y1)) * 31) + Float.hashCode(this.f1252x2)) * 31) + Float.hashCode(this.f1255y2)) * 31) + Float.hashCode(this.f1253x3)) * 31) + Float.hashCode(this.f1256y3);
        }

        @NotNull
        public String toString() {
            return "CurveTo(x1=" + this.f1251x1 + ", y1=" + this.f1254y1 + ", x2=" + this.f1252x2 + ", y2=" + this.f1255y2 + ", x3=" + this.f1253x3 + ", y3=" + this.f1256y3 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class HorizontalTo extends PathNode {

        /* renamed from: x  reason: collision with root package name */
        private final float f1257x;

        public HorizontalTo(float f10) {
            super(false, false, 3, null);
            this.f1257x = f10;
        }

        public static /* synthetic */ HorizontalTo copy$default(HorizontalTo horizontalTo, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = horizontalTo.f1257x;
            }
            return horizontalTo.copy(f10);
        }

        public final float component1() {
            return this.f1257x;
        }

        @NotNull
        public final HorizontalTo copy(float f10) {
            return new HorizontalTo(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof HorizontalTo) && Intrinsics.areEqual((Object) Float.valueOf(this.f1257x), (Object) Float.valueOf(((HorizontalTo) obj).f1257x))) {
                return true;
            }
            return false;
        }

        public final float getX() {
            return this.f1257x;
        }

        public int hashCode() {
            return Float.hashCode(this.f1257x);
        }

        @NotNull
        public String toString() {
            return "HorizontalTo(x=" + this.f1257x + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class LineTo extends PathNode {

        /* renamed from: x  reason: collision with root package name */
        private final float f1258x;

        /* renamed from: y  reason: collision with root package name */
        private final float f1259y;

        public LineTo(float f10, float f11) {
            super(false, false, 3, null);
            this.f1258x = f10;
            this.f1259y = f11;
        }

        public static /* synthetic */ LineTo copy$default(LineTo lineTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = lineTo.f1258x;
            }
            if ((i10 & 2) != 0) {
                f11 = lineTo.f1259y;
            }
            return lineTo.copy(f10, f11);
        }

        public final float component1() {
            return this.f1258x;
        }

        public final float component2() {
            return this.f1259y;
        }

        @NotNull
        public final LineTo copy(float f10, float f11) {
            return new LineTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LineTo)) {
                return false;
            }
            LineTo lineTo = (LineTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1258x), (Object) Float.valueOf(lineTo.f1258x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1259y), (Object) Float.valueOf(lineTo.f1259y))) {
                return true;
            }
            return false;
        }

        public final float getX() {
            return this.f1258x;
        }

        public final float getY() {
            return this.f1259y;
        }

        public int hashCode() {
            return (Float.hashCode(this.f1258x) * 31) + Float.hashCode(this.f1259y);
        }

        @NotNull
        public String toString() {
            return "LineTo(x=" + this.f1258x + ", y=" + this.f1259y + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class MoveTo extends PathNode {

        /* renamed from: x  reason: collision with root package name */
        private final float f1260x;

        /* renamed from: y  reason: collision with root package name */
        private final float f1261y;

        public MoveTo(float f10, float f11) {
            super(false, false, 3, null);
            this.f1260x = f10;
            this.f1261y = f11;
        }

        public static /* synthetic */ MoveTo copy$default(MoveTo moveTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = moveTo.f1260x;
            }
            if ((i10 & 2) != 0) {
                f11 = moveTo.f1261y;
            }
            return moveTo.copy(f10, f11);
        }

        public final float component1() {
            return this.f1260x;
        }

        public final float component2() {
            return this.f1261y;
        }

        @NotNull
        public final MoveTo copy(float f10, float f11) {
            return new MoveTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MoveTo)) {
                return false;
            }
            MoveTo moveTo = (MoveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1260x), (Object) Float.valueOf(moveTo.f1260x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1261y), (Object) Float.valueOf(moveTo.f1261y))) {
                return true;
            }
            return false;
        }

        public final float getX() {
            return this.f1260x;
        }

        public final float getY() {
            return this.f1261y;
        }

        public int hashCode() {
            return (Float.hashCode(this.f1260x) * 31) + Float.hashCode(this.f1261y);
        }

        @NotNull
        public String toString() {
            return "MoveTo(x=" + this.f1260x + ", y=" + this.f1261y + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class QuadTo extends PathNode {

        /* renamed from: x1  reason: collision with root package name */
        private final float f1262x1;

        /* renamed from: x2  reason: collision with root package name */
        private final float f1263x2;

        /* renamed from: y1  reason: collision with root package name */
        private final float f1264y1;

        /* renamed from: y2  reason: collision with root package name */
        private final float f1265y2;

        public QuadTo(float f10, float f11, float f12, float f13) {
            super(false, true, 1, null);
            this.f1262x1 = f10;
            this.f1264y1 = f11;
            this.f1263x2 = f12;
            this.f1265y2 = f13;
        }

        public static /* synthetic */ QuadTo copy$default(QuadTo quadTo, float f10, float f11, float f12, float f13, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = quadTo.f1262x1;
            }
            if ((i10 & 2) != 0) {
                f11 = quadTo.f1264y1;
            }
            if ((i10 & 4) != 0) {
                f12 = quadTo.f1263x2;
            }
            if ((i10 & 8) != 0) {
                f13 = quadTo.f1265y2;
            }
            return quadTo.copy(f10, f11, f12, f13);
        }

        public final float component1() {
            return this.f1262x1;
        }

        public final float component2() {
            return this.f1264y1;
        }

        public final float component3() {
            return this.f1263x2;
        }

        public final float component4() {
            return this.f1265y2;
        }

        @NotNull
        public final QuadTo copy(float f10, float f11, float f12, float f13) {
            return new QuadTo(f10, f11, f12, f13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QuadTo)) {
                return false;
            }
            QuadTo quadTo = (QuadTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1262x1), (Object) Float.valueOf(quadTo.f1262x1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1264y1), (Object) Float.valueOf(quadTo.f1264y1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1263x2), (Object) Float.valueOf(quadTo.f1263x2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1265y2), (Object) Float.valueOf(quadTo.f1265y2))) {
                return true;
            }
            return false;
        }

        public final float getX1() {
            return this.f1262x1;
        }

        public final float getX2() {
            return this.f1263x2;
        }

        public final float getY1() {
            return this.f1264y1;
        }

        public final float getY2() {
            return this.f1265y2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.f1262x1) * 31) + Float.hashCode(this.f1264y1)) * 31) + Float.hashCode(this.f1263x2)) * 31) + Float.hashCode(this.f1265y2);
        }

        @NotNull
        public String toString() {
            return "QuadTo(x1=" + this.f1262x1 + ", y1=" + this.f1264y1 + ", x2=" + this.f1263x2 + ", y2=" + this.f1265y2 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class ReflectiveCurveTo extends PathNode {

        /* renamed from: x1  reason: collision with root package name */
        private final float f1266x1;

        /* renamed from: x2  reason: collision with root package name */
        private final float f1267x2;

        /* renamed from: y1  reason: collision with root package name */
        private final float f1268y1;

        /* renamed from: y2  reason: collision with root package name */
        private final float f1269y2;

        public ReflectiveCurveTo(float f10, float f11, float f12, float f13) {
            super(true, false, 2, null);
            this.f1266x1 = f10;
            this.f1268y1 = f11;
            this.f1267x2 = f12;
            this.f1269y2 = f13;
        }

        public static /* synthetic */ ReflectiveCurveTo copy$default(ReflectiveCurveTo reflectiveCurveTo, float f10, float f11, float f12, float f13, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = reflectiveCurveTo.f1266x1;
            }
            if ((i10 & 2) != 0) {
                f11 = reflectiveCurveTo.f1268y1;
            }
            if ((i10 & 4) != 0) {
                f12 = reflectiveCurveTo.f1267x2;
            }
            if ((i10 & 8) != 0) {
                f13 = reflectiveCurveTo.f1269y2;
            }
            return reflectiveCurveTo.copy(f10, f11, f12, f13);
        }

        public final float component1() {
            return this.f1266x1;
        }

        public final float component2() {
            return this.f1268y1;
        }

        public final float component3() {
            return this.f1267x2;
        }

        public final float component4() {
            return this.f1269y2;
        }

        @NotNull
        public final ReflectiveCurveTo copy(float f10, float f11, float f12, float f13) {
            return new ReflectiveCurveTo(f10, f11, f12, f13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveCurveTo)) {
                return false;
            }
            ReflectiveCurveTo reflectiveCurveTo = (ReflectiveCurveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1266x1), (Object) Float.valueOf(reflectiveCurveTo.f1266x1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1268y1), (Object) Float.valueOf(reflectiveCurveTo.f1268y1)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1267x2), (Object) Float.valueOf(reflectiveCurveTo.f1267x2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1269y2), (Object) Float.valueOf(reflectiveCurveTo.f1269y2))) {
                return true;
            }
            return false;
        }

        public final float getX1() {
            return this.f1266x1;
        }

        public final float getX2() {
            return this.f1267x2;
        }

        public final float getY1() {
            return this.f1268y1;
        }

        public final float getY2() {
            return this.f1269y2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.f1266x1) * 31) + Float.hashCode(this.f1268y1)) * 31) + Float.hashCode(this.f1267x2)) * 31) + Float.hashCode(this.f1269y2);
        }

        @NotNull
        public String toString() {
            return "ReflectiveCurveTo(x1=" + this.f1266x1 + ", y1=" + this.f1268y1 + ", x2=" + this.f1267x2 + ", y2=" + this.f1269y2 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class ReflectiveQuadTo extends PathNode {

        /* renamed from: x  reason: collision with root package name */
        private final float f1270x;

        /* renamed from: y  reason: collision with root package name */
        private final float f1271y;

        public ReflectiveQuadTo(float f10, float f11) {
            super(false, true, 1, null);
            this.f1270x = f10;
            this.f1271y = f11;
        }

        public static /* synthetic */ ReflectiveQuadTo copy$default(ReflectiveQuadTo reflectiveQuadTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = reflectiveQuadTo.f1270x;
            }
            if ((i10 & 2) != 0) {
                f11 = reflectiveQuadTo.f1271y;
            }
            return reflectiveQuadTo.copy(f10, f11);
        }

        public final float component1() {
            return this.f1270x;
        }

        public final float component2() {
            return this.f1271y;
        }

        @NotNull
        public final ReflectiveQuadTo copy(float f10, float f11) {
            return new ReflectiveQuadTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveQuadTo)) {
                return false;
            }
            ReflectiveQuadTo reflectiveQuadTo = (ReflectiveQuadTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1270x), (Object) Float.valueOf(reflectiveQuadTo.f1270x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1271y), (Object) Float.valueOf(reflectiveQuadTo.f1271y))) {
                return true;
            }
            return false;
        }

        public final float getX() {
            return this.f1270x;
        }

        public final float getY() {
            return this.f1271y;
        }

        public int hashCode() {
            return (Float.hashCode(this.f1270x) * 31) + Float.hashCode(this.f1271y);
        }

        @NotNull
        public String toString() {
            return "ReflectiveQuadTo(x=" + this.f1270x + ", y=" + this.f1271y + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeArcTo extends PathNode {
        private final float arcStartDx;
        private final float arcStartDy;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        public RelativeArcTo(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            super(false, false, 3, null);
            this.horizontalEllipseRadius = f10;
            this.verticalEllipseRadius = f11;
            this.theta = f12;
            this.isMoreThanHalf = z10;
            this.isPositiveArc = z11;
            this.arcStartDx = f13;
            this.arcStartDy = f14;
        }

        public static /* synthetic */ RelativeArcTo copy$default(RelativeArcTo relativeArcTo, float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeArcTo.horizontalEllipseRadius;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeArcTo.verticalEllipseRadius;
            }
            float f15 = f11;
            if ((i10 & 4) != 0) {
                f12 = relativeArcTo.theta;
            }
            float f16 = f12;
            if ((i10 & 8) != 0) {
                z10 = relativeArcTo.isMoreThanHalf;
            }
            boolean z12 = z10;
            if ((i10 & 16) != 0) {
                z11 = relativeArcTo.isPositiveArc;
            }
            boolean z13 = z11;
            if ((i10 & 32) != 0) {
                f13 = relativeArcTo.arcStartDx;
            }
            float f17 = f13;
            if ((i10 & 64) != 0) {
                f14 = relativeArcTo.arcStartDy;
            }
            return relativeArcTo.copy(f10, f15, f16, z12, z13, f17, f14);
        }

        public final float component1() {
            return this.horizontalEllipseRadius;
        }

        public final float component2() {
            return this.verticalEllipseRadius;
        }

        public final float component3() {
            return this.theta;
        }

        public final boolean component4() {
            return this.isMoreThanHalf;
        }

        public final boolean component5() {
            return this.isPositiveArc;
        }

        public final float component6() {
            return this.arcStartDx;
        }

        public final float component7() {
            return this.arcStartDy;
        }

        @NotNull
        public final RelativeArcTo copy(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            return new RelativeArcTo(f10, f11, f12, z10, z11, f13, f14);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeArcTo)) {
                return false;
            }
            RelativeArcTo relativeArcTo = (RelativeArcTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.horizontalEllipseRadius), (Object) Float.valueOf(relativeArcTo.horizontalEllipseRadius)) && Intrinsics.areEqual((Object) Float.valueOf(this.verticalEllipseRadius), (Object) Float.valueOf(relativeArcTo.verticalEllipseRadius)) && Intrinsics.areEqual((Object) Float.valueOf(this.theta), (Object) Float.valueOf(relativeArcTo.theta)) && this.isMoreThanHalf == relativeArcTo.isMoreThanHalf && this.isPositiveArc == relativeArcTo.isPositiveArc && Intrinsics.areEqual((Object) Float.valueOf(this.arcStartDx), (Object) Float.valueOf(relativeArcTo.arcStartDx)) && Intrinsics.areEqual((Object) Float.valueOf(this.arcStartDy), (Object) Float.valueOf(relativeArcTo.arcStartDy))) {
                return true;
            }
            return false;
        }

        public final float getArcStartDx() {
            return this.arcStartDx;
        }

        public final float getArcStartDy() {
            return this.arcStartDy;
        }

        public final float getHorizontalEllipseRadius() {
            return this.horizontalEllipseRadius;
        }

        public final float getTheta() {
            return this.theta;
        }

        public final float getVerticalEllipseRadius() {
            return this.verticalEllipseRadius;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((Float.hashCode(this.horizontalEllipseRadius) * 31) + Float.hashCode(this.verticalEllipseRadius)) * 31) + Float.hashCode(this.theta)) * 31;
            boolean z10 = this.isMoreThanHalf;
            int i10 = 1;
            int i11 = z10;
            if (z10 != 0) {
                i11 = 1;
            }
            int i12 = (hashCode + i11) * 31;
            boolean z11 = this.isPositiveArc;
            if (!z11) {
                i10 = z11 ? 1 : 0;
            }
            return ((((i12 + i10) * 31) + Float.hashCode(this.arcStartDx)) * 31) + Float.hashCode(this.arcStartDy);
        }

        public final boolean isMoreThanHalf() {
            return this.isMoreThanHalf;
        }

        public final boolean isPositiveArc() {
            return this.isPositiveArc;
        }

        @NotNull
        public String toString() {
            return "RelativeArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartDx=" + this.arcStartDx + ", arcStartDy=" + this.arcStartDy + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dx3;
        private final float dy1;
        private final float dy2;
        private final float dy3;

        public RelativeCurveTo(float f10, float f11, float f12, float f13, float f14, float f15) {
            super(true, false, 2, null);
            this.dx1 = f10;
            this.dy1 = f11;
            this.dx2 = f12;
            this.dy2 = f13;
            this.dx3 = f14;
            this.dy3 = f15;
        }

        public static /* synthetic */ RelativeCurveTo copy$default(RelativeCurveTo relativeCurveTo, float f10, float f11, float f12, float f13, float f14, float f15, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeCurveTo.dx1;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeCurveTo.dy1;
            }
            float f16 = f11;
            if ((i10 & 4) != 0) {
                f12 = relativeCurveTo.dx2;
            }
            float f17 = f12;
            if ((i10 & 8) != 0) {
                f13 = relativeCurveTo.dy2;
            }
            float f18 = f13;
            if ((i10 & 16) != 0) {
                f14 = relativeCurveTo.dx3;
            }
            float f19 = f14;
            if ((i10 & 32) != 0) {
                f15 = relativeCurveTo.dy3;
            }
            return relativeCurveTo.copy(f10, f16, f17, f18, f19, f15);
        }

        public final float component1() {
            return this.dx1;
        }

        public final float component2() {
            return this.dy1;
        }

        public final float component3() {
            return this.dx2;
        }

        public final float component4() {
            return this.dy2;
        }

        public final float component5() {
            return this.dx3;
        }

        public final float component6() {
            return this.dy3;
        }

        @NotNull
        public final RelativeCurveTo copy(float f10, float f11, float f12, float f13, float f14, float f15) {
            return new RelativeCurveTo(f10, f11, f12, f13, f14, f15);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeCurveTo)) {
                return false;
            }
            RelativeCurveTo relativeCurveTo = (RelativeCurveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx1), (Object) Float.valueOf(relativeCurveTo.dx1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy1), (Object) Float.valueOf(relativeCurveTo.dy1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dx2), (Object) Float.valueOf(relativeCurveTo.dx2)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy2), (Object) Float.valueOf(relativeCurveTo.dy2)) && Intrinsics.areEqual((Object) Float.valueOf(this.dx3), (Object) Float.valueOf(relativeCurveTo.dx3)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy3), (Object) Float.valueOf(relativeCurveTo.dy3))) {
                return true;
            }
            return false;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDx3() {
            return this.dx3;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public final float getDy3() {
            return this.dy3;
        }

        public int hashCode() {
            return (((((((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2)) * 31) + Float.hashCode(this.dx3)) * 31) + Float.hashCode(this.dy3);
        }

        @NotNull
        public String toString() {
            return "RelativeCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ", dx3=" + this.dx3 + ", dy3=" + this.dy3 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeHorizontalTo extends PathNode {
        private final float dx;

        public RelativeHorizontalTo(float f10) {
            super(false, false, 3, null);
            this.dx = f10;
        }

        public static /* synthetic */ RelativeHorizontalTo copy$default(RelativeHorizontalTo relativeHorizontalTo, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeHorizontalTo.dx;
            }
            return relativeHorizontalTo.copy(f10);
        }

        public final float component1() {
            return this.dx;
        }

        @NotNull
        public final RelativeHorizontalTo copy(float f10) {
            return new RelativeHorizontalTo(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RelativeHorizontalTo) && Intrinsics.areEqual((Object) Float.valueOf(this.dx), (Object) Float.valueOf(((RelativeHorizontalTo) obj).dx))) {
                return true;
            }
            return false;
        }

        public final float getDx() {
            return this.dx;
        }

        public int hashCode() {
            return Float.hashCode(this.dx);
        }

        @NotNull
        public String toString() {
            return "RelativeHorizontalTo(dx=" + this.dx + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeLineTo extends PathNode {
        private final float dx;
        private final float dy;

        public RelativeLineTo(float f10, float f11) {
            super(false, false, 3, null);
            this.dx = f10;
            this.dy = f11;
        }

        public static /* synthetic */ RelativeLineTo copy$default(RelativeLineTo relativeLineTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeLineTo.dx;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeLineTo.dy;
            }
            return relativeLineTo.copy(f10, f11);
        }

        public final float component1() {
            return this.dx;
        }

        public final float component2() {
            return this.dy;
        }

        @NotNull
        public final RelativeLineTo copy(float f10, float f11) {
            return new RelativeLineTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeLineTo)) {
                return false;
            }
            RelativeLineTo relativeLineTo = (RelativeLineTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx), (Object) Float.valueOf(relativeLineTo.dx)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy), (Object) Float.valueOf(relativeLineTo.dy))) {
                return true;
            }
            return false;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeLineTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeMoveTo extends PathNode {
        private final float dx;
        private final float dy;

        public RelativeMoveTo(float f10, float f11) {
            super(false, false, 3, null);
            this.dx = f10;
            this.dy = f11;
        }

        public static /* synthetic */ RelativeMoveTo copy$default(RelativeMoveTo relativeMoveTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeMoveTo.dx;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeMoveTo.dy;
            }
            return relativeMoveTo.copy(f10, f11);
        }

        public final float component1() {
            return this.dx;
        }

        public final float component2() {
            return this.dy;
        }

        @NotNull
        public final RelativeMoveTo copy(float f10, float f11) {
            return new RelativeMoveTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeMoveTo)) {
                return false;
            }
            RelativeMoveTo relativeMoveTo = (RelativeMoveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx), (Object) Float.valueOf(relativeMoveTo.dx)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy), (Object) Float.valueOf(relativeMoveTo.dy))) {
                return true;
            }
            return false;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeMoveTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeQuadTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public RelativeQuadTo(float f10, float f11, float f12, float f13) {
            super(false, true, 1, null);
            this.dx1 = f10;
            this.dy1 = f11;
            this.dx2 = f12;
            this.dy2 = f13;
        }

        public static /* synthetic */ RelativeQuadTo copy$default(RelativeQuadTo relativeQuadTo, float f10, float f11, float f12, float f13, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeQuadTo.dx1;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeQuadTo.dy1;
            }
            if ((i10 & 4) != 0) {
                f12 = relativeQuadTo.dx2;
            }
            if ((i10 & 8) != 0) {
                f13 = relativeQuadTo.dy2;
            }
            return relativeQuadTo.copy(f10, f11, f12, f13);
        }

        public final float component1() {
            return this.dx1;
        }

        public final float component2() {
            return this.dy1;
        }

        public final float component3() {
            return this.dx2;
        }

        public final float component4() {
            return this.dy2;
        }

        @NotNull
        public final RelativeQuadTo copy(float f10, float f11, float f12, float f13) {
            return new RelativeQuadTo(f10, f11, f12, f13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeQuadTo)) {
                return false;
            }
            RelativeQuadTo relativeQuadTo = (RelativeQuadTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx1), (Object) Float.valueOf(relativeQuadTo.dx1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy1), (Object) Float.valueOf(relativeQuadTo.dy1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dx2), (Object) Float.valueOf(relativeQuadTo.dx2)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy2), (Object) Float.valueOf(relativeQuadTo.dy2))) {
                return true;
            }
            return false;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2);
        }

        @NotNull
        public String toString() {
            return "RelativeQuadTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeReflectiveCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public RelativeReflectiveCurveTo(float f10, float f11, float f12, float f13) {
            super(true, false, 2, null);
            this.dx1 = f10;
            this.dy1 = f11;
            this.dx2 = f12;
            this.dy2 = f13;
        }

        public static /* synthetic */ RelativeReflectiveCurveTo copy$default(RelativeReflectiveCurveTo relativeReflectiveCurveTo, float f10, float f11, float f12, float f13, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeReflectiveCurveTo.dx1;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeReflectiveCurveTo.dy1;
            }
            if ((i10 & 4) != 0) {
                f12 = relativeReflectiveCurveTo.dx2;
            }
            if ((i10 & 8) != 0) {
                f13 = relativeReflectiveCurveTo.dy2;
            }
            return relativeReflectiveCurveTo.copy(f10, f11, f12, f13);
        }

        public final float component1() {
            return this.dx1;
        }

        public final float component2() {
            return this.dy1;
        }

        public final float component3() {
            return this.dx2;
        }

        public final float component4() {
            return this.dy2;
        }

        @NotNull
        public final RelativeReflectiveCurveTo copy(float f10, float f11, float f12, float f13) {
            return new RelativeReflectiveCurveTo(f10, f11, f12, f13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveCurveTo)) {
                return false;
            }
            RelativeReflectiveCurveTo relativeReflectiveCurveTo = (RelativeReflectiveCurveTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx1), (Object) Float.valueOf(relativeReflectiveCurveTo.dx1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy1), (Object) Float.valueOf(relativeReflectiveCurveTo.dy1)) && Intrinsics.areEqual((Object) Float.valueOf(this.dx2), (Object) Float.valueOf(relativeReflectiveCurveTo.dx2)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy2), (Object) Float.valueOf(relativeReflectiveCurveTo.dy2))) {
                return true;
            }
            return false;
        }

        public final float getDx1() {
            return this.dx1;
        }

        public final float getDx2() {
            return this.dx2;
        }

        public final float getDy1() {
            return this.dy1;
        }

        public final float getDy2() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.hashCode(this.dx1) * 31) + Float.hashCode(this.dy1)) * 31) + Float.hashCode(this.dx2)) * 31) + Float.hashCode(this.dy2);
        }

        @NotNull
        public String toString() {
            return "RelativeReflectiveCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeReflectiveQuadTo extends PathNode {
        private final float dx;
        private final float dy;

        public RelativeReflectiveQuadTo(float f10, float f11) {
            super(false, true, 1, null);
            this.dx = f10;
            this.dy = f11;
        }

        public static /* synthetic */ RelativeReflectiveQuadTo copy$default(RelativeReflectiveQuadTo relativeReflectiveQuadTo, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeReflectiveQuadTo.dx;
            }
            if ((i10 & 2) != 0) {
                f11 = relativeReflectiveQuadTo.dy;
            }
            return relativeReflectiveQuadTo.copy(f10, f11);
        }

        public final float component1() {
            return this.dx;
        }

        public final float component2() {
            return this.dy;
        }

        @NotNull
        public final RelativeReflectiveQuadTo copy(float f10, float f11) {
            return new RelativeReflectiveQuadTo(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveQuadTo)) {
                return false;
            }
            RelativeReflectiveQuadTo relativeReflectiveQuadTo = (RelativeReflectiveQuadTo) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.dx), (Object) Float.valueOf(relativeReflectiveQuadTo.dx)) && Intrinsics.areEqual((Object) Float.valueOf(this.dy), (Object) Float.valueOf(relativeReflectiveQuadTo.dy))) {
                return true;
            }
            return false;
        }

        public final float getDx() {
            return this.dx;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return (Float.hashCode(this.dx) * 31) + Float.hashCode(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class RelativeVerticalTo extends PathNode {
        private final float dy;

        public RelativeVerticalTo(float f10) {
            super(false, false, 3, null);
            this.dy = f10;
        }

        public static /* synthetic */ RelativeVerticalTo copy$default(RelativeVerticalTo relativeVerticalTo, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = relativeVerticalTo.dy;
            }
            return relativeVerticalTo.copy(f10);
        }

        public final float component1() {
            return this.dy;
        }

        @NotNull
        public final RelativeVerticalTo copy(float f10) {
            return new RelativeVerticalTo(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RelativeVerticalTo) && Intrinsics.areEqual((Object) Float.valueOf(this.dy), (Object) Float.valueOf(((RelativeVerticalTo) obj).dy))) {
                return true;
            }
            return false;
        }

        public final float getDy() {
            return this.dy;
        }

        public int hashCode() {
            return Float.hashCode(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeVerticalTo(dy=" + this.dy + ')';
        }
    }

    /* compiled from: PathNode.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class VerticalTo extends PathNode {

        /* renamed from: y  reason: collision with root package name */
        private final float f1272y;

        public VerticalTo(float f10) {
            super(false, false, 3, null);
            this.f1272y = f10;
        }

        public static /* synthetic */ VerticalTo copy$default(VerticalTo verticalTo, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = verticalTo.f1272y;
            }
            return verticalTo.copy(f10);
        }

        public final float component1() {
            return this.f1272y;
        }

        @NotNull
        public final VerticalTo copy(float f10) {
            return new VerticalTo(f10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof VerticalTo) && Intrinsics.areEqual((Object) Float.valueOf(this.f1272y), (Object) Float.valueOf(((VerticalTo) obj).f1272y))) {
                return true;
            }
            return false;
        }

        public final float getY() {
            return this.f1272y;
        }

        public int hashCode() {
            return Float.hashCode(this.f1272y);
        }

        @NotNull
        public String toString() {
            return "VerticalTo(y=" + this.f1272y + ')';
        }
    }

    public /* synthetic */ PathNode(boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11);
    }

    public final boolean isCurve() {
        return this.isCurve;
    }

    public final boolean isQuad() {
        return this.isQuad;
    }

    private PathNode(boolean z10, boolean z11) {
        this.isCurve = z10;
        this.isQuad = z11;
    }

    public /* synthetic */ PathNode(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, null);
    }
}
