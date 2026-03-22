package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Colors.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorsKt {
    @NotNull
    private static final ProvidableCompositionLocal<Colors> LocalColors = CompositionLocalKt.staticCompositionLocalOf(new Function0<Colors>() { // from class: androidx.compose.material.ColorsKt$LocalColors$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Colors invoke() {
            return ColorsKt.m1025lightColors2qZNXz8$default(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 4095, null);
        }
    });

    /* renamed from: contentColorFor-4WTKRHQ  reason: not valid java name */
    public static final long m1020contentColorFor4WTKRHQ(@NotNull Colors contentColorFor, long j10) {
        Intrinsics.checkNotNullParameter(contentColorFor, "$this$contentColorFor");
        if (Color.m1843equalsimpl0(j10, contentColorFor.m1003getPrimary0d7_KjU())) {
            return contentColorFor.m1000getOnPrimary0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m1004getPrimaryVariant0d7_KjU())) {
            return contentColorFor.m1000getOnPrimary0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m1005getSecondary0d7_KjU())) {
            return contentColorFor.m1001getOnSecondary0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m1006getSecondaryVariant0d7_KjU())) {
            return contentColorFor.m1001getOnSecondary0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m996getBackground0d7_KjU())) {
            return contentColorFor.m998getOnBackground0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m1007getSurface0d7_KjU())) {
            return contentColorFor.m1002getOnSurface0d7_KjU();
        }
        if (Color.m1843equalsimpl0(j10, contentColorFor.m997getError0d7_KjU())) {
            return contentColorFor.m999getOnError0d7_KjU();
        }
        return Color.Companion.m1878getUnspecified0d7_KjU();
    }

    @Composable
    @ReadOnlyComposable
    /* renamed from: contentColorFor-ek8zF_U  reason: not valid java name */
    public static final long m1021contentColorForek8zF_U(long j10, @Nullable Composer composer, int i10) {
        long m1020contentColorFor4WTKRHQ = m1020contentColorFor4WTKRHQ(MaterialTheme.INSTANCE.getColors(composer, 6), j10);
        if (m1020contentColorFor4WTKRHQ == Color.Companion.m1878getUnspecified0d7_KjU()) {
            return ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl();
        }
        return m1020contentColorFor4WTKRHQ;
    }

    @NotNull
    /* renamed from: darkColors-2qZNXz8  reason: not valid java name */
    public static final Colors m1022darkColors2qZNXz8(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21) {
        return new Colors(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, false, null);
    }

    /* renamed from: darkColors-2qZNXz8$default  reason: not valid java name */
    public static /* synthetic */ Colors m1023darkColors2qZNXz8$default(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, int i10, Object obj) {
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        long j28;
        long j29;
        long j30;
        long j31;
        long j32;
        long j33;
        if ((i10 & 1) != 0) {
            j22 = ColorKt.Color(4290479868L);
        } else {
            j22 = j10;
        }
        if ((i10 & 2) != 0) {
            j23 = ColorKt.Color(4281794739L);
        } else {
            j23 = j11;
        }
        if ((i10 & 4) != 0) {
            j24 = ColorKt.Color(4278442694L);
        } else {
            j24 = j12;
        }
        if ((i10 & 8) != 0) {
            j25 = j24;
        } else {
            j25 = j13;
        }
        if ((i10 & 16) != 0) {
            j26 = ColorKt.Color(4279374354L);
        } else {
            j26 = j14;
        }
        if ((i10 & 32) != 0) {
            j27 = ColorKt.Color(4279374354L);
        } else {
            j27 = j15;
        }
        if ((i10 & 64) != 0) {
            j28 = ColorKt.Color(4291782265L);
        } else {
            j28 = j16;
        }
        if ((i10 & 128) != 0) {
            j29 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j29 = j17;
        }
        if ((i10 & 256) != 0) {
            j30 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j30 = j18;
        }
        if ((i10 & 512) != 0) {
            j31 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j31 = j19;
        }
        if ((i10 & 1024) != 0) {
            j32 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j32 = j20;
        }
        if ((i10 & 2048) != 0) {
            j33 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j33 = j21;
        }
        return m1022darkColors2qZNXz8(j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33);
    }

    @NotNull
    public static final ProvidableCompositionLocal<Colors> getLocalColors() {
        return LocalColors;
    }

    public static final long getPrimarySurface(@NotNull Colors colors) {
        Intrinsics.checkNotNullParameter(colors, "<this>");
        if (colors.isLight()) {
            return colors.m1003getPrimary0d7_KjU();
        }
        return colors.m1007getSurface0d7_KjU();
    }

    @NotNull
    /* renamed from: lightColors-2qZNXz8  reason: not valid java name */
    public static final Colors m1024lightColors2qZNXz8(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21) {
        return new Colors(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, true, null);
    }

    /* renamed from: lightColors-2qZNXz8$default  reason: not valid java name */
    public static /* synthetic */ Colors m1025lightColors2qZNXz8$default(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, int i10, Object obj) {
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        long j28;
        long j29;
        long j30;
        long j31;
        long j32;
        long j33;
        if ((i10 & 1) != 0) {
            j22 = ColorKt.Color(4284612846L);
        } else {
            j22 = j10;
        }
        if ((i10 & 2) != 0) {
            j23 = ColorKt.Color(4281794739L);
        } else {
            j23 = j11;
        }
        if ((i10 & 4) != 0) {
            j24 = ColorKt.Color(4278442694L);
        } else {
            j24 = j12;
        }
        if ((i10 & 8) != 0) {
            j25 = ColorKt.Color(4278290310L);
        } else {
            j25 = j13;
        }
        if ((i10 & 16) != 0) {
            j26 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j26 = j14;
        }
        if ((i10 & 32) != 0) {
            j27 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j27 = j15;
        }
        if ((i10 & 64) != 0) {
            j28 = ColorKt.Color(4289724448L);
        } else {
            j28 = j16;
        }
        if ((i10 & 128) != 0) {
            j29 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j29 = j17;
        }
        long j34 = j29;
        if ((i10 & 256) != 0) {
            j30 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j30 = j18;
        }
        long j35 = j30;
        if ((i10 & 512) != 0) {
            j31 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j31 = j19;
        }
        long j36 = j31;
        if ((i10 & 1024) != 0) {
            j32 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j32 = j20;
        }
        if ((i10 & 2048) != 0) {
            j33 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j33 = j21;
        }
        return m1024lightColors2qZNXz8(j22, j23, j24, j25, j26, j27, j28, j34, j35, j36, j32, j33);
    }

    public static final void updateColorsFrom(@NotNull Colors colors, @NotNull Colors other) {
        Intrinsics.checkNotNullParameter(colors, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        colors.m1015setPrimary8_81llA$material_release(other.m1003getPrimary0d7_KjU());
        colors.m1016setPrimaryVariant8_81llA$material_release(other.m1004getPrimaryVariant0d7_KjU());
        colors.m1017setSecondary8_81llA$material_release(other.m1005getSecondary0d7_KjU());
        colors.m1018setSecondaryVariant8_81llA$material_release(other.m1006getSecondaryVariant0d7_KjU());
        colors.m1008setBackground8_81llA$material_release(other.m996getBackground0d7_KjU());
        colors.m1019setSurface8_81llA$material_release(other.m1007getSurface0d7_KjU());
        colors.m1009setError8_81llA$material_release(other.m997getError0d7_KjU());
        colors.m1012setOnPrimary8_81llA$material_release(other.m1000getOnPrimary0d7_KjU());
        colors.m1013setOnSecondary8_81llA$material_release(other.m1001getOnSecondary0d7_KjU());
        colors.m1010setOnBackground8_81llA$material_release(other.m998getOnBackground0d7_KjU());
        colors.m1014setOnSurface8_81llA$material_release(other.m1002getOnSurface0d7_KjU());
        colors.m1011setOnError8_81llA$material_release(other.m999getOnError0d7_KjU());
        colors.setLight$material_release(other.isLight());
    }
}
