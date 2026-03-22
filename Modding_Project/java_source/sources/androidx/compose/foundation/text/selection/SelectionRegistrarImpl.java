package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import at.n;
import at.p;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionRegistrarImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionRegistrarImpl implements SelectionRegistrar {
    @Nullable
    private Function1<? super Long, Unit> afterSelectableUnsubscribe;
    @Nullable
    private Function1<? super Long, Unit> onPositionChangeCallback;
    @Nullable
    private Function1<? super Long, Unit> onSelectableChangeCallback;
    @Nullable
    private p<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> onSelectionUpdateCallback;
    @Nullable
    private Function0<Unit> onSelectionUpdateEndCallback;
    @Nullable
    private Function1<? super Long, Unit> onSelectionUpdateSelectAll;
    @Nullable
    private n<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, Unit> onSelectionUpdateStartCallback;
    private boolean sorted;
    @NotNull
    private final MutableState subselections$delegate;
    @NotNull
    private final List<Selectable> _selectables = new ArrayList();
    @NotNull
    private final Map<Long, Selectable> _selectableMap = new LinkedHashMap();
    @NotNull
    private AtomicLong incrementId = new AtomicLong(1);

    public SelectionRegistrarImpl() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(p0.i(), null, 2, null);
        this.subselections$delegate = mutableStateOf$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sort$lambda-2  reason: not valid java name */
    public static final int m882sort$lambda2(LayoutCoordinates containerLayoutCoordinates, Selectable a10, Selectable b10) {
        long m1622getZeroF1C5BW0;
        long m1622getZeroF1C5BW02;
        Intrinsics.checkNotNullParameter(containerLayoutCoordinates, "$containerLayoutCoordinates");
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        LayoutCoordinates layoutCoordinates = a10.getLayoutCoordinates();
        LayoutCoordinates layoutCoordinates2 = b10.getLayoutCoordinates();
        if (layoutCoordinates != null) {
            m1622getZeroF1C5BW0 = containerLayoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates, Offset.Companion.m1622getZeroF1C5BW0());
        } else {
            m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
        }
        if (layoutCoordinates2 != null) {
            m1622getZeroF1C5BW02 = containerLayoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates2, Offset.Companion.m1622getZeroF1C5BW0());
        } else {
            m1622getZeroF1C5BW02 = Offset.Companion.m1622getZeroF1C5BW0();
        }
        if (Offset.m1607getYimpl(m1622getZeroF1C5BW0) == Offset.m1607getYimpl(m1622getZeroF1C5BW02)) {
            return ps.a.a(Float.valueOf(Offset.m1606getXimpl(m1622getZeroF1C5BW0)), Float.valueOf(Offset.m1606getXimpl(m1622getZeroF1C5BW02)));
        }
        return ps.a.a(Float.valueOf(Offset.m1607getYimpl(m1622getZeroF1C5BW0)), Float.valueOf(Offset.m1607getYimpl(m1622getZeroF1C5BW02)));
    }

    @Nullable
    public final Function1<Long, Unit> getAfterSelectableUnsubscribe$foundation_release() {
        return this.afterSelectableUnsubscribe;
    }

    @Nullable
    public final Function1<Long, Unit> getOnPositionChangeCallback$foundation_release() {
        return this.onPositionChangeCallback;
    }

    @Nullable
    public final Function1<Long, Unit> getOnSelectableChangeCallback$foundation_release() {
        return this.onSelectableChangeCallback;
    }

    @Nullable
    public final p<LayoutCoordinates, Offset, Offset, Boolean, SelectionAdjustment, Boolean> getOnSelectionUpdateCallback$foundation_release() {
        return this.onSelectionUpdateCallback;
    }

    @Nullable
    public final Function0<Unit> getOnSelectionUpdateEndCallback$foundation_release() {
        return this.onSelectionUpdateEndCallback;
    }

    @Nullable
    public final Function1<Long, Unit> getOnSelectionUpdateSelectAll$foundation_release() {
        return this.onSelectionUpdateSelectAll;
    }

    @Nullable
    public final n<LayoutCoordinates, Offset, SelectionAdjustment, Unit> getOnSelectionUpdateStartCallback$foundation_release() {
        return this.onSelectionUpdateStartCallback;
    }

    @NotNull
    public final Map<Long, Selectable> getSelectableMap$foundation_release() {
        return this._selectableMap;
    }

    @NotNull
    public final List<Selectable> getSelectables$foundation_release() {
        return this._selectables;
    }

    public final boolean getSorted$foundation_release() {
        return this.sorted;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    @NotNull
    public Map<Long, Selection> getSubselections() {
        return (Map) this.subselections$delegate.getValue();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public long nextSelectableId() {
        long andIncrement = this.incrementId.getAndIncrement();
        while (andIncrement == 0) {
            andIncrement = this.incrementId.getAndIncrement();
        }
        return andIncrement;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifyPositionChange(long j10) {
        this.sorted = false;
        Function1<? super Long, Unit> function1 = this.onPositionChangeCallback;
        if (function1 != null) {
            function1.invoke(Long.valueOf(j10));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectableChange(long j10) {
        Function1<? super Long, Unit> function1 = this.onSelectableChangeCallback;
        if (function1 != null) {
            function1.invoke(Long.valueOf(j10));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    /* renamed from: notifySelectionUpdate-5iVPX68 */
    public boolean mo880notifySelectionUpdate5iVPX68(@NotNull LayoutCoordinates layoutCoordinates, long j10, long j11, boolean z10, @NotNull SelectionAdjustment adjustment) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "layoutCoordinates");
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        p<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> pVar = this.onSelectionUpdateCallback;
        if (pVar != null) {
            return pVar.invoke(layoutCoordinates, Offset.m1595boximpl(j10), Offset.m1595boximpl(j11), Boolean.valueOf(z10), adjustment).booleanValue();
        }
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectionUpdateEnd() {
        Function0<Unit> function0 = this.onSelectionUpdateEndCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void notifySelectionUpdateSelectAll(long j10) {
        Function1<? super Long, Unit> function1 = this.onSelectionUpdateSelectAll;
        if (function1 != null) {
            function1.invoke(Long.valueOf(j10));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    /* renamed from: notifySelectionUpdateStart-d-4ec7I */
    public void mo881notifySelectionUpdateStartd4ec7I(@NotNull LayoutCoordinates layoutCoordinates, long j10, @NotNull SelectionAdjustment adjustment) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "layoutCoordinates");
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        n<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, Unit> nVar = this.onSelectionUpdateStartCallback;
        if (nVar != null) {
            nVar.invoke(layoutCoordinates, Offset.m1595boximpl(j10), adjustment);
        }
    }

    public final void setAfterSelectableUnsubscribe$foundation_release(@Nullable Function1<? super Long, Unit> function1) {
        this.afterSelectableUnsubscribe = function1;
    }

    public final void setOnPositionChangeCallback$foundation_release(@Nullable Function1<? super Long, Unit> function1) {
        this.onPositionChangeCallback = function1;
    }

    public final void setOnSelectableChangeCallback$foundation_release(@Nullable Function1<? super Long, Unit> function1) {
        this.onSelectableChangeCallback = function1;
    }

    public final void setOnSelectionUpdateCallback$foundation_release(@Nullable p<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> pVar) {
        this.onSelectionUpdateCallback = pVar;
    }

    public final void setOnSelectionUpdateEndCallback$foundation_release(@Nullable Function0<Unit> function0) {
        this.onSelectionUpdateEndCallback = function0;
    }

    public final void setOnSelectionUpdateSelectAll$foundation_release(@Nullable Function1<? super Long, Unit> function1) {
        this.onSelectionUpdateSelectAll = function1;
    }

    public final void setOnSelectionUpdateStartCallback$foundation_release(@Nullable n<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, Unit> nVar) {
        this.onSelectionUpdateStartCallback = nVar;
    }

    public final void setSorted$foundation_release(boolean z10) {
        this.sorted = z10;
    }

    public void setSubselections(@NotNull Map<Long, Selection> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.subselections$delegate.setValue(map);
    }

    @NotNull
    public final List<Selectable> sort(@NotNull final LayoutCoordinates containerLayoutCoordinates) {
        Intrinsics.checkNotNullParameter(containerLayoutCoordinates, "containerLayoutCoordinates");
        if (!this.sorted) {
            CollectionsKt.D(this._selectables, new Comparator() { // from class: androidx.compose.foundation.text.selection.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m882sort$lambda2;
                    m882sort$lambda2 = SelectionRegistrarImpl.m882sort$lambda2(LayoutCoordinates.this, (Selectable) obj, (Selectable) obj2);
                    return m882sort$lambda2;
                }
            });
            this.sorted = true;
        }
        return getSelectables$foundation_release();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    @NotNull
    public Selectable subscribe(@NotNull Selectable selectable) {
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        if (selectable.getSelectableId() != 0) {
            if (!this._selectableMap.containsKey(Long.valueOf(selectable.getSelectableId()))) {
                this._selectableMap.put(Long.valueOf(selectable.getSelectableId()), selectable);
                this._selectables.add(selectable);
                this.sorted = false;
                return selectable;
            }
            throw new IllegalArgumentException(("Another selectable with the id: " + selectable + ".selectableId has already subscribed.").toString());
        }
        throw new IllegalArgumentException(("The selectable contains an invalid id: " + selectable.getSelectableId()).toString());
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void unsubscribe(@NotNull Selectable selectable) {
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        if (!this._selectableMap.containsKey(Long.valueOf(selectable.getSelectableId()))) {
            return;
        }
        this._selectables.remove(selectable);
        this._selectableMap.remove(Long.valueOf(selectable.getSelectableId()));
        Function1<? super Long, Unit> function1 = this.afterSelectableUnsubscribe;
        if (function1 != null) {
            function1.invoke(Long.valueOf(selectable.getSelectableId()));
        }
    }
}
