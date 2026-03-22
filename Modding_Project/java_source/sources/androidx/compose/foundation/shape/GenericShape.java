package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GenericShape.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class GenericShape implements Shape {
    public static final int $stable = 0;
    @NotNull
    private final n<Path, Size, LayoutDirection, Unit> builder;

    /* JADX WARN: Multi-variable type inference failed */
    public GenericShape(@NotNull n<? super Path, ? super Size, ? super LayoutDirection, Unit> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.builder = builder;
    }

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    /* renamed from: createOutline-Pq9zytI */
    public Outline mo235createOutlinePq9zytI(long j10, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Path Path = AndroidPath_androidKt.Path();
        this.builder.invoke(Path, Size.m1663boximpl(j10), layoutDirection);
        Path.close();
        return new Outline.Generic(Path);
    }

    public boolean equals(@Nullable Object obj) {
        GenericShape genericShape;
        if (this == obj) {
            return true;
        }
        n<Path, Size, LayoutDirection, Unit> nVar = null;
        if (obj instanceof GenericShape) {
            genericShape = (GenericShape) obj;
        } else {
            genericShape = null;
        }
        if (genericShape != null) {
            nVar = genericShape.builder;
        }
        return Intrinsics.areEqual(nVar, this.builder);
    }

    public int hashCode() {
        return this.builder.hashCode();
    }
}
