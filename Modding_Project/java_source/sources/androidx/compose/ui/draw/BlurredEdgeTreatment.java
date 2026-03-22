package androidx.compose.ui.draw;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Blur.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class BlurredEdgeTreatment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Shape Rectangle = m1520constructorimpl(RectangleShapeKt.getRectangleShape());
    @NotNull
    private static final Shape Unbounded = m1520constructorimpl(null);
    @Nullable
    private final Shape shape;

    /* compiled from: Blur.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: getRectangle---Goahg  reason: not valid java name */
        public final Shape m1526getRectangleGoahg() {
            return BlurredEdgeTreatment.Rectangle;
        }

        @NotNull
        /* renamed from: getUnbounded---Goahg  reason: not valid java name */
        public final Shape m1527getUnboundedGoahg() {
            return BlurredEdgeTreatment.Unbounded;
        }

        private Companion() {
        }
    }

    private /* synthetic */ BlurredEdgeTreatment(Shape shape) {
        this.shape = shape;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ BlurredEdgeTreatment m1519boximpl(Shape shape) {
        return new BlurredEdgeTreatment(shape);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1521equalsimpl(Shape shape, Object obj) {
        if (!(obj instanceof BlurredEdgeTreatment) || !Intrinsics.areEqual(shape, ((BlurredEdgeTreatment) obj).m1525unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1522equalsimpl0(Shape shape, Shape shape2) {
        return Intrinsics.areEqual(shape, shape2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1523hashCodeimpl(Shape shape) {
        if (shape == null) {
            return 0;
        }
        return shape.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1524toStringimpl(Shape shape) {
        return "BlurredEdgeTreatment(shape=" + shape + ')';
    }

    public boolean equals(Object obj) {
        return m1521equalsimpl(this.shape, obj);
    }

    @Nullable
    public final Shape getShape() {
        return this.shape;
    }

    public int hashCode() {
        return m1523hashCodeimpl(this.shape);
    }

    public String toString() {
        return m1524toStringimpl(this.shape);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Shape m1525unboximpl() {
        return this.shape;
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static Shape m1520constructorimpl(@Nullable Shape shape) {
        return shape;
    }
}
