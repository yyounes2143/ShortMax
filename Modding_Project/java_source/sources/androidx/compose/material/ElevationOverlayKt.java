package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ElevationOverlay.kt */
@Metadata
/* loaded from: classes.dex */
public final class ElevationOverlayKt {
    @NotNull
    private static final ProvidableCompositionLocal<ElevationOverlay> LocalElevationOverlay = CompositionLocalKt.staticCompositionLocalOf(new Function0<ElevationOverlay>() { // from class: androidx.compose.material.ElevationOverlayKt$LocalElevationOverlay$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final ElevationOverlay invoke() {
            return DefaultElevationOverlay.INSTANCE;
        }
    });
    @NotNull
    private static final ProvidableCompositionLocal<Dp> LocalAbsoluteElevation = CompositionLocalKt.compositionLocalOf$default(null, new Function0<Dp>() { // from class: androidx.compose.material.ElevationOverlayKt$LocalAbsoluteElevation$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Dp invoke() {
            return Dp.m4047boximpl(m1072invokeD9Ej5fM());
        }

        /* renamed from: invoke-D9Ej5fM  reason: not valid java name */
        public final float m1072invokeD9Ej5fM() {
            return Dp.m4049constructorimpl(0);
        }
    }, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ReadOnlyComposable
    /* renamed from: calculateForegroundColor-CLU3JFs  reason: not valid java name */
    public static final long m1071calculateForegroundColorCLU3JFs(long j10, float f10, Composer composer, int i10) {
        return Color.m1841copywmQWz5c$default(ColorsKt.m1021contentColorForek8zF_U(j10, composer, i10 & 14), ((((float) Math.log(f10 + 1)) * 4.5f) + 2.0f) / 100.0f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @NotNull
    public static final ProvidableCompositionLocal<Dp> getLocalAbsoluteElevation() {
        return LocalAbsoluteElevation;
    }

    @NotNull
    public static final ProvidableCompositionLocal<ElevationOverlay> getLocalElevationOverlay() {
        return LocalElevationOverlay;
    }
}
