package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutCoordinates.kt */
@Metadata
/* loaded from: classes.dex */
public interface LayoutCoordinates {

    /* compiled from: LayoutCoordinates.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Rect localBoundingBoxOf$default(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return layoutCoordinates.localBoundingBoxOf(layoutCoordinates2, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: localBoundingBoxOf");
    }

    int get(@NotNull AlignmentLine alignmentLine);

    @Nullable
    LayoutCoordinates getParentCoordinates();

    @Nullable
    LayoutCoordinates getParentLayoutCoordinates();

    @NotNull
    Set<AlignmentLine> getProvidedAlignmentLines();

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    long mo3337getSizeYbymL2g();

    boolean isAttached();

    @NotNull
    Rect localBoundingBoxOf(@NotNull LayoutCoordinates layoutCoordinates, boolean z10);

    /* renamed from: localPositionOf-R5De75A  reason: not valid java name */
    long mo3338localPositionOfR5De75A(@NotNull LayoutCoordinates layoutCoordinates, long j10);

    /* renamed from: localToRoot-MK-Hz9U  reason: not valid java name */
    long mo3339localToRootMKHz9U(long j10);

    /* renamed from: localToWindow-MK-Hz9U  reason: not valid java name */
    long mo3340localToWindowMKHz9U(long j10);

    /* renamed from: windowToLocal-MK-Hz9U  reason: not valid java name */
    long mo3341windowToLocalMKHz9U(long j10);
}
