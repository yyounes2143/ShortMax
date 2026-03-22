package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.ComposerImpl;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotReader;
import androidx.compose.runtime.SlotTable;
import androidx.compose.runtime.Stack;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposerChangeListWriter.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposerChangeListWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Stack.kt\nandroidx/compose/runtime/IntStack\n*L\n1#1,476:1\n4788#2,4:477\n4788#2,4:481\n4788#2,4:485\n4788#2,4:490\n82#3:489\n*S KotlinDebug\n*F\n+ 1 ComposerChangeListWriter.kt\nandroidx/compose/runtime/changelist/ComposerChangeListWriter\n*L\n162#1:477,4\n251#1:481,4\n309#1:485,4\n448#1:490,4\n448#1:489\n*E\n"})
/* loaded from: classes.dex */
public final class ComposerChangeListWriter {
    private static final int invalidGroupLocation = -2;
    @NotNull
    private ChangeList changeList;
    @NotNull
    private final ComposerImpl composer;
    private int moveCount;
    private int pendingUps;
    private boolean startedGroup;
    private int writersReaderDelta;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private final IntStack startedGroups = new IntStack();
    private boolean implicitRootStart = true;
    @NotNull
    private final ArrayList pendingDownNodes = Stack.m1361constructorimpl$default(null, 1, null);
    private int removeFrom = -1;
    private int moveFrom = -1;
    private int moveTo = -1;

