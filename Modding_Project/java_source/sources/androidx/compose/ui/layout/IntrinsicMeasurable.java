package androidx.compose.ui.layout;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntrinsicMeasurable.kt */
@Metadata
/* loaded from: classes.dex */
public interface IntrinsicMeasurable {
    @Nullable
    Object getParentData();

    int maxIntrinsicHeight(int i10);

    int maxIntrinsicWidth(int i10);

    int minIntrinsicHeight(int i10);

    int minIntrinsicWidth(int i10);
}
