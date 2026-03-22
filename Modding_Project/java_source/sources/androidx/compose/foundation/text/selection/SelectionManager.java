package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import at.n;
import at.p;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SelectionManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionManager {
    @NotNull
    private final MutableState<Selection> _selection;
    @Nullable
    private ClipboardManager clipboardManager;
    @Nullable
    private LayoutCoordinates containerLayoutCoordinates;
    @NotNull
    private final MutableState currentDragPosition$delegate;
    @NotNull
    private final MutableState dragBeginPosition$delegate;
    @NotNull
    private final MutableState dragTotalDistance$delegate;
    @NotNull
    private final MutableState draggingHandle$delegate;
    @NotNull
    private final MutableState endHandlePosition$delegate;
    @NotNull
    private FocusRequester focusRequester;
    @Nullable
    private HapticFeedback hapticFeedBack;
    @NotNull
    private final MutableState hasFocus$delegate;
    @NotNull
    private Function1<? super Selection, Unit> onSelectionChange;
    @Nullable
    private Offset previousPosition;
    @NotNull
    private final SelectionRegistrarImpl selectionRegistrar;
    @NotNull
    private final MutableState startHandlePosition$delegate;
    @Nullable
    private TextToolbar textToolbar;
    private boolean touchMode;

    public SelectionManager(@NotNull SelectionRegistrarImpl selectionRegistrar) {
        MutableState<Selection> mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        MutableState mutableStateOf$default6;
        MutableState mutableStateOf$default7;
        MutableState mutableStateOf$default8;
        Intrinsics.checkNotNullParameter(selectionRegistrar, "selectionRegistrar");
        this.selectionRegistrar = selectionRegistrar;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this._selection = mutableStateOf$default;
        this.touchMode = true;
        this.onSelectionChange = new Function1<Selection, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$onSelectionChange$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Selection selection) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Selection selection) {
                invoke2(selection);
                return Unit.f60915a;
            }
        };
        this.focusRequester = new FocusRequester();
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.hasFocus$delegate = mutableStateOf$default2;
        Offset.Companion companion = Offset.Companion;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m1595boximpl(companion.m1622getZeroF1C5BW0()), null, 2, null);
        this.dragBeginPosition$delegate = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m1595boximpl(companion.m1622getZeroF1C5BW0()), null, 2, null);
        this.dragTotalDistance$delegate = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.startHandlePosition$delegate = mutableStateOf$default5;
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.endHandlePosition$delegate = mutableStateOf$default6;
        mutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.draggingHandle$delegate = mutableStateOf$default7;
        mutableStateOf$default8 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentDragPosition$delegate = mutableStateOf$default8;
        selectionRegistrar.setOnPositionChangeCallback$foundation_release(new Function1<Long, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
                invoke(l10.longValue());
                return Unit.f60915a;
            }

            public final void invoke(long j10) {
                Selection selection;
                Selection.AnchorInfo end;
                Selection.AnchorInfo start;
                Selection selection2 = SelectionManager.this.getSelection();
                if ((selection2 == null || (start = selection2.getStart()) == null || j10 != start.getSelectableId()) && ((selection = SelectionManager.this.getSelection()) == null || (end = selection.getEnd()) == null || j10 != end.getSelectableId())) {
                    return;
                }
                SelectionManager.this.updateHandleOffsets();
                SelectionManager.this.updateSelectionToolbarPosition();
            }
        });
        selectionRegistrar.setOnSelectionUpdateStartCallback$foundation_release(new n<LayoutCoordinates, Offset, SelectionAdjustment, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.2
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates, Offset offset, SelectionAdjustment selectionAdjustment) {
                m864invoked4ec7I(layoutCoordinates, offset.m1616unboximpl(), selectionAdjustment);
                return Unit.f60915a;
            }

            /* renamed from: invoke-d-4ec7I  reason: not valid java name */
            public final void m864invoked4ec7I(@NotNull LayoutCoordinates layoutCoordinates, long j10, @NotNull SelectionAdjustment selectionMode) {
                Intrinsics.checkNotNullParameter(layoutCoordinates, "layoutCoordinates");
                Intrinsics.checkNotNullParameter(selectionMode, "selectionMode");
                Offset m849convertToContainerCoordinatesQ7Q5hAU = SelectionManager.this.m849convertToContainerCoordinatesQ7Q5hAU(layoutCoordinates, j10);
                if (m849convertToContainerCoordinatesQ7Q5hAU != null) {
                    SelectionManager.this.m855startSelection9KIMszo(m849convertToContainerCoordinatesQ7Q5hAU.m1616unboximpl(), false, selectionMode);
                    SelectionManager.this.getFocusRequester().requestFocus();
                    SelectionManager.this.hideSelectionToolbar$foundation_release();
                }
            }
        });
        selectionRegistrar.setOnSelectionUpdateSelectAll$foundation_release(new Function1<Long, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
                invoke(l10.longValue());
                return Unit.f60915a;
            }

            public final void invoke(long j10) {
                SelectionManager selectionManager = SelectionManager.this;
                Pair<Selection, Map<Long, Selection>> selectAll$foundation_release = selectionManager.selectAll$foundation_release(j10, selectionManager.getSelection());
                Selection b10 = selectAll$foundation_release.b();
                Map<Long, Selection> d10 = selectAll$foundation_release.d();
                if (!Intrinsics.areEqual(b10, SelectionManager.this.getSelection())) {
                    SelectionManager.this.selectionRegistrar.setSubselections(d10);
                    SelectionManager.this.getOnSelectionChange().invoke(b10);
                }
                SelectionManager.this.getFocusRequester().requestFocus();
                SelectionManager.this.hideSelectionToolbar$foundation_release();
            }
        });
        selectionRegistrar.setOnSelectionUpdateCallback$foundation_release(new p<LayoutCoordinates, Offset, Offset, Boolean, SelectionAdjustment, Boolean>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.4
            {
                super(5);
            }

            @Override // at.p
            public /* bridge */ /* synthetic */ Boolean invoke(LayoutCoordinates layoutCoordinates, Offset offset, Offset offset2, Boolean bool, SelectionAdjustment selectionAdjustment) {
                return m865invoke5iVPX68(layoutCoordinates, offset.m1616unboximpl(), offset2.m1616unboximpl(), bool.booleanValue(), selectionAdjustment);
            }

            @NotNull
            /* renamed from: invoke-5iVPX68  reason: not valid java name */
            public final Boolean m865invoke5iVPX68(@NotNull LayoutCoordinates layoutCoordinates, long j10, long j11, boolean z10, @NotNull SelectionAdjustment selectionMode) {
                Intrinsics.checkNotNullParameter(layoutCoordinates, "layoutCoordinates");
                Intrinsics.checkNotNullParameter(selectionMode, "selectionMode");
                return Boolean.valueOf(SelectionManager.this.m863updateSelectionRHHTvR4$foundation_release(SelectionManager.this.m849convertToContainerCoordinatesQ7Q5hAU(layoutCoordinates, j10), SelectionManager.this.m849convertToContainerCoordinatesQ7Q5hAU(layoutCoordinates, j11), z10, selectionMode));
            }
        });
        selectionRegistrar.setOnSelectionUpdateEndCallback$foundation_release(new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SelectionManager.this.showSelectionToolbar$foundation_release();
                SelectionManager.this.setDraggingHandle(null);
                SelectionManager.this.m850setCurrentDragPosition_kEHs6E(null);
            }
        });
        selectionRegistrar.setOnSelectableChangeCallback$foundation_release(new Function1<Long, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
                invoke(l10.longValue());
                return Unit.f60915a;
            }

            public final void invoke(long j10) {
                if (SelectionManager.this.selectionRegistrar.getSubselections().containsKey(Long.valueOf(j10))) {
                    SelectionManager.this.onRelease();
                    SelectionManager.this.setSelection(null);
                }
            }
        });
        selectionRegistrar.setAfterSelectableUnsubscribe$foundation_release(new Function1<Long, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager.7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
                invoke(l10.longValue());
                return Unit.f60915a;
            }

            public final void invoke(long j10) {
                Selection selection;
                Selection.AnchorInfo end;
                Selection.AnchorInfo start;
                Selection selection2 = SelectionManager.this.getSelection();
                if ((selection2 == null || (start = selection2.getStart()) == null || j10 != start.getSelectableId()) && ((selection = SelectionManager.this.getSelection()) == null || (end = selection.getEnd()) == null || j10 != end.getSelectableId())) {
                    return;
                }
                SelectionManager.this.m854setStartHandlePosition_kEHs6E(null);
                SelectionManager.this.m853setEndHandlePosition_kEHs6E(null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convertToContainerCoordinates-Q7Q5hAU  reason: not valid java name */
    public final Offset m849convertToContainerCoordinatesQ7Q5hAU(LayoutCoordinates layoutCoordinates, long j10) {
        LayoutCoordinates layoutCoordinates2 = this.containerLayoutCoordinates;
        if (layoutCoordinates2 != null && layoutCoordinates2.isAttached()) {
            return Offset.m1595boximpl(requireContainerCoordinates$foundation_release().mo3338localPositionOfR5De75A(layoutCoordinates, j10));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object detectNonConsumingTap(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new SelectionManager$detectNonConsumingTap$2(function1, null), cVar);
        if (forEachGesture == kotlin.coroutines.intrinsics.a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    private final Rect getContentRect() {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2;
        Selection selection = getSelection();
        if (selection == null) {
            return Rect.Companion.getZero();
        }
        Selectable anchorSelectable$foundation_release = getAnchorSelectable$foundation_release(selection.getStart());
        Selectable anchorSelectable$foundation_release2 = getAnchorSelectable$foundation_release(selection.getEnd());
        if (anchorSelectable$foundation_release != null && (layoutCoordinates = anchorSelectable$foundation_release.getLayoutCoordinates()) != null) {
            if (anchorSelectable$foundation_release2 != null && (layoutCoordinates2 = anchorSelectable$foundation_release2.getLayoutCoordinates()) != null) {
                LayoutCoordinates layoutCoordinates3 = this.containerLayoutCoordinates;
                if (layoutCoordinates3 != null && layoutCoordinates3.isAttached()) {
                    long mo3338localPositionOfR5De75A = layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates, anchorSelectable$foundation_release.mo810getHandlePositiondBAh8RU(selection, true));
                    long mo3338localPositionOfR5De75A2 = layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates2, anchorSelectable$foundation_release2.mo810getHandlePositiondBAh8RU(selection, false));
                    long mo3339localToRootMKHz9U = layoutCoordinates3.mo3339localToRootMKHz9U(mo3338localPositionOfR5De75A);
                    long mo3339localToRootMKHz9U2 = layoutCoordinates3.mo3339localToRootMKHz9U(mo3338localPositionOfR5De75A2);
                    return new Rect(Math.min(Offset.m1606getXimpl(mo3339localToRootMKHz9U), Offset.m1606getXimpl(mo3339localToRootMKHz9U2)), Math.min(Offset.m1607getYimpl(layoutCoordinates3.mo3339localToRootMKHz9U(layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates, OffsetKt.Offset(0.0f, anchorSelectable$foundation_release.getBoundingBox(selection.getStart().getOffset()).getTop())))), Offset.m1607getYimpl(layoutCoordinates3.mo3339localToRootMKHz9U(layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates2, OffsetKt.Offset(0.0f, anchorSelectable$foundation_release2.getBoundingBox(selection.getEnd().getOffset()).getTop()))))), Math.max(Offset.m1606getXimpl(mo3339localToRootMKHz9U), Offset.m1606getXimpl(mo3339localToRootMKHz9U2)), Math.max(Offset.m1607getYimpl(mo3339localToRootMKHz9U), Offset.m1607getYimpl(mo3339localToRootMKHz9U2)) + ((float) (SelectionHandlesKt.getHandleHeight() * 4.0d)));
                }
                return Rect.Companion.getZero();
            }
            return Rect.Companion.getZero();
        }
        return Rect.Companion.getZero();
    }

    private final boolean getShouldShowMagnifier() {
        if (getDraggingHandle() != null) {
            return true;
        }
        return false;
    }

    private final Modifier onClearSelectionRequested(Modifier modifier, Function0<Unit> function0) {
        if (getHasFocus()) {
            return SuspendingPointerInputFilterKt.pointerInput(modifier, Unit.f60915a, new SelectionManager$onClearSelectionRequested$1(this, function0, null));
        }
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setCurrentDragPosition-_kEHs6E  reason: not valid java name */
    public final void m850setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDragBeginPosition-k-4lQ0M  reason: not valid java name */
    public final void m851setDragBeginPositionk4lQ0M(long j10) {
        this.dragBeginPosition$delegate.setValue(Offset.m1595boximpl(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDragTotalDistance-k-4lQ0M  reason: not valid java name */
    public final void m852setDragTotalDistancek4lQ0M(long j10) {
        this.dragTotalDistance$delegate.setValue(Offset.m1595boximpl(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEndHandlePosition-_kEHs6E  reason: not valid java name */
    public final void m853setEndHandlePosition_kEHs6E(Offset offset) {
        this.endHandlePosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setStartHandlePosition-_kEHs6E  reason: not valid java name */
    public final void m854setStartHandlePosition_kEHs6E(Offset offset) {
        this.startHandlePosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startSelection-9KIMszo  reason: not valid java name */
    public final void m855startSelection9KIMszo(long j10, boolean z10, SelectionAdjustment selectionAdjustment) {
        m862updateSelection3R_tFg$foundation_release(j10, j10, null, z10, selectionAdjustment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateHandleOffsets() {
        Selectable selectable;
        Selectable selectable2;
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2;
        Offset offset;
        Selection.AnchorInfo end;
        Selection.AnchorInfo start;
        Selection selection = getSelection();
        LayoutCoordinates layoutCoordinates3 = this.containerLayoutCoordinates;
        Offset offset2 = null;
        if (selection != null && (start = selection.getStart()) != null) {
            selectable = getAnchorSelectable$foundation_release(start);
        } else {
            selectable = null;
        }
        if (selection != null && (end = selection.getEnd()) != null) {
            selectable2 = getAnchorSelectable$foundation_release(end);
        } else {
            selectable2 = null;
        }
        if (selectable != null) {
            layoutCoordinates = selectable.getLayoutCoordinates();
        } else {
            layoutCoordinates = null;
        }
        if (selectable2 != null) {
            layoutCoordinates2 = selectable2.getLayoutCoordinates();
        } else {
            layoutCoordinates2 = null;
        }
        if (selection != null && layoutCoordinates3 != null && layoutCoordinates3.isAttached() && layoutCoordinates != null && layoutCoordinates2 != null) {
            long mo3338localPositionOfR5De75A = layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates, selectable.mo810getHandlePositiondBAh8RU(selection, true));
            long mo3338localPositionOfR5De75A2 = layoutCoordinates3.mo3338localPositionOfR5De75A(layoutCoordinates2, selectable2.mo810getHandlePositiondBAh8RU(selection, false));
            Rect visibleBounds = SelectionManagerKt.visibleBounds(layoutCoordinates3);
            if (SelectionManagerKt.m869containsInclusiveUv8p0NA(visibleBounds, mo3338localPositionOfR5De75A)) {
                offset = Offset.m1595boximpl(mo3338localPositionOfR5De75A);
            } else {
                offset = null;
            }
            m854setStartHandlePosition_kEHs6E(offset);
            if (SelectionManagerKt.m869containsInclusiveUv8p0NA(visibleBounds, mo3338localPositionOfR5De75A2)) {
                offset2 = Offset.m1595boximpl(mo3338localPositionOfR5De75A2);
            }
            m853setEndHandlePosition_kEHs6E(offset2);
            return;
        }
        m854setStartHandlePosition_kEHs6E(null);
        m853setEndHandlePosition_kEHs6E(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelectionToolbarPosition() {
        TextToolbarStatus textToolbarStatus;
        if (getHasFocus()) {
            TextToolbar textToolbar = this.textToolbar;
            if (textToolbar != null) {
                textToolbarStatus = textToolbar.getStatus();
            } else {
                textToolbarStatus = null;
            }
            if (textToolbarStatus == TextToolbarStatus.Shown) {
                showSelectionToolbar$foundation_release();
            }
        }
    }

    /* renamed from: contextMenuOpenAdjustment-k-4lQ0M  reason: not valid java name */
    public final void m856contextMenuOpenAdjustmentk4lQ0M(long j10) {
        boolean z10;
        Selection selection = getSelection();
        if (selection != null) {
            z10 = TextRange.m3691getCollapsedimpl(selection.m819toTextRanged9O1mEE());
        } else {
            z10 = true;
        }
        if (z10) {
            m855startSelection9KIMszo(j10, true, SelectionAdjustment.Companion.getWord());
        }
    }

    public final void copy$foundation_release() {
        ClipboardManager clipboardManager;
        AnnotatedString selectedText$foundation_release = getSelectedText$foundation_release();
        if (selectedText$foundation_release != null && (clipboardManager = this.clipboardManager) != null) {
            clipboardManager.setText(selectedText$foundation_release);
        }
    }

    @Nullable
    public final Selectable getAnchorSelectable$foundation_release(@NotNull Selection.AnchorInfo anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        return this.selectionRegistrar.getSelectableMap$foundation_release().get(Long.valueOf(anchor.getSelectableId()));
    }

    @Nullable
    public final ClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @Nullable
    public final LayoutCoordinates getContainerLayoutCoordinates() {
        return this.containerLayoutCoordinates;
    }

    @Nullable
    /* renamed from: getCurrentDragPosition-_m7T9-E  reason: not valid java name */
    public final Offset m857getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    /* renamed from: getDragBeginPosition-F1C5BW0$foundation_release  reason: not valid java name */
    public final long m858getDragBeginPositionF1C5BW0$foundation_release() {
        return ((Offset) this.dragBeginPosition$delegate.getValue()).m1616unboximpl();
    }

    /* renamed from: getDragTotalDistance-F1C5BW0$foundation_release  reason: not valid java name */
    public final long m859getDragTotalDistanceF1C5BW0$foundation_release() {
        return ((Offset) this.dragTotalDistance$delegate.getValue()).m1616unboximpl();
    }

    @Nullable
    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    @Nullable
    /* renamed from: getEndHandlePosition-_m7T9-E  reason: not valid java name */
    public final Offset m860getEndHandlePosition_m7T9E() {
        return (Offset) this.endHandlePosition$delegate.getValue();
    }

    @NotNull
    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    @Nullable
    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    @NotNull
    public final Modifier getModifier() {
        Modifier modifier = Modifier.Companion;
        Modifier onKeyEvent = KeyInputModifierKt.onKeyEvent(FocusableKt.focusable$default(FocusChangedModifierKt.onFocusChanged(FocusRequesterModifierKt.focusRequester(OnGloballyPositionedModifierKt.onGloballyPositioned(onClearSelectionRequested(modifier, new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$modifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SelectionManager.this.onRelease();
            }
        }), new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$modifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                invoke2(layoutCoordinates);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LayoutCoordinates it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SelectionManager.this.setContainerLayoutCoordinates(it);
            }
        }), this.focusRequester), new Function1<FocusState, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$modifier$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FocusState focusState) {
                invoke2(focusState);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull FocusState focusState) {
                Intrinsics.checkNotNullParameter(focusState, "focusState");
                if (!focusState.isFocused() && SelectionManager.this.getHasFocus()) {
                    SelectionManager.this.onRelease();
                }
                SelectionManager.this.setHasFocus(focusState.isFocused());
            }
        }), false, null, 3, null), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$modifier$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m866invokeZmokQxo(keyEvent.m3065unboximpl());
            }

            @NotNull
            /* renamed from: invoke-ZmokQxo  reason: not valid java name */
            public final Boolean m866invokeZmokQxo(@NotNull android.view.KeyEvent it) {
                boolean z10;
                Intrinsics.checkNotNullParameter(it, "it");
                if (SelectionManager_androidKt.m870isCopyKeyEventZmokQxo(it)) {
                    SelectionManager.this.copy$foundation_release();
                    z10 = true;
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
        if (getShouldShowMagnifier()) {
            modifier = SelectionManager_androidKt.selectionMagnifier(modifier, this);
        }
        return onKeyEvent.then(modifier);
    }

    @NotNull
    public final Function1<Selection, Unit> getOnSelectionChange() {
        return this.onSelectionChange;
    }

    @Nullable
    public final AnnotatedString getSelectedText$foundation_release() {
        AnnotatedString plus;
        List<Selectable> sort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation_release());
        Selection selection = getSelection();
        AnnotatedString annotatedString = null;
        if (selection == null) {
            return null;
        }
        int size = sort.size();
        for (int i10 = 0; i10 < size; i10++) {
            Selectable selectable = sort.get(i10);
            if (selectable.getSelectableId() == selection.getStart().getSelectableId() || selectable.getSelectableId() == selection.getEnd().getSelectableId() || annotatedString != null) {
                AnnotatedString currentSelectedText = SelectionManagerKt.getCurrentSelectedText(selectable, selection);
                if (annotatedString != null && (plus = annotatedString.plus(currentSelectedText)) != null) {
                    currentSelectedText = plus;
                }
                if ((selectable.getSelectableId() == selection.getEnd().getSelectableId() && !selection.getHandlesCrossed()) || (selectable.getSelectableId() == selection.getStart().getSelectableId() && selection.getHandlesCrossed())) {
                    return currentSelectedText;
                }
                annotatedString = currentSelectedText;
            }
        }
        return annotatedString;
    }

    @Nullable
    public final Selection getSelection() {
        return this._selection.getValue();
    }

    @Nullable
    /* renamed from: getStartHandlePosition-_m7T9-E  reason: not valid java name */
    public final Offset m861getStartHandlePosition_m7T9E() {
        return (Offset) this.startHandlePosition$delegate.getValue();
    }

    @Nullable
    public final TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    public final boolean getTouchMode() {
        return this.touchMode;
    }

    @NotNull
    public final TextDragObserver handleDragObserver(final boolean z10) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.SelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                SelectionManager.this.showSelectionToolbar$foundation_release();
                SelectionManager.this.setDraggingHandle(null);
                SelectionManager.this.m850setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo760onDownk4lQ0M(long j10) {
                Selection.AnchorInfo end;
                LayoutCoordinates layoutCoordinates;
                Handle handle;
                Selection selection = SelectionManager.this.getSelection();
                if (selection == null) {
                    return;
                }
                if (z10) {
                    end = selection.getStart();
                } else {
                    end = selection.getEnd();
                }
                Selectable anchorSelectable$foundation_release = SelectionManager.this.getAnchorSelectable$foundation_release(end);
                if (anchorSelectable$foundation_release == null || (layoutCoordinates = anchorSelectable$foundation_release.getLayoutCoordinates()) == null) {
                    return;
                }
                long m832getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(anchorSelectable$foundation_release.mo810getHandlePositiondBAh8RU(selection, z10));
                SelectionManager selectionManager = SelectionManager.this;
                selectionManager.m850setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(selectionManager.requireContainerCoordinates$foundation_release().mo3338localPositionOfR5De75A(layoutCoordinates, m832getAdjustedCoordinatesk4lQ0M)));
                SelectionManager selectionManager2 = SelectionManager.this;
                if (z10) {
                    handle = Handle.SelectionStart;
                } else {
                    handle = Handle.SelectionEnd;
                }
                selectionManager2.setDraggingHandle(handle);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo761onDragk4lQ0M(long j10) {
                SelectionManager selectionManager = SelectionManager.this;
                selectionManager.m852setDragTotalDistancek4lQ0M(Offset.m1611plusMKHz9U(selectionManager.m859getDragTotalDistanceF1C5BW0$foundation_release(), j10));
                long m1611plusMKHz9U = Offset.m1611plusMKHz9U(SelectionManager.this.m858getDragBeginPositionF1C5BW0$foundation_release(), SelectionManager.this.m859getDragTotalDistanceF1C5BW0$foundation_release());
                if (SelectionManager.this.m863updateSelectionRHHTvR4$foundation_release(Offset.m1595boximpl(m1611plusMKHz9U), Offset.m1595boximpl(SelectionManager.this.m858getDragBeginPositionF1C5BW0$foundation_release()), z10, SelectionAdjustment.Companion.getCharacterWithWordAccelerate())) {
                    SelectionManager.this.m851setDragBeginPositionk4lQ0M(m1611plusMKHz9U);
                    SelectionManager.this.m852setDragTotalDistancek4lQ0M(Offset.Companion.m1622getZeroF1C5BW0());
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo762onStartk4lQ0M(long j10) {
                long mo810getHandlePositiondBAh8RU;
                SelectionManager.this.hideSelectionToolbar$foundation_release();
                Selection selection = SelectionManager.this.getSelection();
                Intrinsics.checkNotNull(selection);
                Selectable selectable = SelectionManager.this.selectionRegistrar.getSelectableMap$foundation_release().get(Long.valueOf(selection.getStart().getSelectableId()));
                Selectable selectable2 = SelectionManager.this.selectionRegistrar.getSelectableMap$foundation_release().get(Long.valueOf(selection.getEnd().getSelectableId()));
                LayoutCoordinates layoutCoordinates = null;
                if (z10) {
                    if (selectable != null) {
                        layoutCoordinates = selectable.getLayoutCoordinates();
                    }
                    Intrinsics.checkNotNull(layoutCoordinates);
                } else {
                    if (selectable2 != null) {
                        layoutCoordinates = selectable2.getLayoutCoordinates();
                    }
                    Intrinsics.checkNotNull(layoutCoordinates);
                }
                if (z10) {
                    Intrinsics.checkNotNull(selectable);
                    mo810getHandlePositiondBAh8RU = selectable.mo810getHandlePositiondBAh8RU(selection, true);
                } else {
                    Intrinsics.checkNotNull(selectable2);
                    mo810getHandlePositiondBAh8RU = selectable2.mo810getHandlePositiondBAh8RU(selection, false);
                }
                long m832getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(mo810getHandlePositiondBAh8RU);
                SelectionManager selectionManager = SelectionManager.this;
                selectionManager.m851setDragBeginPositionk4lQ0M(selectionManager.requireContainerCoordinates$foundation_release().mo3338localPositionOfR5De75A(layoutCoordinates, m832getAdjustedCoordinatesk4lQ0M));
                SelectionManager.this.m852setDragTotalDistancek4lQ0M(Offset.Companion.m1622getZeroF1C5BW0());
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                SelectionManager.this.showSelectionToolbar$foundation_release();
                SelectionManager.this.setDraggingHandle(null);
                SelectionManager.this.m850setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                SelectionManager.this.setDraggingHandle(null);
                SelectionManager.this.m850setCurrentDragPosition_kEHs6E(null);
            }
        };
    }

    public final void hideSelectionToolbar$foundation_release() {
        TextToolbarStatus textToolbarStatus;
        TextToolbar textToolbar;
        if (getHasFocus()) {
            TextToolbar textToolbar2 = this.textToolbar;
            if (textToolbar2 != null) {
                textToolbarStatus = textToolbar2.getStatus();
            } else {
                textToolbarStatus = null;
            }
            if (textToolbarStatus == TextToolbarStatus.Shown && (textToolbar = this.textToolbar) != null) {
                textToolbar.hide();
            }
        }
    }

    public final void onRelease() {
        this.selectionRegistrar.setSubselections(p0.i());
        hideSelectionToolbar$foundation_release();
        if (getSelection() != null) {
            this.onSelectionChange.invoke(null);
            HapticFeedback hapticFeedback = this.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
            }
        }
    }

    @NotNull
    public final LayoutCoordinates requireContainerCoordinates$foundation_release() {
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        if (layoutCoordinates != null) {
            if (layoutCoordinates.isAttached()) {
                return layoutCoordinates;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public final Pair<Selection, Map<Long, Selection>> selectAll$foundation_release(long j10, @Nullable Selection selection) {
        HapticFeedback hapticFeedback;
        Selection selection2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Selectable> sort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation_release());
        int size = sort.size();
        Selection selection3 = null;
        for (int i10 = 0; i10 < size; i10++) {
            Selectable selectable = sort.get(i10);
            if (selectable.getSelectableId() == j10) {
                selection2 = selectable.getSelectAllSelection();
            } else {
                selection2 = null;
            }
            if (selection2 != null) {
                linkedHashMap.put(Long.valueOf(selectable.getSelectableId()), selection2);
            }
            selection3 = SelectionManagerKt.merge(selection3, selection2);
        }
        if (!Intrinsics.areEqual(selection3, selection) && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
        }
        return new Pair<>(selection3, linkedHashMap);
    }

    public final void setClipboardManager(@Nullable ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    public final void setContainerLayoutCoordinates(@Nullable LayoutCoordinates layoutCoordinates) {
        Offset offset;
        this.containerLayoutCoordinates = layoutCoordinates;
        if (getHasFocus() && getSelection() != null) {
            if (layoutCoordinates != null) {
                offset = Offset.m1595boximpl(LayoutCoordinatesKt.positionInWindow(layoutCoordinates));
            } else {
                offset = null;
            }
            if (!Intrinsics.areEqual(this.previousPosition, offset)) {
                this.previousPosition = offset;
                updateHandleOffsets();
                updateSelectionToolbarPosition();
            }
        }
    }

    public final void setFocusRequester(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.focusRequester = focusRequester;
    }

    public final void setHapticFeedBack(@Nullable HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void setHasFocus(boolean z10) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setOnSelectionChange(@NotNull Function1<? super Selection, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onSelectionChange = function1;
    }

    public final void setSelection(@Nullable Selection selection) {
        this._selection.setValue(selection);
        if (selection != null) {
            updateHandleOffsets();
        }
    }

    public final void setTextToolbar(@Nullable TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void setTouchMode(boolean z10) {
        this.touchMode = z10;
    }

    public final void showSelectionToolbar$foundation_release() {
        TextToolbar textToolbar;
        if (getHasFocus() && getSelection() != null && (textToolbar = this.textToolbar) != null) {
            TextToolbar.showMenu$default(textToolbar, getContentRect(), new Function0<Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$showSelectionToolbar$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SelectionManager.this.copy$foundation_release();
                    SelectionManager.this.onRelease();
                }
            }, null, null, null, 28, null);
        }
    }

    /* renamed from: updateSelection-3R_-tFg$foundation_release  reason: not valid java name */
    public final boolean m862updateSelection3R_tFg$foundation_release(long j10, long j11, @Nullable Offset offset, boolean z10, @NotNull SelectionAdjustment adjustment) {
        Handle handle;
        Offset m1595boximpl;
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        if (z10) {
            handle = Handle.SelectionStart;
        } else {
            handle = Handle.SelectionEnd;
        }
        setDraggingHandle(handle);
        if (z10) {
            m1595boximpl = Offset.m1595boximpl(j10);
        } else {
            m1595boximpl = Offset.m1595boximpl(j11);
        }
        m850setCurrentDragPosition_kEHs6E(m1595boximpl);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Selectable> sort = this.selectionRegistrar.sort(requireContainerCoordinates$foundation_release());
        int size = sort.size();
        Selection selection = null;
        int i10 = 0;
        boolean z11 = false;
        while (i10 < size) {
            Selectable selectable = sort.get(i10);
            int i11 = i10;
            Selection selection2 = selection;
            Pair<Selection, Boolean> mo812updateSelectionqCDeeow = selectable.mo812updateSelectionqCDeeow(j10, j11, offset, z10, requireContainerCoordinates$foundation_release(), adjustment, this.selectionRegistrar.getSubselections().get(Long.valueOf(selectable.getSelectableId())));
            Selection b10 = mo812updateSelectionqCDeeow.b();
            boolean booleanValue = mo812updateSelectionqCDeeow.d().booleanValue();
            if (!z11 && !booleanValue) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (b10 != null) {
                linkedHashMap.put(Long.valueOf(selectable.getSelectableId()), b10);
            }
            selection = SelectionManagerKt.merge(selection2, b10);
            i10 = i11 + 1;
        }
        Selection selection3 = selection;
        if (!Intrinsics.areEqual(selection3, getSelection())) {
            HapticFeedback hapticFeedback = this.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
            }
            this.selectionRegistrar.setSubselections(linkedHashMap);
            this.onSelectionChange.invoke(selection3);
        }
        return z11;
    }

    /* renamed from: updateSelection-RHHTvR4$foundation_release  reason: not valid java name */
    public final boolean m863updateSelectionRHHTvR4$foundation_release(@Nullable Offset offset, @Nullable Offset offset2, boolean z10, @NotNull SelectionAdjustment adjustment) {
        Selection selection;
        long selectableId;
        Offset m849convertToContainerCoordinatesQ7Q5hAU;
        long j10;
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        if (offset == null || (selection = getSelection()) == null) {
            return false;
        }
        if (z10) {
            selectableId = selection.getEnd().getSelectableId();
        } else {
            selectableId = selection.getStart().getSelectableId();
        }
        Selectable selectable = this.selectionRegistrar.getSelectableMap$foundation_release().get(Long.valueOf(selectableId));
        if (selectable == null) {
            m849convertToContainerCoordinatesQ7Q5hAU = null;
        } else {
            LayoutCoordinates layoutCoordinates = selectable.getLayoutCoordinates();
            Intrinsics.checkNotNull(layoutCoordinates);
            m849convertToContainerCoordinatesQ7Q5hAU = m849convertToContainerCoordinatesQ7Q5hAU(layoutCoordinates, SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(selectable.mo810getHandlePositiondBAh8RU(selection, !z10)));
        }
        if (m849convertToContainerCoordinatesQ7Q5hAU == null) {
            return false;
        }
        long m1616unboximpl = m849convertToContainerCoordinatesQ7Q5hAU.m1616unboximpl();
        if (z10) {
            j10 = offset.m1616unboximpl();
        } else {
            j10 = m1616unboximpl;
        }
        if (!z10) {
            m1616unboximpl = offset.m1616unboximpl();
        }
        return m862updateSelection3R_tFg$foundation_release(j10, m1616unboximpl, offset2, z10, adjustment);
    }
}
