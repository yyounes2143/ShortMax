package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
/* compiled from: Chip.kt */
@Metadata
/* loaded from: classes.dex */
public final class ChipKt {
    private static final float LeadingIconEndSpacing;
    private static final float SelectedOverlayOpacity = 0.16f;
    private static final float SurfaceOverlayOpacity = 0.12f;
    private static final float TrailingIconSpacing;
    private static final float HorizontalPadding = Dp.m4049constructorimpl(12);
    private static final float LeadingIconStartSpacing = Dp.m4049constructorimpl(4);
    private static final float SelectedIconContainerSize = Dp.m4049constructorimpl(24);

    static {
        float f10 = 8;
        LeadingIconEndSpacing = Dp.m4049constructorimpl(f10);
        TrailingIconSpacing = Dp.m4049constructorimpl(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0103  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Chip(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r34, boolean r35, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r36, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r37, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r38, @org.jetbrains.annotations.Nullable androidx.compose.material.ChipColors r39, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r41, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 675
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ChipKt.Chip(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.foundation.BorderStroke, androidx.compose.material.ChipColors, kotlin.jvm.functions.Function2, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Chip$lambda-1  reason: not valid java name */
    public static final long m991Chip$lambda1(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:187:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0127  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FilterChip(final boolean r44, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r45, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r46, boolean r47, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r48, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r49, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r50, @org.jetbrains.annotations.Nullable androidx.compose.material.SelectableChipColors r51, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r52, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r53, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r54, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r55, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r56, final int r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ChipKt.FilterChip(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.foundation.BorderStroke, androidx.compose.material.SelectableChipColors, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
