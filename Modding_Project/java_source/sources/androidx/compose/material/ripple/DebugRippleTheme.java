package androidx.compose.material.ripple;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RippleTheme.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DebugRippleTheme implements RippleTheme {
    @NotNull
    public static final DebugRippleTheme INSTANCE = new DebugRippleTheme();

    private DebugRippleTheme() {
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    /* renamed from: defaultColor-WaAFU9c */
    public long mo1105defaultColorWaAFU9c(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(2042140174);
        long m1291defaultRippleColor5vOe2sY = RippleTheme.Companion.m1291defaultRippleColor5vOe2sY(Color.Companion.m1868getBlack0d7_KjU(), true);
        composer.endReplaceableGroup();
        return m1291defaultRippleColor5vOe2sY;
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    @NotNull
    public RippleAlpha rippleAlpha(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1629816343);
        RippleAlpha m1290defaultRippleAlphaDxMtmZc = RippleTheme.Companion.m1290defaultRippleAlphaDxMtmZc(Color.Companion.m1868getBlack0d7_KjU(), true);
        composer.endReplaceableGroup();
        return m1290defaultRippleAlphaDxMtmZc;
    }
}
