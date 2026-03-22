package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ElevationOverlay.kt */
@Metadata
/* loaded from: classes.dex */
public final class DefaultElevationOverlay implements ElevationOverlay {
    @NotNull
    public static final DefaultElevationOverlay INSTANCE = new DefaultElevationOverlay();

    private DefaultElevationOverlay() {
    }

    @Override // androidx.compose.material.ElevationOverlay
    @Composable
    @ReadOnlyComposable
    /* renamed from: apply-7g2Lkgo  reason: not valid java name */
    public long mo1037apply7g2Lkgo(long j10, float f10, @Nullable Composer composer, int i10) {
        long m1071calculateForegroundColorCLU3JFs;
        Colors colors = MaterialTheme.INSTANCE.getColors(composer, 6);
        if (Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(0)) > 0 && !colors.isLight()) {
            m1071calculateForegroundColorCLU3JFs = ElevationOverlayKt.m1071calculateForegroundColorCLU3JFs(j10, f10, composer, i10 & 126);
            return ColorKt.m1888compositeOverOWjLjI(m1071calculateForegroundColorCLU3JFs, j10);
        }
        return j10;
    }
}
