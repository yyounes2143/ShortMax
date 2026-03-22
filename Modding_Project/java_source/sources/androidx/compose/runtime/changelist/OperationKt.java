package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: Operation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1151:1\n4809#2:1152\n4788#2,4:1153\n4809#2:1157\n4788#2,4:1158\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n*L\n1078#1:1152\n1078#1:1153,4\n1094#1:1157\n1094#1:1158,4\n*E\n"})
/* loaded from: classes.dex */
public final class OperationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable attachComposeStackTrace(Throwable th2, final OperationErrorContext operationErrorContext, final SlotWriter slotWriter, final Anchor anchor) {
        if (operationErrorContext == null) {
            return th2;
        }
        return ComposeStackTraceKt.attachComposeStackTrace(th2, new Function0() { // from class: androidx.compose.runtime.changelist.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List attachComposeStackTrace$lambda$1;
                attachComposeStackTrace$lambda$1 = OperationKt.attachComposeStackTrace$lambda$1(Anchor.this, slotWriter, operationErrorContext);
                return attachComposeStackTrace$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List attachComposeStackTrace$lambda$1(Anchor anchor, SlotWriter slotWriter, OperationErrorContext operationErrorContext) {
        Integer num;
        if (anchor != null) {
            slotWriter.seek(anchor);
        }
        List buildTrace$default = ComposeStackTraceBuilderKt.buildTrace$default(slotWriter, null, 0, null, 7, null);
        ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) CollectionsKt.D0(buildTrace$default);
        if (composeStackTraceFrame != null) {
            num = composeStackTraceFrame.getGroupOffset();
        } else {
            num = null;
        }
        List<ComposeStackTraceFrame> buildStackTrace = operationErrorContext.buildStackTrace(num);
        if (num != null && !buildStackTrace.isEmpty()) {
            buildStackTrace = CollectionsKt.K0(CollectionsKt.e(ComposeStackTraceFrame.copy$default((ComposeStackTraceFrame) CollectionsKt.r0(buildStackTrace), null, num, 1, null)), CollectionsKt.j0(buildStackTrace, 1));
        }
        return CollectionsKt.K0(buildTrace$default, buildStackTrace);
    }

    private static final int currentNodeIndex(SlotWriter slotWriter) {
        int nodeCount;
        int currentGroup = slotWriter.getCurrentGroup();
        int parent = slotWriter.getParent();
        while (parent >= 0 && !slotWriter.isNode(parent)) {
            parent = slotWriter.parent(parent);
        }
        int i10 = parent + 1;
        int i11 = 0;
        while (i10 < currentGroup) {
            if (slotWriter.indexInGroup(currentGroup, i10)) {
                if (slotWriter.isNode(i10)) {
                    i11 = 0;
                }
                i10++;
            } else {
                if (slotWriter.isNode(i10)) {
                    nodeCount = 1;
                } else {
                    nodeCount = slotWriter.nodeCount(i10);
                }
                i11 += nodeCount;
                i10 += slotWriter.groupSize(i10);
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int positionToInsert(SlotWriter slotWriter, Anchor anchor, Applier<Object> applier) {
        boolean z10;
        int anchorIndex = slotWriter.anchorIndex(anchor);
        boolean z11 = true;
        if (slotWriter.getCurrentGroup() < anchorIndex) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        positionToParentOf(slotWriter, applier, anchorIndex);
        int currentNodeIndex = currentNodeIndex(slotWriter);
        while (slotWriter.getCurrentGroup() < anchorIndex) {
            if (slotWriter.indexInCurrentGroup(anchorIndex)) {
                if (slotWriter.isNode()) {
                    applier.down(slotWriter.node(slotWriter.getCurrentGroup()));
                    currentNodeIndex = 0;
                }
                slotWriter.startGroup();
            } else {
                currentNodeIndex += slotWriter.skipGroup();
            }
        }
        if (slotWriter.getCurrentGroup() != anchorIndex) {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        return currentNodeIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void positionToParentOf(SlotWriter slotWriter, Applier<Object> applier, int i10) {
        while (!slotWriter.indexInParent(i10)) {
            slotWriter.skipToGroupEnd();
            if (slotWriter.isNode(slotWriter.getParent())) {
                applier.up();
            }
            slotWriter.endGroup();
        }
    }

    private static final void withCurrentStackTrace(OperationErrorContext operationErrorContext, SlotWriter slotWriter, Anchor anchor, Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Throwable th2) {
            throw attachComposeStackTrace(th2, operationErrorContext, slotWriter, anchor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OperationErrorContext withCurrentStackTrace(final OperationErrorContext operationErrorContext, final SlotWriter slotWriter) {
        return new OperationErrorContext() { // from class: androidx.compose.runtime.changelist.OperationKt$withCurrentStackTrace$1
            @Override // androidx.compose.runtime.changelist.OperationErrorContext
            public List<ComposeStackTraceFrame> buildStackTrace(Integer num) {
                List<ComposeStackTraceFrame> buildStackTrace = OperationErrorContext.this.buildStackTrace(null);
                int parent = slotWriter.getParent();
                if (parent < 0) {
                    return buildStackTrace;
                }
                SlotWriter slotWriter2 = slotWriter;
                return CollectionsKt.K0(ComposeStackTraceBuilderKt.buildTrace(slotWriter2, num, parent, Integer.valueOf(slotWriter2.parent(parent))), buildStackTrace);
            }
        };
    }
}
