package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.annotation.RequiresApi;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformMagnifier.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {
    @NotNull
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();
    private static final boolean canUpdateZoom = true;

    /* compiled from: PlatformMagnifier.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlatformMagnifierImpl(@NotNull Magnifier magnifier) {
            super(magnifier);
            Intrinsics.checkNotNullParameter(magnifier, "magnifier");
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public void mo271updateWko1d7g(long j10, long j11, float f10) {
            if (!Float.isNaN(f10)) {
                getMagnifier().setZoom(f10);
            }
            if (OffsetKt.m1625isSpecifiedk4lQ0M(j11)) {
                getMagnifier().show(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11));
            } else {
                getMagnifier().show(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
            }
        }
    }

    private PlatformMagnifierFactoryApi29Impl() {
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public boolean getCanUpdateZoom() {
        return canUpdateZoom;
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    @NotNull
    public PlatformMagnifierImpl create(@NotNull MagnifierStyle style, @NotNull View view, @NotNull Density density, float f10) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(density, "density");
        if (Intrinsics.areEqual(style, MagnifierStyle.Companion.getTextDefault())) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long mo343toSizeXkaWNTQ = density.mo343toSizeXkaWNTQ(style.m268getSizeMYxV2XQ$foundation_release());
        float mo342toPx0680j_4 = density.mo342toPx0680j_4(style.m266getCornerRadiusD9Ej5fM$foundation_release());
        float mo342toPx0680j_42 = density.mo342toPx0680j_4(style.m267getElevationD9Ej5fM$foundation_release());
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (mo343toSizeXkaWNTQ != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            builder.setSize(bt.a.c(Size.m1675getWidthimpl(mo343toSizeXkaWNTQ)), bt.a.c(Size.m1672getHeightimpl(mo343toSizeXkaWNTQ)));
        }
        if (!Float.isNaN(mo342toPx0680j_4)) {
            builder.setCornerRadius(mo342toPx0680j_4);
        }
        if (!Float.isNaN(mo342toPx0680j_42)) {
            builder.setElevation(mo342toPx0680j_42);
        }
        if (!Float.isNaN(f10)) {
            builder.setInitialZoom(f10);
        }
        builder.setClippingEnabled(style.getClippingEnabled$foundation_release());
        Magnifier build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(view).run {\n    …    build()\n            }");
        return new PlatformMagnifierImpl(build);
    }
}
