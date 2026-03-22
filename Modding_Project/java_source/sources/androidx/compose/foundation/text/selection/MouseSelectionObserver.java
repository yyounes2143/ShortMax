package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextSelectionMouseDetector.kt */
@Metadata
/* loaded from: classes.dex */
public interface MouseSelectionObserver {
    /* renamed from: onDrag-3MmeM6k */
    boolean mo763onDrag3MmeM6k(long j10, @NotNull SelectionAdjustment selectionAdjustment);

    /* renamed from: onExtend-k-4lQ0M */
    boolean mo764onExtendk4lQ0M(long j10);

    /* renamed from: onExtendDrag-k-4lQ0M */
    boolean mo765onExtendDragk4lQ0M(long j10);

    /* renamed from: onStart-3MmeM6k */
    boolean mo766onStart3MmeM6k(long j10, @NotNull SelectionAdjustment selectionAdjustment);
}
