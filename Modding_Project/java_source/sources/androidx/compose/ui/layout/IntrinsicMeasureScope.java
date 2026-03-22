package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntrinsicMeasureScope.kt */
@Metadata
/* loaded from: classes.dex */
public interface IntrinsicMeasureScope extends Density {
    @NotNull
    LayoutDirection getLayoutDirection();
}
