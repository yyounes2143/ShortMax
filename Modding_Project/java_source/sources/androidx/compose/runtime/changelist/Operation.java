package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotTable;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.changelist.Operation;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import at.n;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: Operation.kt */
@StabilityInferred(parameters = 1)
@Metadata
@SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation\n+ 2 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n*L\n1#1,1151:1\n1104#2,6:1152\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation\n*L\n61#1:1152,6\n*E\n"})
/* loaded from: classes.dex */
public abstract class Operation {
    public static final int $stable = 0;
    private final int ints;
    private final int objects;

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy\n*L\n1#1,1151:1\n131#1:1152\n131#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy\n*L\n135#1:1152\n145#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class AdvanceSlotsBy extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final AdvanceSlotsBy INSTANCE = new AdvanceSlotsBy();

        private AdvanceSlotsBy() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.advanceBy(operationArgContainer.getInt(0));
        }

        public final int getDistance() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "distance";
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AppendValue\n*L\n1#1,1151:1\n257#1:1152\n260#1:1153\n257#1:1154\n260#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$AppendValue\n*L\n264#1:1152\n265#1:1153\n275#1:1154\n276#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class AppendValue extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final AppendValue INSTANCE = new AppendValue();

        private AppendValue() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Anchor anchor = (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            Object mo1434getObject31yXWZQ = operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            if (mo1434getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) mo1434getObject31yXWZQ);
            }
            slotWriter.appendSlot(anchor, mo1434getObject31yXWZQ);
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1389getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getValue-HpuvwBQ  reason: not valid java name */
        public final int m1390getValueHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "anchor";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ApplyChangeList\n*L\n1#1,1151:1\n981#1:1152\n984#1:1153\n984#1:1154\n981#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ApplyChangeList\n*L\n988#1:1152\n989#1:1153\n999#1:1154\n1001#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class ApplyChangeList extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final ApplyChangeList INSTANCE = new ApplyChangeList();

        private ApplyChangeList() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int i10;
            OperationErrorContext operationErrorContext2;
            IntRef intRef = (IntRef) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            if (intRef != null) {
                i10 = intRef.getElement();
            } else {
                i10 = 0;
            }
            ChangeList changeList = (ChangeList) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            if (i10 > 0) {
                applier = new OffsetApplier(applier, i10);
            }
            if (operationErrorContext != null) {
                operationErrorContext2 = OperationKt.withCurrentStackTrace(operationErrorContext, slotWriter);
            } else {
                operationErrorContext2 = null;
            }
            changeList.executeAndFlushAllPendingChanges(applier, slotWriter, rememberManager, operationErrorContext2);
        }

        /* renamed from: getChanges-HpuvwBQ  reason: not valid java name */
        public final int m1391getChangesHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getEffectiveNodeIndex-HpuvwBQ  reason: not valid java name */
        public final int m1392getEffectiveNodeIndexHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "changes";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "effectiveNodeIndex";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1151:1\n840#1:1152\n843#1:1153\n840#1:1154\n843#1:1155\n64#2,5:1156\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopyNodesToNewAnchorLocation\n*L\n847#1:1152\n848#1:1153\n858#1:1154\n859#1:1155\n861#1:1156,5\n*E\n"})
    /* loaded from: classes.dex */
    public static final class CopyNodesToNewAnchorLocation extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final CopyNodesToNewAnchorLocation INSTANCE = new CopyNodesToNewAnchorLocation();

        private CopyNodesToNewAnchorLocation() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int element = ((IntRef) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))).getElement();
            List list = (List) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = list.get(i10);
                Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
                int i11 = element + i10;
                applier.insertBottomUp(i11, obj);
                applier.insertTopDown(i11, obj);
            }
        }

        /* renamed from: getEffectiveNodeIndex-HpuvwBQ  reason: not valid java name */
        public final int m1393getEffectiveNodeIndexHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getNodes-HpuvwBQ  reason: not valid java name */
        public final int m1394getNodesHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "effectiveNodeIndex";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "nodes";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation\n*L\n1#1,1151:1\n872#1:1152\n875#1:1153\n878#1:1154\n881#1:1155\n878#1:1156\n881#1:1157\n875#1:1158\n872#1:1159\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation\n*L\n885#1:1152\n886#1:1153\n887#1:1154\n888#1:1155\n898#1:1156\n899#1:1157\n900#1:1158\n903#1:1159\n*E\n"})
    /* loaded from: classes.dex */
    public static final class CopySlotTableToAnchorLocation extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final CopySlotTableToAnchorLocation INSTANCE = new CopySlotTableToAnchorLocation();

        private CopySlotTableToAnchorLocation() {
            super(0, 4, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(2));
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(3));
            CompositionContext compositionContext = (CompositionContext) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            MovableContentState movableContentState = (MovableContentState) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            if (movableContentState == null && (movableContentState = compositionContext.movableContentStateResolve$runtime(movableContentStateReference)) == null) {
                ComposerKt.composeRuntimeError("Could not resolve state for movable content");
                throw new KotlinNothingValueException();
            }
            List<Anchor> moveIntoGroupFrom = slotWriter.moveIntoGroupFrom(1, movableContentState.getSlotTable$runtime(), 2);
            RecomposeScopeImpl.Companion companion = RecomposeScopeImpl.Companion;
            ControlledComposition composition$runtime = movableContentStateReference2.getComposition$runtime();
            Intrinsics.checkNotNull(composition$runtime, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeOwner");
            companion.adoptAnchoredScopes$runtime(slotWriter, moveIntoGroupFrom, (RecomposeScopeOwner) composition$runtime);
        }

        /* renamed from: getFrom-HpuvwBQ  reason: not valid java name */
        public final int m1395getFromHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(2);
        }

        /* renamed from: getParentCompositionContext-HpuvwBQ  reason: not valid java name */
        public final int m1396getParentCompositionContextHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        /* renamed from: getResolvedState-HpuvwBQ  reason: not valid java name */
        public final int m1397getResolvedStateHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getTo-HpuvwBQ  reason: not valid java name */
        public final int m1398getToHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(3);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "resolvedState";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "resolvedCompositionContext";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(2))) {
                return "from";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(3))) {
                return TypedValues.TransitionType.S_TO;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DeactivateCurrentGroup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final DeactivateCurrentGroup INSTANCE = new DeactivateCurrentGroup();

        private DeactivateCurrentGroup() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            ComposerKt.deactivateCurrentGroup(slotWriter, rememberManager);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex\n*L\n1#1,1151:1\n807#1:1152\n810#1:1153\n807#1:1154\n810#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$DetermineMovableContentNodeIndex\n*L\n814#1:1152\n815#1:1153\n825#1:1154\n830#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class DetermineMovableContentNodeIndex extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final DetermineMovableContentNodeIndex INSTANCE = new DetermineMovableContentNodeIndex();

        private DetermineMovableContentNodeIndex() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int positionToInsert;
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            positionToInsert = OperationKt.positionToInsert(slotWriter, (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1)), applier);
            ((IntRef) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))).setElement(positionToInsert);
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1399getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        /* renamed from: getEffectiveNodeIndexOut-HpuvwBQ  reason: not valid java name */
        public final int m1400getEffectiveNodeIndexOutHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "effectiveNodeIndexOut";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "anchor";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Downs\n*L\n1#1,1151:1\n107#1:1152\n107#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Downs\n*L\n111#1:1152\n122#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Downs extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final Downs INSTANCE = new Downs();

        private Downs() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            for (Object obj : (Object[]) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))) {
                applier.down(obj);
            }
        }

        /* renamed from: getNodes-HpuvwBQ  reason: not valid java name */
        public final int m1401getNodesHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "nodes";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndCompositionScope\n*L\n1#1,1151:1\n506#1:1152\n509#1:1153\n506#1:1154\n509#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndCompositionScope\n*L\n513#1:1152\n514#1:1153\n524#1:1154\n525#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class EndCompositionScope extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EndCompositionScope INSTANCE = new EndCompositionScope();

        private EndCompositionScope() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            ((Function1) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))).invoke((Composition) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1)));
        }

        /* renamed from: getAction-HpuvwBQ  reason: not valid java name */
        public final int m1402getActionHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getComposition-HpuvwBQ  reason: not valid java name */
        public final int m1403getCompositionHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "anchor";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "composition";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class EndCurrentGroup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EndCurrentGroup INSTANCE = new EndCurrentGroup();

        private EndCurrentGroup() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.endGroup();
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class EndMovableContentPlacement extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EndMovableContentPlacement INSTANCE = new EndMovableContentPlacement();

        private EndMovableContentPlacement() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            OperationKt.positionToParentOf(slotWriter, applier, 0);
            slotWriter.endGroup();
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndResumingScope\n*L\n1#1,1151:1\n236#1:1152\n236#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EndResumingScope\n*L\n240#1:1152\n250#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class EndResumingScope extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EndResumingScope INSTANCE = new EndResumingScope();

        private EndResumingScope() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            rememberManager.endResumingScope((RecomposeScopeImpl) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getScope-HpuvwBQ  reason: not valid java name */
        public final int m1404getScopeHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return CommonConstant.ReqAccessTokenParam.SCOPE_LABEL;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EnsureGroupStarted\n*L\n1#1,1151:1\n433#1:1152\n433#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$EnsureGroupStarted\n*L\n437#1:1152\n447#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class EnsureGroupStarted extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EnsureGroupStarted INSTANCE = new EnsureGroupStarted();

        private EnsureGroupStarted() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.ensureStarted((Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1405getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "anchor";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class EnsureRootGroupStarted extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final EnsureRootGroupStarted INSTANCE = new EnsureRootGroupStarted();

        private EnsureRootGroupStarted() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.ensureStarted(0);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertNodeFixup\n*L\n1#1,1151:1\n704#1:1152\n701#1:1153\n707#1:1154\n707#1:1155\n701#1:1156\n707#1:1157\n704#1:1158\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertNodeFixup\n*L\n711#1:1152\n717#1:1153\n718#1:1154\n723#1:1155\n731#1:1156\n732#1:1157\n733#1:1158\n*E\n"})
    /* loaded from: classes.dex */
    public static final class InsertNodeFixup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final InsertNodeFixup INSTANCE = new InsertNodeFixup();

        private InsertNodeFixup() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Object invoke = ((Function0) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))).invoke();
            int i10 = operationArgContainer.getInt(0);
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            slotWriter.updateNode((Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1)), invoke);
            applier.insertTopDown(i10, invoke);
            applier.down(invoke);
        }

        /* renamed from: getFactory-HpuvwBQ  reason: not valid java name */
        public final int m1406getFactoryHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @Nullable
        protected Anchor getGroupAnchor(@NotNull OperationArgContainer operationArgContainer, @NotNull SlotWriter slotWriter) {
            return (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
        }

        /* renamed from: getGroupAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1407getGroupAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "insertIndex";
            }
            return super.intParamName(i10);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "factory";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "groupAnchor";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlots\n*L\n1#1,1151:1\n622#1:1152\n625#1:1153\n625#1:1154\n622#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlots\n*L\n629#1:1152\n630#1:1153\n640#1:1154\n641#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class InsertSlots extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final InsertSlots INSTANCE = new InsertSlots();

        private InsertSlots() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            SlotTable slotTable = (SlotTable) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            slotWriter.beginInsert();
            slotWriter.moveFrom(slotTable, ((Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))).toIndexFor(slotTable), false);
            slotWriter.endInsert();
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1408getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getFromSlotTable-HpuvwBQ  reason: not valid java name */
        public final int m1409getFromSlotTableHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "anchor";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "from";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n655#1:1152\n658#1:1153\n661#1:1154\n658#1:1155\n655#1:1156\n661#1:1157\n175#2,4:1158\n180#2,3:1163\n1#3:1162\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups\n*L\n665#1:1152\n666#1:1153\n667#1:1154\n677#1:1155\n678#1:1156\n679#1:1157\n681#1:1158,4\n681#1:1163,3\n681#1:1162\n*E\n"})
    /* loaded from: classes.dex */
    public static final class InsertSlotsWithFixups extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final InsertSlotsWithFixups INSTANCE = new InsertSlotsWithFixups();

        private InsertSlotsWithFixups() {
            super(0, 3, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            OperationErrorContext withCurrentStackTrace;
            SlotTable slotTable = (SlotTable) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            Anchor anchor = (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            FixupList fixupList = (FixupList) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(2));
            SlotWriter openWriter = slotTable.openWriter();
            if (operationErrorContext != null) {
                try {
                    withCurrentStackTrace = OperationKt.withCurrentStackTrace(operationErrorContext, slotWriter);
                } catch (Throwable th2) {
                    openWriter.close(false);
                    throw th2;
                }
            } else {
                withCurrentStackTrace = null;
            }
            fixupList.executeAndFlushAllPendingFixups(applier, openWriter, rememberManager, withCurrentStackTrace);
            Unit unit = Unit.f60915a;
            openWriter.close(true);
            slotWriter.beginInsert();
            slotWriter.moveFrom(slotTable, anchor.toIndexFor(slotTable), false);
            slotWriter.endInsert();
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1410getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getFixups-HpuvwBQ  reason: not valid java name */
        public final int m1411getFixupsHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(2);
        }

        /* renamed from: getFromSlotTable-HpuvwBQ  reason: not valid java name */
        public final int m1412getFromSlotTableHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "anchor";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "from";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(2))) {
                return "fixups";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveCurrentGroup\n*L\n1#1,1151:1\n464#1:1152\n464#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveCurrentGroup\n*L\n468#1:1152\n478#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class MoveCurrentGroup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final MoveCurrentGroup INSTANCE = new MoveCurrentGroup();

        private MoveCurrentGroup() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.moveGroup(operationArgContainer.getInt(0));
        }

        public final int getOffset() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return TypedValues.CycleType.S_WAVE_OFFSET;
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n*L\n1#1,1151:1\n594#1:1152\n597#1:1153\n600#1:1154\n594#1,7:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$MoveNode\n*L\n604#1:1152\n605#1:1153\n606#1:1154\n616#1:1155,7\n*E\n"})
    /* loaded from: classes.dex */
    public static final class MoveNode extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final MoveNode INSTANCE = new MoveNode();

        private MoveNode() {
            super(3, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            applier.move(operationArgContainer.getInt(0), operationArgContainer.getInt(1), operationArgContainer.getInt(2));
        }

        public final int getCount() {
            return 2;
        }

        public final int getFrom() {
            return 0;
        }

        public final int getTo() {
            return 1;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "from";
            }
            if (i10 == 1) {
                return TypedValues.TransitionType.S_TO;
            }
            if (i10 == 2) {
                return MetricsSQLiteCacheKt.METRICS_COUNT;
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup\n*L\n1#1,1151:1\n744#1:1152\n747#1:1153\n747#1:1154\n747#1:1155\n744#1:1156\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup\n*L\n751#1:1152\n757#1:1153\n762#1:1154\n770#1:1155\n771#1:1156\n*E\n"})
    /* loaded from: classes.dex */
    public static final class PostInsertNodeFixup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final PostInsertNodeFixup INSTANCE = new PostInsertNodeFixup();

        private PostInsertNodeFixup() {
            super(1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int i10 = operationArgContainer.getInt(0);
            applier.up();
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            applier.insertBottomUp(i10, slotWriter.node((Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0))));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @Nullable
        protected Anchor getGroupAnchor(@NotNull OperationArgContainer operationArgContainer, @NotNull SlotWriter slotWriter) {
            return (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
        }

        /* renamed from: getGroupAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1420getGroupAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "insertIndex";
            }
            return super.intParamName(i10);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "groupAnchor";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent\n*L\n1#1,1151:1\n943#1:1152\n946#1:1153\n949#1:1154\n943#1:1155\n949#1:1156\n946#1:1157\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent\n*L\n953#1:1152\n954#1:1153\n955#1:1154\n965#1:1155\n966#1:1156\n967#1:1157\n*E\n"})
    /* loaded from: classes.dex */
    public static final class ReleaseMovableGroupAtCurrent extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final ReleaseMovableGroupAtCurrent INSTANCE = new ReleaseMovableGroupAtCurrent();

        private ReleaseMovableGroupAtCurrent() {
            super(0, 3, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(2));
            ((CompositionContext) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1))).movableContentStateReleased$runtime(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent((ControlledComposition) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)), movableContentStateReference, slotWriter, null), applier);
        }

        /* renamed from: getComposition-HpuvwBQ  reason: not valid java name */
        public final int m1421getCompositionHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        /* renamed from: getParentCompositionContext-HpuvwBQ  reason: not valid java name */
        public final int m1422getParentCompositionContextHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        /* renamed from: getReference-HpuvwBQ  reason: not valid java name */
        public final int m1423getReferenceHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(2);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "composition";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "parentCompositionContext";
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(2))) {
                return TypedValues.Custom.S_REFERENCE;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Remember\n*L\n1#1,1151:1\n174#1:1152\n174#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Remember\n*L\n178#1:1152\n188#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Remember extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final Remember INSTANCE = new Remember();

        private Remember() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            rememberManager.remembering((RememberObserverHolder) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getValue-HpuvwBQ  reason: not valid java name */
        public final int m1424getValueHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RememberPausingScope\n*L\n1#1,1151:1\n194#1:1152\n194#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RememberPausingScope\n*L\n198#1:1152\n208#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class RememberPausingScope extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final RememberPausingScope INSTANCE = new RememberPausingScope();

        private RememberPausingScope() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            rememberManager.rememberPausingScope((RecomposeScopeImpl) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getScope-HpuvwBQ  reason: not valid java name */
        public final int m1425getScopeHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return CommonConstant.ReqAccessTokenParam.SCOPE_LABEL;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class RemoveCurrentGroup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final RemoveCurrentGroup INSTANCE = new RemoveCurrentGroup();

        private RemoveCurrentGroup() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            ComposerKt.removeCurrentGroup(slotWriter, rememberManager);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RemoveNode\n*L\n1#1,1151:1\n570#1:1152\n573#1:1153\n570#1,4:1154\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$RemoveNode\n*L\n577#1:1152\n578#1:1153\n588#1:1154,4\n*E\n"})
    /* loaded from: classes.dex */
    public static final class RemoveNode extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final RemoveNode INSTANCE = new RemoveNode();

        private RemoveNode() {
            super(2, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            applier.remove(operationArgContainer.getInt(0), operationArgContainer.getInt(1));
        }

        public final int getCount() {
            return 1;
        }

        public final int getRemoveIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "removeIndex";
            }
            if (i10 == 1) {
                return MetricsSQLiteCacheKt.METRICS_COUNT;
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class ResetSlots extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final ResetSlots INSTANCE = new ResetSlots();

        private ResetSlots() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.reset();
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$SideEffect\n*L\n1#1,1151:1\n154#1:1152\n154#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$SideEffect\n*L\n158#1:1152\n168#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class SideEffect extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final SideEffect INSTANCE = new SideEffect();

        private SideEffect() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            rememberManager.sideEffect((Function0) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getEffect-HpuvwBQ  reason: not valid java name */
        public final int m1426getEffectHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "effect";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class SkipToEndOfCurrentGroup extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final SkipToEndOfCurrentGroup INSTANCE = new SkipToEndOfCurrentGroup();

        private SkipToEndOfCurrentGroup() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.skipToGroupEnd();
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$StartResumingScope\n*L\n1#1,1151:1\n215#1:1152\n215#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$StartResumingScope\n*L\n219#1:1152\n229#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class StartResumingScope extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final StartResumingScope INSTANCE = new StartResumingScope();

        private StartResumingScope() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            rememberManager.startResumingScope((RecomposeScopeImpl) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getScope-HpuvwBQ  reason: not valid java name */
        public final int m1427getScopeHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return CommonConstant.ReqAccessTokenParam.SCOPE_LABEL;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$TestOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n1#2:1152\n*E\n"})
    /* loaded from: classes.dex */
    public static final class TestOperation extends Operation {
        public static final int $stable = 8;
        @NotNull
        private final n<Applier<?>, SlotWriter, RememberManager, Unit> block;
        @NotNull
        private final List<Integer> intParams;
        @NotNull
        private final List<ObjectParameter<Object>> objParams;

        @TestOnly
        public TestOperation() {
            this(0, 0, null, 7, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit _init_$lambda$0(Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            return Unit.f60915a;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            this.block.invoke(applier, slotWriter, rememberManager);
        }

        @NotNull
        public final n<Applier<?>, SlotWriter, RememberManager, Unit> getBlock() {
            return this.block;
        }

        @NotNull
        public final List<Integer> getIntParams() {
            return this.intParams;
        }

        @NotNull
        public final List<ObjectParameter<Object>> getObjParams() {
            return this.objParams;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String toString() {
            return "TestOperation(ints = " + getInts() + ", objects = " + getObjects() + ")@" + System_jvmKt.identityHashCode(this);
        }

        public /* synthetic */ TestOperation(int i10, int i11, n nVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? new n() { // from class: androidx.compose.runtime.changelist.a
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit _init_$lambda$0;
                    _init_$lambda$0 = Operation.TestOperation._init_$lambda$0((Applier) obj, (SlotWriter) obj2, (RememberManager) obj3);
                    return _init_$lambda$0;
                }
            } : nVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @TestOnly
        public TestOperation(int i10, int i11, @NotNull n<? super Applier<?>, ? super SlotWriter, ? super RememberManager, Unit> nVar) {
            super(i10, i11, null);
            this.block = nVar;
            ArrayList arrayList = new ArrayList(i10);
            for (int i12 = 0; i12 < i10; i12++) {
                arrayList.add(Integer.valueOf(i12));
            }
            this.intParams = arrayList;
            ArrayList arrayList2 = new ArrayList(i11);
            for (int i13 = 0; i13 < i11; i13++) {
                arrayList2.add(ObjectParameter.m1413boximpl(ObjectParameter.m1414constructorimpl(i13)));
            }
            this.objParams = arrayList2;
        }

        public static /* synthetic */ void getIntParams$annotations() {
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$TrimParentValues\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1#1,1151:1\n286#1:1152\n286#1:1153\n1695#2,6:1154\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$TrimParentValues\n*L\n290#1:1152\n300#1:1153\n301#1:1154,6\n*E\n"})
    /* loaded from: classes.dex */
    public static final class TrimParentValues extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final TrimParentValues INSTANCE = new TrimParentValues();

        private TrimParentValues() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int i10 = operationArgContainer.getInt(0);
            int parent = slotWriter.getParent();
            int slotsStartIndex$runtime = slotWriter.slotsStartIndex$runtime(parent);
            int slotsEndIndex$runtime = slotWriter.slotsEndIndex$runtime(parent);
            for (int max = Math.max(slotsStartIndex$runtime, slotsEndIndex$runtime - i10); max < slotsEndIndex$runtime; max++) {
                Object obj = slotWriter.slots[slotWriter.dataIndexToDataAddress(max)];
                if (obj instanceof RememberObserverHolder) {
                    rememberManager.forgetting((RememberObserverHolder) obj);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).release();
                }
            }
            slotWriter.trimTailSlots(i10);
        }

        public final int getCount() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return MetricsSQLiteCacheKt.METRICS_COUNT;
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue\n*L\n1#1,1151:1\n360#1:1152\n354#1:1153\n357#1:1154\n354#1:1155\n357#1:1156\n360#1:1157\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue\n*L\n364#1:1152\n370#1:1153\n371#1:1154\n381#1:1155\n382#1:1156\n383#1:1157\n*E\n"})
    /* loaded from: classes.dex */
    public static final class UpdateAnchoredValue extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final UpdateAnchoredValue INSTANCE = new UpdateAnchoredValue();

        private UpdateAnchoredValue() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Object mo1434getObject31yXWZQ = operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            Anchor anchor = (Anchor) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1));
            int i10 = operationArgContainer.getInt(0);
            if (mo1434getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) mo1434getObject31yXWZQ);
            }
            Object obj = slotWriter.set(slotWriter.anchorIndex(anchor), i10, mo1434getObject31yXWZQ);
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) obj);
            } else if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        /* renamed from: getAnchor-HpuvwBQ  reason: not valid java name */
        public final int m1428getAnchorHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        public final int getGroupSlotIndex() {
            return 0;
        }

        /* renamed from: getValue-HpuvwBQ  reason: not valid java name */
        public final int m1429getValueHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "groupSlotIndex";
            }
            return super.intParamName(i10);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "anchor";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAuxData\n*L\n1#1,1151:1\n402#1:1152\n402#1:1153\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateAuxData\n*L\n406#1:1152\n416#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class UpdateAuxData extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final UpdateAuxData INSTANCE = new UpdateAuxData();

        private UpdateAuxData() {
            super(0, 1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            slotWriter.updateAux(operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getData-HpuvwBQ  reason: not valid java name */
        public final int m1430getDataHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return "data";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n*L\n1#1,1151:1\n544#1:1152\n547#1:1153\n544#1:1154\n547#1:1155\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n*L\n551#1:1152\n552#1:1153\n562#1:1154\n563#1:1155\n*E\n"})
    /* loaded from: classes.dex */
    public static final class UpdateNode extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final UpdateNode INSTANCE = new UpdateNode();

        private UpdateNode() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            applier.apply((Function2) operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(1)), operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0)));
        }

        /* renamed from: getBlock-HpuvwBQ  reason: not valid java name */
        public final int m1431getBlockHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(1);
        }

        /* renamed from: getValue-HpuvwBQ  reason: not valid java name */
        public final int m1432getValueHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(1))) {
                return "block";
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateValue\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1#1,1151:1\n318#1:1152\n315#1:1153\n315#1:1154\n318#1:1155\n1628#2:1156\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateValue\n*L\n322#1:1152\n328#1:1153\n338#1:1154\n339#1:1155\n343#1:1156\n*E\n"})
    /* loaded from: classes.dex */
    public static final class UpdateValue extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final UpdateValue INSTANCE = new UpdateValue();

        private UpdateValue() {
            super(1, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            Object mo1434getObject31yXWZQ = operationArgContainer.mo1434getObject31yXWZQ(ObjectParameter.m1414constructorimpl(0));
            int i10 = operationArgContainer.getInt(0);
            if (mo1434getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) mo1434getObject31yXWZQ);
            }
            Object obj = slotWriter.set(slotWriter.getCurrentGroup(), i10, mo1434getObject31yXWZQ);
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) obj);
            } else if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        public final int getGroupSlotIndex() {
            return 0;
        }

        /* renamed from: getValue-HpuvwBQ  reason: not valid java name */
        public final int m1433getValueHpuvwBQ() {
            return ObjectParameter.m1414constructorimpl(0);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return "groupSlotIndex";
            }
            return super.intParamName(i10);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1388objectParamName31yXWZQ(int i10) {
            if (ObjectParameter.m1416equalsimpl0(i10, ObjectParameter.m1414constructorimpl(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return super.mo1388objectParamName31yXWZQ(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    @SourceDebugExtension({"SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Ups\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1151:1\n87#1:1152\n87#1:1153\n1#2:1154\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/Operation$Ups\n*L\n91#1:1152\n101#1:1153\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Ups extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final Ups INSTANCE = new Ups();

        private Ups() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            int i10 = operationArgContainer.getInt(0);
            for (int i11 = 0; i11 < i10; i11++) {
                applier.up();
            }
        }

        public final int getCount() {
            return 0;
        }

        @Override // androidx.compose.runtime.changelist.Operation
        @NotNull
        public String intParamName(int i10) {
            if (i10 == 0) {
                return MetricsSQLiteCacheKt.METRICS_COUNT;
            }
            return super.intParamName(i10);
        }
    }

    /* compiled from: Operation.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class UseCurrentNode extends Operation {
        public static final int $stable = 0;
        @NotNull
        public static final UseCurrentNode INSTANCE = new UseCurrentNode();

        private UseCurrentNode() {
            super(0, 0, 3, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        protected void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
            applier.reuse();
        }
    }

    public /* synthetic */ Operation(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11);
    }

    protected abstract void execute(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext);

    public final void executeWithComposeStackTrace(@NotNull OperationArgContainer operationArgContainer, @NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager, @Nullable OperationErrorContext operationErrorContext) {
        Anchor groupAnchor = getGroupAnchor(operationArgContainer, slotWriter);
        try {
            execute(operationArgContainer, applier, slotWriter, rememberManager, operationErrorContext);
        } catch (Throwable th2) {
            throw OperationKt.attachComposeStackTrace(th2, operationErrorContext, slotWriter, groupAnchor);
        }
    }

    @Nullable
    protected Anchor getGroupAnchor(@NotNull OperationArgContainer operationArgContainer, @NotNull SlotWriter slotWriter) {
        return null;
    }

    public final int getInts() {
        return this.ints;
    }

    @NotNull
    public final String getName() {
        String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
        if (simpleName == null) {
            return "";
        }
        return simpleName;
    }

    public final int getObjects() {
        return this.objects;
    }

    @NotNull
    public String intParamName(int i10) {
        return "IntParameter(" + i10 + ')';
    }

    @NotNull
    /* renamed from: objectParamName-31yXWZQ  reason: not valid java name */
    public String mo1388objectParamName31yXWZQ(int i10) {
        return "ObjectParameter(" + i10 + ')';
    }

    @NotNull
    public String toString() {
        return getName();
    }

    private Operation(int i10, int i11) {
        this.ints = i10;
        this.objects = i11;
    }

    public /* synthetic */ Operation(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11, null);
    }

    /* compiled from: Operation.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class ObjectParameter<T> {
        private final int offset;

        private /* synthetic */ ObjectParameter(int i10) {
            this.offset = i10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ ObjectParameter m1413boximpl(int i10) {
            return new ObjectParameter(i10);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m1415equalsimpl(int i10, Object obj) {
            if (!(obj instanceof ObjectParameter) || i10 != ((ObjectParameter) obj).m1419unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m1416equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m1417hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        /* renamed from: toString-impl  reason: not valid java name */
        public static String m1418toStringimpl(int i10) {
            return "ObjectParameter(offset=" + i10 + ')';
        }

        public boolean equals(Object obj) {
            return m1415equalsimpl(this.offset, obj);
        }

        public final int getOffset() {
            return this.offset;
        }

        public int hashCode() {
            return m1417hashCodeimpl(this.offset);
        }

        public String toString() {
            return m1418toStringimpl(this.offset);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ int m1419unboximpl() {
            return this.offset;
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        public static <T> int m1414constructorimpl(int i10) {
            return i10;
        }
    }
}
