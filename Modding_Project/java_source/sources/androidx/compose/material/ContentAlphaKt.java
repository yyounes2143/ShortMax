package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContentAlpha.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContentAlphaKt {
    @NotNull
    private static final ProvidableCompositionLocal<Float> LocalContentAlpha = CompositionLocalKt.compositionLocalOf$default(null, new Function0<Float>() { // from class: androidx.compose.material.ContentAlphaKt$LocalContentAlpha$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Float invoke() {
            return Float.valueOf(1.0f);
        }
    }, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<Float> getLocalContentAlpha() {
        return LocalContentAlpha;
    }
}
