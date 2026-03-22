package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotTable;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.changelist.Operation;
import androidx.compose.runtime.changelist.Operations;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChangeList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nChangeList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeList.kt\nandroidx/compose/runtime/changelist/ChangeList\n+ 2 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n+ 3 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Remember\n+ 4 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RememberPausingScope\n+ 5 Operation.kt\nandroidx/compose/runtime/changelist/Operation$StartResumingScope\n+ 6 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndResumingScope\n+ 7 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateValue\n+ 8 Operations.kt\nandroidx/compose/runtime/changelist/Operations$WriteScope\n+ 9 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue\n+ 10 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AppendValue\n+ 11 Operation.kt\nandroidx/compose/runtime/changelist/Operation$TrimParentValues\n+ 12 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAuxData\n+ 13 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EnsureGroupStarted\n+ 14 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlots\n+ 15 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups\n+ 16 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveCurrentGroup\n+ 17 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndCompositionScope\n+ 18 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n+ 19 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RemoveNode\n+ 20 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n+ 21 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy\n+ 22 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Ups\n+ 23 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Downs\n+ 24 Operation.kt\nandroidx/compose/runtime/changelist/Operation$SideEffect\n+ 25 Operation.kt\nandroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex\n+ 26 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation\n+ 27 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation\n+ 28 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent\n+ 29 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ApplyChangeList\n*L\n1#1,338:1\n204#2,2:339\n207#2,2:342\n204#2,2:344\n207#2,2:347\n204#2,2:349\n207#2,2:352\n204#2,2:354\n207#2,2:357\n204#2,2:359\n360#2:372\n357#2:373\n207#2,2:375\n204#2,2:377\n360#2:393\n357#2:394\n207#2,2:396\n204#2,2:398\n207#2,2:404\n204#2,2:406\n360#2:418\n357#2:419\n207#2,2:421\n204#2,2:423\n207#2,2:426\n204#2,2:428\n207#2,2:431\n204#2,2:433\n207#2,2:439\n204#2,2:441\n207#2,2:446\n204#2,2:448\n360#2:460\n357#2:461\n207#2,2:463\n204#2,2:465\n207#2,2:469\n204#2,2:471\n207#2,2:477\n204#2,2:479\n357#2:495\n207#2,2:500\n204#2,2:502\n357#2:523\n207#2,2:529\n204#2,2:531\n360#2:543\n357#2:544\n207#2,2:546\n204#2,2:548\n360#2:560\n357#2:561\n207#2,2:563\n204#2,2:565\n207#2,2:568\n204#2,2:570\n207#2,2:573\n204#2,2:575\n207#2,2:579\n204#2,2:581\n207#2,2:585\n204#2,2:587\n207#2,2:593\n204#2,2:595\n207#2,2:600\n204#2,2:602\n207#2,2:606\n174#3:341\n194#4:346\n215#5:351\n236#6:356\n315#7:361\n318#7:362\n371#8,9:363\n380#8:374\n371#8,9:384\n380#8:395\n371#8,9:409\n380#8:420\n371#8,9:451\n380#8:462\n388#8,10:485\n398#8,4:496\n411#8,11:512\n422#8,5:524\n371#8,9:534\n380#8:545\n371#8,9:551\n380#8:562\n354#9,4:379\n360#9:383\n257#10,4:400\n286#11:408\n402#12:425\n433#13:430\n622#14,4:435\n655#15:443\n658#15:444\n661#15:445\n464#16:450\n506#17:467\n509#17:468\n544#18,4:473\n570#19,4:481\n597#20:504\n594#20,7:505\n131#21:533\n87#22:550\n107#23:567\n154#24:572\n807#25:577\n810#25:578\n843#26:583\n840#26:584\n872#27:589\n875#27:590\n881#27:591\n878#27:592\n943#28:597\n946#28:598\n949#28:599\n981#29:604\n984#29:605\n*S KotlinDebug\n*F\n+ 1 ChangeList.kt\nandroidx/compose/runtime/changelist/ChangeList\n*L\n98#1:339,2\n98#1:342,2\n102#1:344,2\n102#1:347,2\n106#1:349,2\n106#1:352,2\n110#1:354,2\n110#1:357,2\n114#1:359,2\n116#1:372\n116#1:373\n114#1:375,2\n121#1:377,2\n123#1:393\n123#1:394\n121#1:396,2\n128#1:398,2\n128#1:404,2\n134#1:406,2\n134#1:418\n134#1:419\n134#1:421,2\n146#1:423,2\n146#1:426,2\n154#1:428,2\n154#1:431,2\n170#1:433,2\n170#1:439,2\n176#1:441,2\n176#1:446,2\n189#1:448,2\n189#1:460\n189#1:461\n189#1:463,2\n193#1:465,2\n193#1:469,2\n210#1:471,2\n210#1:477,2\n217#1:479,2\n218#1:495\n217#1:500,2\n223#1:502,2\n224#1:523\n223#1:529,2\n229#1:531,2\n229#1:543\n229#1:544\n229#1:546,2\n233#1:548,2\n233#1:560\n233#1:561\n233#1:563,2\n238#1:565,2\n238#1:568,2\n243#1:570,2\n243#1:573,2\n247#1:575,2\n247#1:579,2\n259#1:581,2\n259#1:585,2\n277#1:587,2\n277#1:593,2\n297#1:595,2\n297#1:600,2\n315#1:602,2\n315#1:606,2\n98#1:341\n102#1:346\n106#1:351\n110#1:356\n115#1:361\n116#1:362\n116#1:363,9\n116#1:374\n123#1:384,9\n123#1:395\n134#1:409,9\n134#1:420\n189#1:451,9\n189#1:462\n218#1:485,10\n218#1:496,4\n224#1:512,11\n224#1:524,5\n229#1:534,9\n229#1:545\n233#1:551,9\n233#1:562\n122#1:379,4\n123#1:383\n129#1:400,4\n134#1:408\n146#1:425\n154#1:430\n171#1:435,4\n178#1:443\n180#1:444\n182#1:445\n189#1:450\n195#1:467\n197#1:468\n212#1:473,4\n218#1:481,4\n224#1:504\n224#1:505,7\n229#1:533\n233#1:550\n238#1:567\n243#1:572\n249#1:577\n251#1:578\n261#1:583\n263#1:584\n279#1:589\n281#1:590\n283#1:591\n285#1:592\n299#1:597\n301#1:598\n303#1:599\n317#1:604\n319#1:605\n*E\n"})
/* loaded from: classes.dex */
public final class ChangeList extends OperationsDebugStringFormattable {
    public static final int $stable = 8;
    @NotNull
    private final Operations operations = new Operations();