    /* compiled from: ComposerChangeListWriter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ComposerChangeListWriter(@NotNull ComposerImpl composerImpl, @NotNull ChangeList changeList) {
        this.composer = composerImpl;
        this.changeList = changeList;
    }

    private final void ensureGroupStarted(Anchor anchor) {
        pushSlotTableOperationPreamble$default(this, false, 1, null);
        this.changeList.pushEnsureGroupStarted(anchor);
        this.startedGroup = true;
    }

    private final void ensureRootStarted() {
        if (!this.startedGroup && this.implicitRootStart) {
            pushSlotTableOperationPreamble$default(this, false, 1, null);
            this.changeList.pushEnsureRootStarted();
            this.startedGroup = true;
        }
    }

    private final SlotReader getReader() {
        return this.composer.getReader$runtime();
    }

    public static /* synthetic */ void includeOperationsIn$default(ComposerChangeListWriter composerChangeListWriter, ChangeList changeList, IntRef intRef, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            intRef = null;
        }
        composerChangeListWriter.includeOperationsIn(changeList, intRef);
    }

    private final void pushApplierOperationPreamble() {
        pushPendingUpsAndDowns();
    }

    private final void pushPendingUpsAndDowns() {
        int i10 = this.pendingUps;
        if (i10 > 0) {
            this.changeList.pushUps(i10);
            this.pendingUps = 0;
        }
        if (Stack.m1367isNotEmptyimpl(this.pendingDownNodes)) {
            this.changeList.pushDowns(Stack.m1372toArrayimpl(this.pendingDownNodes));
            Stack.m1359clearimpl(this.pendingDownNodes);
        }
    }

    private final void pushSlotEditingOperationPreamble() {
        realizeOperationLocation$default(this, false, 1, null);
        recordSlotEditing();
    }

    private final void pushSlotTableOperationPreamble(boolean z10) {
        realizeOperationLocation(z10);
    }

    static /* synthetic */ void pushSlotTableOperationPreamble$default(ComposerChangeListWriter composerChangeListWriter, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        composerChangeListWriter.pushSlotTableOperationPreamble(z10);
    }

    private final void realizeMoveNode(int i10, int i11, int i12) {
        pushApplierOperationPreamble();
        this.changeList.pushMoveNode(i10, i11, i12);
    }

    private final void realizeNodeMovementOperations() {
        int i10 = this.moveCount;
        if (i10 > 0) {
            int i11 = this.removeFrom;
            if (i11 >= 0) {
                realizeRemoveNode(i11, i10);
                this.removeFrom = -1;
            } else {
                realizeMoveNode(this.moveTo, this.moveFrom, i10);
                this.moveFrom = -1;
                this.moveTo = -1;
            }
            this.moveCount = 0;
        }
    }

    private final void realizeOperationLocation(boolean z10) {
        int currentGroup;
        boolean z11;
        if (z10) {
            currentGroup = getReader().getParent();
        } else {
            currentGroup = getReader().getCurrentGroup();
        }
        int i10 = currentGroup - this.writersReaderDelta;
        if (i10 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Tried to seek backward");
        }
        if (i10 > 0) {
            this.changeList.pushAdvanceSlotsBy(i10);
            this.writersReaderDelta = currentGroup;
        }
    }

    static /* synthetic */ void realizeOperationLocation$default(ComposerChangeListWriter composerChangeListWriter, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        composerChangeListWriter.realizeOperationLocation(z10);
    }

    private final void realizeRemoveNode(int i10, int i11) {
        pushApplierOperationPreamble();
        this.changeList.pushRemoveNode(i10, i11);
    }

    public final void appendValue(@NotNull Anchor anchor, @Nullable Object obj) {
        this.changeList.pushAppendValue(anchor, obj);
    }

    public final void copyNodesToNewAnchorLocation(@NotNull List<? extends Object> list, @NotNull IntRef intRef) {
        this.changeList.pushCopyNodesToNewAnchorLocation(list, intRef);
    }

    public final void copySlotTableToAnchorLocation(@Nullable MovableContentState movableContentState, @NotNull CompositionContext compositionContext, @NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentStateReference movableContentStateReference2) {
        this.changeList.pushCopySlotTableToAnchorLocation(movableContentState, compositionContext, movableContentStateReference, movableContentStateReference2);
    }

    public final void deactivateCurrentGroup() {
        pushSlotTableOperationPreamble$default(this, false, 1, null);
        this.changeList.pushDeactivateCurrentGroup();
    }

    public final void determineMovableContentNodeIndex(@NotNull IntRef intRef, @NotNull Anchor anchor) {
        pushPendingUpsAndDowns();
        this.changeList.pushDetermineMovableContentNodeIndex(intRef, anchor);
    }

    public final void endCompositionScope(@NotNull Function1<? super Composition, Unit> function1, @NotNull Composition composition) {
        this.changeList.pushEndCompositionScope(function1, composition);
    }

    public final void endCurrentGroup() {
        boolean z10;
        int parent = getReader().getParent();
        if (this.startedGroups.peekOr(-1) <= parent) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Missed recording an endGroup");
        }
        if (this.startedGroups.peekOr(-1) == parent) {
            pushSlotTableOperationPreamble$default(this, false, 1, null);
            this.startedGroups.pop();
            this.changeList.pushEndCurrentGroup();
        }
    }

    public final void endMovableContentPlacement() {
        this.changeList.pushEndMovableContentPlacement();
        this.writersReaderDelta = 0;
    }

    public final void endNodeMovement() {
        realizeNodeMovementOperations();
    }

    public final void endNodeMovementAndDeleteNode(int i10, int i11) {
        int nodeCount;
        endNodeMovement();
        pushPendingUpsAndDowns();
        if (getReader().isNode(i11)) {
            nodeCount = 1;
        } else {
            nodeCount = getReader().nodeCount(i11);
        }
        if (nodeCount > 0) {
            removeNode(i10, nodeCount);
        }
    }

    public final void endResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        this.changeList.pushEndResumingScope(recomposeScopeImpl);
    }

    public final void endRoot() {
        if (this.startedGroup) {
            pushSlotTableOperationPreamble$default(this, false, 1, null);
            pushSlotTableOperationPreamble$default(this, false, 1, null);
            this.changeList.pushEndCurrentGroup();
            this.startedGroup = false;
        }
    }

    public final void finalizeComposition() {
        boolean z10;
        pushPendingUpsAndDowns();
        if (this.startedGroups.tos == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Missed recording an endGroup()");
        }
    }

    @NotNull
    public final ChangeList getChangeList() {
        return this.changeList;
    }

    public final boolean getImplicitRootStart() {
        return this.implicitRootStart;
    }

    public final boolean getPastParent() {
        if (getReader().getParent() - this.writersReaderDelta < 0) {
            return true;
        }
        return false;
    }

    public final void includeOperationsIn(@NotNull ChangeList changeList, @Nullable IntRef intRef) {
        this.changeList.pushExecuteOperationsIn(changeList, intRef);
    }

    public final void insertSlots(@NotNull Anchor anchor, @NotNull SlotTable slotTable) {
        pushPendingUpsAndDowns();
        pushSlotEditingOperationPreamble();
        realizeNodeMovementOperations();
        this.changeList.pushInsertSlots(anchor, slotTable);
    }

    public final void moveCurrentGroup(int i10) {
        pushSlotEditingOperationPreamble();
        this.changeList.pushMoveCurrentGroup(i10);
    }

    public final void moveDown(@Nullable Object obj) {
        realizeNodeMovementOperations();
        Stack.m1371pushimpl(this.pendingDownNodes, obj);
    }

    public final void moveNode(int i10, int i11, int i12) {
        if (i12 > 0) {
            int i13 = this.moveCount;
            if (i13 > 0 && this.moveFrom == i10 - i13 && this.moveTo == i11 - i13) {
                this.moveCount = i13 + i12;
                return;
            }
            realizeNodeMovementOperations();
            this.moveFrom = i10;
            this.moveTo = i11;
            this.moveCount = i12;
        }
    }

    public final void moveReaderRelativeTo(int i10) {
        this.writersReaderDelta += i10 - getReader().getCurrentGroup();
    }

    public final void moveReaderToAbsolute(int i10) {
        this.writersReaderDelta = i10;
    }

    public final void moveUp() {
        realizeNodeMovementOperations();
        if (Stack.m1367isNotEmptyimpl(this.pendingDownNodes)) {
            Stack.m1370popimpl(this.pendingDownNodes);
        } else {
            this.pendingUps++;
        }
    }

    public final void recordSlotEditing() {
        SlotReader reader;
        int parent;
        if (getReader().getSize() > 0 && this.startedGroups.peekOr(-2) != (parent = (reader = getReader()).getParent())) {
            ensureRootStarted();
            if (parent > 0) {
                Anchor anchor = reader.anchor(parent);
                this.startedGroups.push(parent);
                ensureGroupStarted(anchor);
            }
        }
    }

    public final void releaseMovableContent() {
        pushPendingUpsAndDowns();
        if (this.startedGroup) {
            skipToEndOfCurrentGroup();
            endRoot();
        }
    }

    public final void releaseMovableGroupAtCurrent(@NotNull ControlledComposition controlledComposition, @NotNull CompositionContext compositionContext, @NotNull MovableContentStateReference movableContentStateReference) {
        this.changeList.pushReleaseMovableGroupAtCurrent(controlledComposition, compositionContext, movableContentStateReference);
    }

    public final void remember(@NotNull RememberObserverHolder rememberObserverHolder) {
        this.changeList.pushRemember(rememberObserverHolder);
    }

    public final void rememberPausingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        this.changeList.pushRememberPausingScope(recomposeScopeImpl);
    }

    public final void removeCurrentGroup() {
        pushSlotEditingOperationPreamble();
        this.changeList.pushRemoveCurrentGroup();
        this.writersReaderDelta += getReader().getGroupSize();
    }

    public final void removeNode(int i10, int i11) {
        boolean z10;
        if (i11 > 0) {
            if (i10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                ComposerKt.composeImmediateRuntimeError("Invalid remove index " + i10);
            }
            if (this.removeFrom == i10) {
                this.moveCount += i11;
                return;
            }
            realizeNodeMovementOperations();
            this.removeFrom = i10;
            this.moveCount = i11;
        }
    }

    public final void resetSlots() {
        this.changeList.pushResetSlots();
    }

    public final void resetTransientState() {
        this.startedGroup = false;
        this.startedGroups.clear();
        this.writersReaderDelta = 0;
        this.implicitRootStart = true;
        this.pendingUps = 0;
        Stack.m1359clearimpl(this.pendingDownNodes);
        this.removeFrom = -1;
        this.moveFrom = -1;
        this.moveTo = -1;
        this.moveCount = 0;
    }

    public final void setChangeList(@NotNull ChangeList changeList) {
        this.changeList = changeList;
    }

    public final void setImplicitRootStart(boolean z10) {
        this.implicitRootStart = z10;
    }

    public final void sideEffect(@NotNull Function0<Unit> function0) {
        this.changeList.pushSideEffect(function0);
    }

    public final void skipToEndOfCurrentGroup() {
        this.changeList.pushSkipToEndOfCurrentGroup();
    }

    public final void startResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        this.changeList.pushStartResumingScope(recomposeScopeImpl);
    }

    public final void trimValues(int i10) {
        if (i10 > 0) {
            pushSlotEditingOperationPreamble();
            this.changeList.pushTrimValues(i10);
        }
    }

    public final void updateAnchoredValue(@Nullable Object obj, @NotNull Anchor anchor, int i10) {
        this.changeList.pushUpdateAnchoredValue(obj, anchor, i10);
    }

    public final void updateAuxData(@Nullable Object obj) {
        pushSlotTableOperationPreamble$default(this, false, 1, null);
        this.changeList.pushUpdateAuxData(obj);
    }

    public final <T, V> void updateNode(V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        pushApplierOperationPreamble();
        this.changeList.pushUpdateNode(v10, function2);
    }

    public final void updateValue(@Nullable Object obj, int i10) {
        pushSlotTableOperationPreamble(true);
        this.changeList.pushUpdateValue(obj, i10);
    }

    public final void useNode(@Nullable Object obj) {
        pushApplierOperationPreamble();
        this.changeList.pushUseNode(obj);
    }

    public final void withChangeList(@NotNull ChangeList changeList, @NotNull Function0<Unit> function0) {
        ChangeList changeList2 = getChangeList();
        try {
            setChangeList(changeList);
            function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            setChangeList(changeList2);
            InlineMarker.finallyEnd(1);
        }
    }

    public final void withoutImplicitRootStart(@NotNull Function0<Unit> function0) {
        boolean implicitRootStart = getImplicitRootStart();
        try {
            setImplicitRootStart(false);
            function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            setImplicitRootStart(implicitRootStart);
            InlineMarker.finallyEnd(1);
        }
    }

    public final void insertSlots(@NotNull Anchor anchor, @NotNull SlotTable slotTable, @NotNull FixupList fixupList) {
        pushPendingUpsAndDowns();
        pushSlotEditingOperationPreamble();
        realizeNodeMovementOperations();
        this.changeList.pushInsertSlots(anchor, slotTable, fixupList);
    }
}
