package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformMagnifier.kt */
@RequiresApi(28)
@Metadata
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi28Impl implements PlatformMagnifierFactory {
    @NotNull
    public static final PlatformMagnifierFactoryApi28Impl INSTANCE = new PlatformMagnifierFactoryApi28Impl();
    private static final boolean canUpdateZoom = false;

    /* compiled from: PlatformMagnifier.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class PlatformMagnifierImpl implements PlatformMagnifier {
        public static final int $stable = 8;
        @NotNull
        private final Magnifier magnifier;

        public PlatformMagnifierImpl(@NotNull Magnifier magnifier) {
            Intrinsics.checkNotNullParameter(magnifier, "magnifier");
            this.magnifier = magnifier;
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void dismiss() {
            this.magnifier.dismiss();
        }

        @NotNull
        public final Magnifier getMagnifier() {
            return this.magnifier;
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        /* renamed from: getSize-YbymL2g */
        public long mo270getSizeYbymL2g() {
            return IntSizeKt.IntSize(this.magnifier.getWidth(), this.magnifier.getHeight());
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public void mo271updateWko1d7g(long j10, long j11, float f10) {
            this.magnifier.show(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        public void updateContent() {
            this.magnifier.update();
        }
    }

    private PlatformMagnifierFactoryApi28Impl() {
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
        return new PlatformMagnifierImpl(new Magnifier(view));
    }
}
