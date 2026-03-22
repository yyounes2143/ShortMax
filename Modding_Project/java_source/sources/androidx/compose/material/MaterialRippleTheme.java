package androidx.compose.material;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material.ripple.RippleTheme;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaterialTheme.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class MaterialRippleTheme implements RippleTheme {
    @NotNull
    public static final MaterialRippleTheme INSTANCE = new MaterialRippleTheme();

    private MaterialRippleTheme() {
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    /* renamed from: defaultColor-WaAFU9c  reason: not valid java name */
    public long mo1105defaultColorWaAFU9c(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(550536719);
        long m1291defaultRippleColor5vOe2sY = RippleTheme.Companion.m1291defaultRippleColor5vOe2sY(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), MaterialTheme.INSTANCE.getColors(composer, 6).isLight());
        composer.endReplaceableGroup();
        return m1291defaultRippleColor5vOe2sY;
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    @NotNull
    public RippleAlpha rippleAlpha(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1419762518);
        RippleAlpha m1290defaultRippleAlphaDxMtmZc = RippleTheme.Companion.m1290defaultRippleAlphaDxMtmZc(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), MaterialTheme.INSTANCE.getColors(composer, 6).isLight());
        composer.endReplaceableGroup();
        return m1290defaultRippleAlphaDxMtmZc;
    }
}