    public static /* synthetic */ void pushExecuteOperationsIn$default(ChangeList changeList, ChangeList changeList2, IntRef intRef, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            intRef = null;
        }
        changeList.pushExecuteOperationsIn(changeList2, intRef);
    }

    public final void clear() {
        this.operations.clear();
    }

    public final void executeAndFlushAllPendingChanges(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, rememberManager, operationErrorContext);
    }

    public final int getSize() {
        return this.operations.getSize();
    }

    public final boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final boolean isNotEmpty() {
        return this.operations.isNotEmpty();
    }

    public final void pushAdvanceSlotsBy(int i10) {
        Operations operations = this.operations;
        Operation.AdvanceSlotsBy advanceSlotsBy = Operation.AdvanceSlotsBy.INSTANCE;
        operations.pushOp(advanceSlotsBy);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(advanceSlotsBy);
    }

    public final void pushAppendValue(@NotNull Anchor anchor, @Nullable Object obj) {
        Operations operations = this.operations;
        Operation.AppendValue appendValue = Operation.AppendValue.INSTANCE;
        operations.pushOp(appendValue);
        Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), anchor, Operation.ObjectParameter.m1414constructorimpl(1), obj);
        operations.ensureAllArgumentsPushedFor(appendValue);
    }

    public final void pushCopyNodesToNewAnchorLocation(@NotNull List<? extends Object> list, @NotNull IntRef intRef) {
        if (!list.isEmpty()) {
            Operations operations = this.operations;
            Operation.CopyNodesToNewAnchorLocation copyNodesToNewAnchorLocation = Operation.CopyNodesToNewAnchorLocation.INSTANCE;
            operations.pushOp(copyNodesToNewAnchorLocation);
            Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(1), list, Operation.ObjectParameter.m1414constructorimpl(0), intRef);
            operations.ensureAllArgumentsPushedFor(copyNodesToNewAnchorLocation);
        }
    }

    public final void pushCopySlotTableToAnchorLocation(@Nullable MovableContentState movableContentState, @NotNull CompositionContext compositionContext, @NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentStateReference movableContentStateReference2) {
        Operations operations = this.operations;
        Operation.CopySlotTableToAnchorLocation copySlotTableToAnchorLocation = Operation.CopySlotTableToAnchorLocation.INSTANCE;
        operations.pushOp(copySlotTableToAnchorLocation);
        Operations.WriteScope.m1447setObjectsOGa0p1M(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), movableContentState, Operation.ObjectParameter.m1414constructorimpl(1), compositionContext, Operation.ObjectParameter.m1414constructorimpl(3), movableContentStateReference2, Operation.ObjectParameter.m1414constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(copySlotTableToAnchorLocation);
    }

    public final void pushDeactivateCurrentGroup() {
        this.operations.push(Operation.DeactivateCurrentGroup.INSTANCE);
    }

    public final void pushDetermineMovableContentNodeIndex(@NotNull IntRef intRef, @NotNull Anchor anchor) {
        Operations operations = this.operations;
        Operation.DetermineMovableContentNodeIndex determineMovableContentNodeIndex = Operation.DetermineMovableContentNodeIndex.INSTANCE;
        operations.pushOp(determineMovableContentNodeIndex);
        Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), intRef, Operation.ObjectParameter.m1414constructorimpl(1), anchor);
        operations.ensureAllArgumentsPushedFor(determineMovableContentNodeIndex);
    }

    public final void pushDowns(@NotNull Object[] objArr) {
        boolean z10;
        if (objArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            Operations operations = this.operations;
            Operation.Downs downs = Operation.Downs.INSTANCE;
            operations.pushOp(downs);
            Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), objArr);
            operations.ensureAllArgumentsPushedFor(downs);
        }
    }

    public final void pushEndCompositionScope(@NotNull Function1<? super Composition, Unit> function1, @NotNull Composition composition) {
        Operations operations = this.operations;
        Operation.EndCompositionScope endCompositionScope = Operation.EndCompositionScope.INSTANCE;
        operations.pushOp(endCompositionScope);
        Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), function1, Operation.ObjectParameter.m1414constructorimpl(1), composition);
        operations.ensureAllArgumentsPushedFor(endCompositionScope);
    }

    public final void pushEndCurrentGroup() {
        this.operations.push(Operation.EndCurrentGroup.INSTANCE);
    }

    public final void pushEndMovableContentPlacement() {
        this.operations.push(Operation.EndMovableContentPlacement.INSTANCE);
    }

    public final void pushEndResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.EndResumingScope endResumingScope = Operation.EndResumingScope.INSTANCE;
        operations.pushOp(endResumingScope);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(endResumingScope);
    }

    public final void pushEnsureGroupStarted(@NotNull Anchor anchor) {
        Operations operations = this.operations;
        Operation.EnsureGroupStarted ensureGroupStarted = Operation.EnsureGroupStarted.INSTANCE;
        operations.pushOp(ensureGroupStarted);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), anchor);
        operations.ensureAllArgumentsPushedFor(ensureGroupStarted);
    }

    public final void pushEnsureRootStarted() {
        this.operations.push(Operation.EnsureRootGroupStarted.INSTANCE);
    }

    public final void pushExecuteOperationsIn(@NotNull ChangeList changeList, @Nullable IntRef intRef) {
        if (changeList.isNotEmpty()) {
            Operations operations = this.operations;
            Operation.ApplyChangeList applyChangeList = Operation.ApplyChangeList.INSTANCE;
            operations.pushOp(applyChangeList);
            Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), changeList, Operation.ObjectParameter.m1414constructorimpl(1), intRef);
            operations.ensureAllArgumentsPushedFor(applyChangeList);
        }
    }

    public final void pushInsertSlots(@NotNull Anchor anchor, @NotNull SlotTable slotTable) {
        Operations operations = this.operations;
        Operation.InsertSlots insertSlots = Operation.InsertSlots.INSTANCE;
        operations.pushOp(insertSlots);
        Operations.WriteScope.m1446setObjects4uCC6AY(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), anchor, Operation.ObjectParameter.m1414constructorimpl(1), slotTable);
        operations.ensureAllArgumentsPushedFor(insertSlots);
    }

    public final void pushMoveCurrentGroup(int i10) {
        Operations operations = this.operations;
        Operation.MoveCurrentGroup moveCurrentGroup = Operation.MoveCurrentGroup.INSTANCE;
        operations.pushOp(moveCurrentGroup);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(moveCurrentGroup);
    }

    public final void pushMoveNode(int i10, int i11, int i12) {
        Operations operations = this.operations;
        Operation.MoveNode moveNode = Operation.MoveNode.INSTANCE;
        operations.pushOp(moveNode);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        int ints = m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = m1437constructorimpl.intArgs;
        iArr[ints + 1] = i10;
        iArr[ints] = i11;
        iArr[ints + 2] = i12;
        operations.ensureAllArgumentsPushedFor(moveNode);
    }

    public final void pushReleaseMovableGroupAtCurrent(@NotNull ControlledComposition controlledComposition, @NotNull CompositionContext compositionContext, @NotNull MovableContentStateReference movableContentStateReference) {
        Operations operations = this.operations;
        Operation.ReleaseMovableGroupAtCurrent releaseMovableGroupAtCurrent = Operation.ReleaseMovableGroupAtCurrent.INSTANCE;
        operations.pushOp(releaseMovableGroupAtCurrent);
        Operations.WriteScope.m1448setObjectst7hvbck(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), controlledComposition, Operation.ObjectParameter.m1414constructorimpl(1), compositionContext, Operation.ObjectParameter.m1414constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(releaseMovableGroupAtCurrent);
    }

    public final void pushRemember(@NotNull RememberObserverHolder rememberObserverHolder) {
        Operations operations = this.operations;
        Operation.Remember remember = Operation.Remember.INSTANCE;
        operations.pushOp(remember);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), rememberObserverHolder);
        operations.ensureAllArgumentsPushedFor(remember);
    }

    public final void pushRememberPausingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.RememberPausingScope rememberPausingScope = Operation.RememberPausingScope.INSTANCE;
        operations.pushOp(rememberPausingScope);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(rememberPausingScope);
    }

    public final void pushRemoveCurrentGroup() {
        this.operations.push(Operation.RemoveCurrentGroup.INSTANCE);
    }

    public final void pushRemoveNode(int i10, int i11) {
        Operations operations = this.operations;
        Operation.RemoveNode removeNode = Operation.RemoveNode.INSTANCE;
        operations.pushOp(removeNode);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        int ints = m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = m1437constructorimpl.intArgs;
        iArr[ints] = i10;
        iArr[ints + 1] = i11;
        operations.ensureAllArgumentsPushedFor(removeNode);
    }

    public final void pushResetSlots() {
        this.operations.push(Operation.ResetSlots.INSTANCE);
    }

    public final void pushSideEffect(@NotNull Function0<Unit> function0) {
        Operations operations = this.operations;
        Operation.SideEffect sideEffect = Operation.SideEffect.INSTANCE;
        operations.pushOp(sideEffect);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), function0);
        operations.ensureAllArgumentsPushedFor(sideEffect);
    }

    public final void pushSkipToEndOfCurrentGroup() {
        this.operations.push(Operation.SkipToEndOfCurrentGroup.INSTANCE);
    }

    public final void pushStartResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.StartResumingScope startResumingScope = Operation.StartResumingScope.INSTANCE;
        operations.pushOp(startResumingScope);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(startResumingScope);
    }

    public final void pushTrimValues(int i10) {
        Operations operations = this.operations;
        Operation.TrimParentValues trimParentValues = Operation.TrimParentValues.INSTANCE;
        operations.pushOp(trimParentValues);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(trimParentValues);
    }

    public final void pushUpdateAnchoredValue(@Nullable Object obj, @NotNull Anchor anchor, int i10) {
        Operations operations = this.operations;
        Operation.UpdateAnchoredValue updateAnchoredValue = Operation.UpdateAnchoredValue.INSTANCE;
        operations.pushOp(updateAnchoredValue);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        Operations.WriteScope.m1446setObjects4uCC6AY(m1437constructorimpl, Operation.ObjectParameter.m1414constructorimpl(0), obj, Operation.ObjectParameter.m1414constructorimpl(1), anchor);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(updateAnchoredValue);
    }

    public final void pushUpdateAuxData(@Nullable Object obj) {
        Operations operations = this.operations;
        Operation.UpdateAuxData updateAuxData = Operation.UpdateAuxData.INSTANCE;
        operations.pushOp(updateAuxData);
        Operations.WriteScope.m1445setObjectDKhxnng(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), obj);
        operations.ensureAllArgumentsPushedFor(updateAuxData);
    }

    public final <T, V> void pushUpdateNode(V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        Operations operations = this.operations;
        Operation.UpdateNode updateNode = Operation.UpdateNode.INSTANCE;
        operations.pushOp(updateNode);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        int m1414constructorimpl = Operation.ObjectParameter.m1414constructorimpl(0);
        int m1414constructorimpl2 = Operation.ObjectParameter.m1414constructorimpl(1);
        Intrinsics.checkNotNull(function2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
        Operations.WriteScope.m1446setObjects4uCC6AY(m1437constructorimpl, m1414constructorimpl, v10, m1414constructorimpl2, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
        operations.ensureAllArgumentsPushedFor(updateNode);
    }

    public final void pushUpdateValue(@Nullable Object obj, int i10) {
        Operations operations = this.operations;
        Operation.UpdateValue updateValue = Operation.UpdateValue.INSTANCE;
        operations.pushOp(updateValue);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl, Operation.ObjectParameter.m1414constructorimpl(0), obj);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(updateValue);
    }

    public final void pushUps(int i10) {
        Operations operations = this.operations;
        Operation.Ups ups = Operation.Ups.INSTANCE;
        operations.pushOp(ups);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        operations.ensureAllArgumentsPushedFor(ups);
    }

    public final void pushUseNode(@Nullable Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            this.operations.push(Operation.UseCurrentNode.INSTANCE);
        }
    }

    @Override // androidx.compose.runtime.changelist.OperationsDebugStringFormattable
    @NotNull
    public String toDebugString(@NotNull String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ChangeList instance containing ");
        sb2.append(getSize());
        sb2.append(" operations");
        if (sb2.length() > 0) {
            sb2.append(":\n");
            sb2.append(this.operations.toDebugString(str));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final void pushInsertSlots(@NotNull Anchor anchor, @NotNull SlotTable slotTable, @NotNull FixupList fixupList) {
        Operations operations = this.operations;
        Operation.InsertSlotsWithFixups insertSlotsWithFixups = Operation.InsertSlotsWithFixups.INSTANCE;
        operations.pushOp(insertSlotsWithFixups);
        Operations.WriteScope.m1448setObjectst7hvbck(Operations.WriteScope.m1437constructorimpl(operations), Operation.ObjectParameter.m1414constructorimpl(0), anchor, Operation.ObjectParameter.m1414constructorimpl(1), slotTable, Operation.ObjectParameter.m1414constructorimpl(2), fixupList);
        operations.ensureAllArgumentsPushedFor(insertSlotsWithFixups);
    }
}
