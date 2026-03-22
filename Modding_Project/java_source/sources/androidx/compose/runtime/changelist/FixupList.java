package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.changelist.Operation;
import androidx.compose.runtime.changelist.Operations;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FixupList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nFixupList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixupList.kt\nandroidx/compose/runtime/changelist/FixupList\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n+ 4 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertNodeFixup\n+ 5 Operations.kt\nandroidx/compose/runtime/changelist/Operations$WriteScope\n+ 6 Operation.kt\nandroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup\n+ 7 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n*L\n1#1,96:1\n4788#2,4:97\n4788#2,4:138\n204#3,2:101\n360#3:114\n357#3:115\n207#3,2:118\n204#3,2:120\n360#3:132\n357#3:133\n207#3,2:136\n204#3,2:142\n207#3,2:146\n701#4:103\n704#4:104\n707#4:117\n371#5,9:105\n380#5:116\n371#5,9:123\n380#5:134\n744#6:122\n747#6:135\n544#7:144\n547#7:145\n*S KotlinDebug\n*F\n+ 1 FixupList.kt\nandroidx/compose/runtime/changelist/FixupList\n*L\n50#1:97,4\n76#1:138,4\n63#1:101,2\n65#1:114\n65#1:115\n63#1:118,2\n69#1:120,2\n70#1:132\n70#1:133\n69#1:136,2\n83#1:142,2\n83#1:146,2\n64#1:103\n65#1:104\n66#1:117\n65#1:105,9\n65#1:116\n70#1:123,9\n70#1:134\n70#1:122\n71#1:135\n84#1:144\n85#1:145\n*E\n"})
/* loaded from: classes.dex */
public final class FixupList extends OperationsDebugStringFormattable {
    public static final int $stable = 8;
    @NotNull
    private final Operations operations = new Operations();
    @NotNull
    private final Operations pendingOperations = new Operations();

    public final void clear() {
        this.pendingOperations.clear();
        this.operations.clear();
    }

    public final void createAndInsertNode(@NotNull Function0<? extends Object> function0, int i10, @NotNull Anchor anchor) {
        Operations operations = this.operations;
        Operation.InsertNodeFixup insertNodeFixup = Operation.InsertNodeFixup.INSTANCE;
        operations.pushOp(insertNodeFixup);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl, Operation.ObjectParameter.m1414constructorimpl(0), function0);
        m1437constructorimpl.intArgs[m1437constructorimpl.intArgsSize - m1437constructorimpl.opCodes[m1437constructorimpl.opCodesSize - 1].getInts()] = i10;
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl, Operation.ObjectParameter.m1414constructorimpl(1), anchor);
        operations.ensureAllArgumentsPushedFor(insertNodeFixup);
        Operations operations2 = this.pendingOperations;
        Operation.PostInsertNodeFixup postInsertNodeFixup = Operation.PostInsertNodeFixup.INSTANCE;
        operations2.pushOp(postInsertNodeFixup);
        Operations m1437constructorimpl2 = Operations.WriteScope.m1437constructorimpl(operations2);
        m1437constructorimpl2.intArgs[m1437constructorimpl2.intArgsSize - m1437constructorimpl2.opCodes[m1437constructorimpl2.opCodesSize - 1].getInts()] = i10;
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl2, Operation.ObjectParameter.m1414constructorimpl(0), anchor);
        operations2.ensureAllArgumentsPushedFor(postInsertNodeFixup);
    }

    public final void endNodeInsert() {
        if (!this.pendingOperations.isNotEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.pendingOperations.popInto(this.operations);
    }

    public final void executeAndFlushAllPendingFixups(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
        if (!this.pendingOperations.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
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

    @Override // androidx.compose.runtime.changelist.OperationsDebugStringFormattable
    @NotNull
    public String toDebugString(@NotNull String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FixupList instance containing " + getSize() + " operations");
        if (sb2.length() > 0) {
            sb2.append(":\n" + this.operations.toDebugString(str));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final <V, T> void updateNode(V v10, @NotNull Function2<? super T, ? super V, Unit> function2) {
        Operations operations = this.operations;
        Operation.UpdateNode updateNode = Operation.UpdateNode.INSTANCE;
        operations.pushOp(updateNode);
        Operations m1437constructorimpl = Operations.WriteScope.m1437constructorimpl(operations);
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl, Operation.ObjectParameter.m1414constructorimpl(0), v10);
        int m1414constructorimpl = Operation.ObjectParameter.m1414constructorimpl(1);
        Intrinsics.checkNotNull(function2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
        Operations.WriteScope.m1445setObjectDKhxnng(m1437constructorimpl, m1414constructorimpl, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
        operations.ensureAllArgumentsPushedFor(updateNode);
    }
}
