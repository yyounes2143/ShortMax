package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasureResult.kt */
@Metadata
/* loaded from: classes.dex */
public interface MeasureResult {
    @NotNull
    Map<AlignmentLine, Integer> getAlignmentLines();

    int getHeight();

    int getWidth();

    void placeChildren();
}
