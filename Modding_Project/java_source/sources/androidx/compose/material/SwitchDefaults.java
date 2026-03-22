package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Switch.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SwitchDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final SwitchDefaults INSTANCE = new SwitchDefaults();

    private SwitchDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: colors-SQMK_m0  reason: not valid java name */
    public final SwitchColors m1211colorsSQMK_m0(long j10, long j11, float f10, long j12, long j13, float f11, long j14, long j15, long j16, long j17, @Nullable Composer composer, int i10, int i11, int i12) {
        long j18;
        long j19;
        float f12;
        long j20;
        long j21;
        float f13;
        long j22;
        long j23;
        float f14;
        long j24;
        long j25;
        int i13;
        long j26;
        long j27;
        composer.startReplaceableGroup(-1032127534);
        if ((i12 & 1) != 0) {
            j18 = MaterialTheme.INSTANCE.getColors(composer, 6).m1006getSecondaryVariant0d7_KjU();
        } else {
            j18 = j10;
        }
        if ((i12 & 2) != 0) {
            j19 = j18;
        } else {
            j19 = j11;
        }
        if ((i12 & 4) != 0) {
            f12 = 0.54f;
        } else {
            f12 = f10;
        }
        if ((i12 & 8) != 0) {
            j20 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j20 = j12;
        }
        if ((i12 & 16) != 0) {
            j21 = MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU();
        } else {
            j21 = j13;
        }
        if ((i12 & 32) != 0) {
            f13 = 0.38f;
        } else {
            f13 = f11;
        }
        if ((i12 & 64) != 0) {
            j22 = j18;
            j23 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(j18, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j22 = j18;
            j23 = j14;
        }
        if ((i12 & 128) != 0) {
            f14 = f13;
            j24 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(j19, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            f14 = f13;
            j24 = j15;
        }
        if ((i12 & 256) != 0) {
            j25 = j23;
            i13 = 6;
            j26 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(j20, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j25 = j23;
            i13 = 6;
            j26 = j16;
        }
        if ((i12 & 512) != 0) {
            j27 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(j21, ContentAlpha.INSTANCE.getDisabled(composer, i13), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j27 = j17;
        }
        DefaultSwitchColors defaultSwitchColors = new DefaultSwitchColors(j22, Color.m1841copywmQWz5c$default(j19, f12, 0.0f, 0.0f, 0.0f, 14, null), j20, Color.m1841copywmQWz5c$default(j21, f14, 0.0f, 0.0f, 0.0f, 14, null), j25, Color.m1841copywmQWz5c$default(j24, f12, 0.0f, 0.0f, 0.0f, 14, null), j26, Color.m1841copywmQWz5c$default(j27, f14, 0.0f, 0.0f, 0.0f, 14, null), null);
        composer.endReplaceableGroup();
        return defaultSwitchColors;
    }
}
