package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SelectionRegistrar.kt */
@Metadata
/* loaded from: classes.dex */
public interface SelectionRegistrar {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final long InvalidSelectableId = 0;

    /* compiled from: SelectionRegistrar.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final long InvalidSelectableId = 0;

        private Companion() {
        }
    }

    @NotNull
    Map<Long, Selection> getSubselections();

    long nextSelectableId();

    void notifyPositionChange(long j10);

    void notifySelectableChange(long j10);

    /* renamed from: notifySelectionUpdate-5iVPX68  reason: not valid java name */
    boolean mo880notifySelectionUpdate5iVPX68(@NotNull LayoutCoordinates layoutCoordinates, long j10, long j11, boolean z10, @NotNull SelectionAdjustment selectionAdjustment);

    void notifySelectionUpdateEnd();

    void notifySelectionUpdateSelectAll(long j10);

    /* renamed from: notifySelectionUpdateStart-d-4ec7I  reason: not valid java name */
    void mo881notifySelectionUpdateStartd4ec7I(@NotNull LayoutCoordinates layoutCoordinates, long j10, @NotNull SelectionAdjustment selectionAdjustment);

    @NotNull
    Selectable subscribe(@NotNull Selectable selectable);

    void unsubscribe(@NotNull Selectable selectable);
}
