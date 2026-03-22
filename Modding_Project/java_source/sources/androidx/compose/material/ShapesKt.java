package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Shapes.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShapesKt {
    @NotNull
    private static final ProvidableCompositionLocal<Shapes> LocalShapes = CompositionLocalKt.staticCompositionLocalOf(new Function0<Shapes>() { // from class: androidx.compose.material.ShapesKt$LocalShapes$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Shapes invoke() {
            return new Shapes(null, null, null, 7, null);
        }
    });

    @NotNull
    public static final ProvidableCompositionLocal<Shapes> getLocalShapes() {
        return LocalShapes;
    }
}
