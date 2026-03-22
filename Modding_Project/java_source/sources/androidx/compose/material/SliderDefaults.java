package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Slider.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SliderDefaults {
    public static final int $stable = 0;
    public static final float DisabledActiveTrackAlpha = 0.32f;
    public static final float DisabledInactiveTrackAlpha = 0.12f;
    public static final float DisabledTickAlpha = 0.12f;
    @NotNull
    public static final SliderDefaults INSTANCE = new SliderDefaults();
    public static final float InactiveTrackAlpha = 0.24f;
    public static final float TickAlpha = 0.54f;

    private SliderDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: colors-q0g_0yA  reason: not valid java name */
    public final SliderColors m1174colorsq0g_0yA(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, @Nullable Composer composer, int i10, int i11, int i12) {
        long j20;
        long j21;
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        long j28;
        long j29;
        composer.startReplaceableGroup(436017687);
        if ((i12 & 1) != 0) {
            j20 = MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU();
        } else {
            j20 = j10;
        }
        if ((i12 & 2) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            j21 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), materialTheme.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j21 = j11;
        }
        if ((i12 & 4) != 0) {
            j22 = MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU();
        } else {
            j22 = j12;
        }
        if ((i12 & 8) != 0) {
            j23 = Color.m1841copywmQWz5c$default(j22, 0.24f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j23 = j13;
        }
        if ((i12 & 16) != 0) {
            j24 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j24 = j14;
        }
        if ((i12 & 32) != 0) {
            j25 = Color.m1841copywmQWz5c$default(j24, 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j25 = j15;
        }
        if ((i12 & 64) != 0) {
            j26 = Color.m1841copywmQWz5c$default(ColorsKt.m1021contentColorForek8zF_U(j22, composer, (i10 >> 6) & 14), 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j26 = j16;
        }
        if ((i12 & 128) != 0) {
            j27 = Color.m1841copywmQWz5c$default(j22, 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j27 = j17;
        }
        if ((i12 & 256) != 0) {
            j28 = Color.m1841copywmQWz5c$default(j26, 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j28 = j18;
        }
        if ((i12 & 512) != 0) {
            j29 = Color.m1841copywmQWz5c$default(j25, 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j29 = j19;
        }
        DefaultSliderColors defaultSliderColors = new DefaultSliderColors(j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, null);
        composer.endReplaceableGroup();
        return defaultSliderColors;
    }
}
