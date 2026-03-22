package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Chip.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class ChipDefaults {
    public static final int $stable = 0;
    public static final float ContentOpacity = 0.87f;
    public static final float LeadingIconOpacity = 0.54f;
    public static final float OutlinedBorderOpacity = 0.12f;
    @NotNull
    public static final ChipDefaults INSTANCE = new ChipDefaults();
    private static final float MinHeight = Dp.m4049constructorimpl(32);
    private static final float OutlinedBorderSize = Dp.m4049constructorimpl(1);
    private static final float LeadingIconSize = Dp.m4049constructorimpl(20);
    private static final float SelectedIconSize = Dp.m4049constructorimpl(18);

    private ChipDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: chipColors-5tl4gsc  reason: not valid java name */
    public final ChipColors m983chipColors5tl4gsc(long j10, long j11, long j12, long j13, long j14, long j15, @Nullable Composer composer, int i10, int i11) {
        long j16;
        long j17;
        long j18;
        long j19;
        long j20;
        long j21;
        composer.startReplaceableGroup(1838505436);
        if ((i11 & 1) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            j16 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j16 = j10;
        }
        if ((i11 & 2) != 0) {
            j17 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j17 = j11;
        }
        if ((i11 & 4) != 0) {
            j18 = Color.m1841copywmQWz5c$default(j17, 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j18 = j12;
        }
        if ((i11 & 8) != 0) {
            MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
            j19 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme2.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme2.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j19 = j13;
        }
        if ((i11 & 16) != 0) {
            j20 = Color.m1841copywmQWz5c$default(j17, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j20 = j14;
        }
        if ((i11 & 32) != 0) {
            j21 = Color.m1841copywmQWz5c$default(j18, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j21 = j15;
        }
        DefaultChipColors defaultChipColors = new DefaultChipColors(j16, j17, j18, j19, j20, j21, null);
        composer.endReplaceableGroup();
        return defaultChipColors;
    }

    @Composable
    @NotNull
    /* renamed from: filterChipColors-J08w3-E  reason: not valid java name */
    public final SelectableChipColors m984filterChipColorsJ08w3E(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, @Nullable Composer composer, int i10, int i11) {
        long j19;
        long j20;
        long j21;
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        composer.startReplaceableGroup(830140629);
        if ((i11 & 1) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            j19 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j19 = j10;
        }
        if ((i11 & 2) != 0) {
            j20 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j20 = j11;
        }
        if ((i11 & 4) != 0) {
            j21 = Color.m1841copywmQWz5c$default(j20, 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j21 = j12;
        }
        if ((i11 & 8) != 0) {
            MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
            j22 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme2.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme2.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j22 = j13;
        }
        if ((i11 & 16) != 0) {
            j23 = Color.m1841copywmQWz5c$default(j20, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j23 = j14;
        }
        if ((i11 & 32) != 0) {
            j24 = Color.m1841copywmQWz5c$default(j21, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j24 = j15;
        }
        if ((i11 & 64) != 0) {
            j25 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), j19);
        } else {
            j25 = j16;
        }
        if ((i11 & 128) != 0) {
            j26 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), j20);
        } else {
            j26 = j17;
        }
        if ((i11 & 256) != 0) {
            j27 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), j21);
        } else {
            j27 = j18;
        }
        DefaultSelectableChipColors defaultSelectableChipColors = new DefaultSelectableChipColors(j19, j20, j21, j22, j23, j24, j25, j26, j27, null);
        composer.endReplaceableGroup();
        return defaultSelectableChipColors;
    }

    /* renamed from: getLeadingIconSize-D9Ej5fM  reason: not valid java name */
    public final float m985getLeadingIconSizeD9Ej5fM() {
        return LeadingIconSize;
    }

    /* renamed from: getMinHeight-D9Ej5fM  reason: not valid java name */
    public final float m986getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    @Composable
    @NotNull
    public final BorderStroke getOutlinedBorder(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1650225597);
        BorderStroke m214BorderStrokecXLIe8U = BorderStrokeKt.m214BorderStrokecXLIe8U(OutlinedBorderSize, Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null));
        composer.endReplaceableGroup();
        return m214BorderStrokecXLIe8U;
    }

    /* renamed from: getOutlinedBorderSize-D9Ej5fM  reason: not valid java name */
    public final float m987getOutlinedBorderSizeD9Ej5fM() {
        return OutlinedBorderSize;
    }

    /* renamed from: getSelectedIconSize-D9Ej5fM  reason: not valid java name */
    public final float m988getSelectedIconSizeD9Ej5fM() {
        return SelectedIconSize;
    }

    @Composable
    @NotNull
    /* renamed from: outlinedChipColors-5tl4gsc  reason: not valid java name */
    public final ChipColors m989outlinedChipColors5tl4gsc(long j10, long j11, long j12, long j13, long j14, long j15, @Nullable Composer composer, int i10, int i11) {
        long j16;
        long j17;
        long j18;
        long j19;
        long j20;
        long j21;
        composer.startReplaceableGroup(-1763922662);
        if ((i11 & 1) != 0) {
            j16 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j16 = j10;
        }
        if ((i11 & 2) != 0) {
            j17 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j17 = j11;
        }
        if ((i11 & 4) != 0) {
            j18 = Color.m1841copywmQWz5c$default(j17, 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j18 = j12;
        }
        if ((i11 & 8) != 0) {
            j19 = j16;
        } else {
            j19 = j13;
        }
        if ((i11 & 16) != 0) {
            j20 = Color.m1841copywmQWz5c$default(j17, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j20 = j14;
        }
        if ((i11 & 32) != 0) {
            j21 = Color.m1841copywmQWz5c$default(j18, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j21 = j15;
        }
        ChipColors m983chipColors5tl4gsc = m983chipColors5tl4gsc(j16, j17, j18, j19, j20, j21, composer, i10 & 4194302, 0);
        composer.endReplaceableGroup();
        return m983chipColors5tl4gsc;
    }

    @Composable
    @NotNull
    /* renamed from: outlinedFilterChipColors-J08w3-E  reason: not valid java name */
    public final SelectableChipColors m990outlinedFilterChipColorsJ08w3E(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, @Nullable Composer composer, int i10, int i11) {
        long j19;
        long j20;
        long j21;
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        composer.startReplaceableGroup(346878099);
        if ((i11 & 1) != 0) {
            j19 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j19 = j10;
        }
        if ((i11 & 2) != 0) {
            j20 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j20 = j11;
        }
        if ((i11 & 4) != 0) {
            j21 = Color.m1841copywmQWz5c$default(j20, 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j21 = j12;
        }
        if ((i11 & 8) != 0) {
            j22 = j19;
        } else {
            j22 = j13;
        }
        if ((i11 & 16) != 0) {
            j23 = Color.m1841copywmQWz5c$default(j20, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j23 = j14;
        }
        if ((i11 & 32) != 0) {
            j24 = Color.m1841copywmQWz5c$default(j21, ContentAlpha.INSTANCE.getDisabled(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j24 = j15;
        }
        if ((i11 & 64) != 0) {
            j25 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), j19);
        } else {
            j25 = j16;
        }
        if ((i11 & 128) != 0) {
            j26 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), j20);
        } else {
            j26 = j17;
        }
        if ((i11 & 256) != 0) {
            j27 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), j21);
        } else {
            j27 = j18;
        }
        DefaultSelectableChipColors defaultSelectableChipColors = new DefaultSelectableChipColors(j19, j20, j21, j22, j23, j24, j25, j26, j27, null);
        composer.endReplaceableGroup();
        return defaultSelectableChipColors;
    }
}
