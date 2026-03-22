package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OverscrollConfiguration.kt */
@Metadata
/* loaded from: classes.dex */
public final class OverscrollConfigurationKt {
    @NotNull
    private static final ProvidableCompositionLocal<OverscrollConfiguration> LocalOverscrollConfiguration = CompositionLocalKt.compositionLocalOf$default(null, new Function0<OverscrollConfiguration>() { // from class: androidx.compose.foundation.OverscrollConfigurationKt$LocalOverscrollConfiguration$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final OverscrollConfiguration invoke() {
            return new OverscrollConfiguration(0L, null, 3, null);
        }
    }, 1, null);

    @ExperimentalFoundationApi
    @NotNull
    public static final ProvidableCompositionLocal<OverscrollConfiguration> getLocalOverscrollConfiguration() {
        return LocalOverscrollConfiguration;
    }

    @ExperimentalFoundationApi
    public static /* synthetic */ void getLocalOverscrollConfiguration$annotations() {
    }
}
