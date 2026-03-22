package androidx.compose.material.ripple;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RippleTheme.kt */
@Metadata
/* loaded from: classes.dex */
public interface RippleTheme {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: RippleTheme.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        /* renamed from: defaultRippleAlpha-DxMtmZc  reason: not valid java name */
        public final RippleAlpha m1290defaultRippleAlphaDxMtmZc(long j10, boolean z10) {
            RippleAlpha rippleAlpha;
            RippleAlpha rippleAlpha2;
            RippleAlpha rippleAlpha3;
            if (!z10) {
                rippleAlpha = RippleThemeKt.DarkThemeRippleAlpha;
                return rippleAlpha;
            } else if (ColorKt.m1895luminance8_81llA(j10) > 0.5d) {
                rippleAlpha3 = RippleThemeKt.LightThemeHighContrastRippleAlpha;
                return rippleAlpha3;
            } else {
                rippleAlpha2 = RippleThemeKt.LightThemeLowContrastRippleAlpha;
                return rippleAlpha2;
            }
        }

        /* renamed from: defaultRippleColor-5vOe2sY  reason: not valid java name */
        public final long m1291defaultRippleColor5vOe2sY(long j10, boolean z10) {
            float m1895luminance8_81llA = ColorKt.m1895luminance8_81llA(j10);
            if (!z10 && m1895luminance8_81llA < 0.5d) {
                return Color.Companion.m1879getWhite0d7_KjU();
            }
            return j10;
        }
    }

    @Composable
    /* renamed from: defaultColor-WaAFU9c */
    long mo1105defaultColorWaAFU9c(@Nullable Composer composer, int i10);

    @Composable
    @NotNull
    RippleAlpha rippleAlpha(@Nullable Composer composer, int i10);
}
