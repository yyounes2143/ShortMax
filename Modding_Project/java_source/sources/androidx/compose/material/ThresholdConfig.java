package androidx.compose.material;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Swipeable.kt */
@Stable
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public interface ThresholdConfig {
    float computeThreshold(@NotNull Density density, float f10, float f11);
}
