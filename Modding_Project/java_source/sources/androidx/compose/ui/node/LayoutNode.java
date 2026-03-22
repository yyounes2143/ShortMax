package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusOrderModifierToProperties;
import androidx.compose.ui.focus.FocusPropertiesModifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutNode implements Measurable, Remeasurement, OwnerScope, LayoutInfo, ComposeUiNode, Owner.OnLayoutCompletedListener {
    public static final int NotPlacedPlaceOrder = Integer.MAX_VALUE;
    @NotNull
    private final Comparator<LayoutNode> ZComparator;
    @NotNull
    private final MutableVector<LayoutNode> _foldedChildren;
    @Nullable
    private LayoutNode _foldedParent;
    @Nullable
    private LayoutNodeWrapper _innerLayerWrapper;
    @Nullable
    private MutableVector<LayoutNode> _unfoldedChildren;
    @NotNull
    private final MutableVector<LayoutNode> _zSortedChildren;
    @NotNull
    private final LayoutNodeAlignmentLines alignmentLines;
    private boolean canMultiMeasure;
    @NotNull
    private Density density;
    private int depth;
    private boolean ignoreRemeasureRequests;
    private boolean innerLayerWrapperIsDirty;
    @NotNull
    private final LayoutNodeWrapper innerLayoutNodeWrapper;
    @NotNull
    private final IntrinsicsPolicy intrinsicsPolicy;
    @NotNull
    private UsageByParent intrinsicsUsageByParent;
    private boolean isPlaced;
    private final boolean isVirtual;
    @NotNull
    private LayoutDirection layoutDirection;
    private boolean layoutPending;
    @NotNull
    private LayoutState layoutState;
    private boolean measurePending;
    @NotNull
    private MeasurePolicy measurePolicy;
    @NotNull
    private final MeasureScope measureScope;
    @NotNull
    private UsageByParent measuredByParent;
    @NotNull
    private Modifier modifier;
    @NotNull
    private final ModifierLocalProviderEntity modifierLocalsHead;
    @NotNull
    private ModifierLocalProviderEntity modifierLocalsTail;
    private boolean needsOnPositionedDispatch;
    private int nextChildPlaceOrder;
    @Nullable
    private Function1<? super Owner, Unit> onAttach;
    @Nullable
    private Function1<? super Owner, Unit> onDetach;
    @Nullable
    private MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> onPositionedCallbacks;
    @NotNull
    private final OuterMeasurablePlaceable outerMeasurablePlaceable;
    @Nullable
    private Owner owner;
    private int placeOrder;
    @NotNull
    private UsageByParent previousIntrinsicsUsageByParent;
    private int previousPlaceOrder;
    private boolean relayoutWithoutParentInProgress;
    @Nullable
    private LayoutNodeSubcompositionsState subcompositionsState;
    private boolean unfoldedVirtualChildrenListDirty;
    @NotNull
    private ViewConfiguration viewConfiguration;
    private int virtualChildrenCount;
    @NotNull
    private MutableVector<ModifiedLayoutNode> wrapperCache;
    private float zIndex;
    private boolean zSortedChildrenInvalidated;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final NoIntrinsicsMeasurePolicy ErrorMeasurePolicy = new NoIntrinsicsMeasurePolicy() { // from class: androidx.compose.ui.node.LayoutNode$Companion$ErrorMeasurePolicy$1
        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* renamed from: measure-3p2s80s */
        public /* bridge */ /* synthetic */ MeasureResult mo42measure3p2s80s(MeasureScope measureScope, List list, long j10) {
            return (MeasureResult) m3465measure3p2s80s(measureScope, (List<? extends Measurable>) list, j10);
        }

        @NotNull
        /* renamed from: measure-3p2s80s  reason: not valid java name */
        public Void m3465measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
            Intrinsics.checkNotNullParameter(measure, "$this$measure");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException("Undefined measure and it is required");
        }
    };
    @NotNull
    private static final Function0<LayoutNode> Constructor = new Function0<LayoutNode>() { // from class: androidx.compose.ui.node.LayoutNode$Companion$Constructor$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final LayoutNode invoke() {
            return new LayoutNode(false, 1, null);
        }
    };
    @NotNull
    private static final ViewConfiguration DummyViewConfiguration = new ViewConfiguration() { // from class: androidx.compose.ui.node.LayoutNode$Companion$DummyViewConfiguration$1
        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long getDoubleTapMinTimeMillis() {
            return 40L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long getDoubleTapTimeoutMillis() {
            return 300L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long getLongPressTimeoutMillis() {
            return 400L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        /* renamed from: getMinimumTouchTargetSize-MYxV2XQ  reason: not valid java name */
        public long mo3464getMinimumTouchTargetSizeMYxV2XQ() {
            return DpSize.Companion.m4157getZeroMYxV2XQ();
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public float getTouchSlop() {
            return 16.0f;
        }
    };
    @NotNull
    private static final ProvidableModifierLocal ModifierLocalNothing = ModifierLocalKt.modifierLocalOf(new Function0() { // from class: androidx.compose.ui.node.LayoutNode$Companion$ModifierLocalNothing$1
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Void invoke() {
            throw new IllegalStateException("default value for sentinel shouldn't be read");
        }
    });
    @NotNull
    private static final LayoutNode$Companion$SentinelModifierLocalProvider$1 SentinelModifierLocalProvider = new ModifierLocalProvider() { // from class: androidx.compose.ui.node.LayoutNode$Companion$SentinelModifierLocalProvider$1
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal getKey() {
            ProvidableModifierLocal providableModifierLocal;
            providableModifierLocal = LayoutNode.ModifierLocalNothing;
            return providableModifierLocal;
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public Void getValue() {
            throw new IllegalStateException("Sentinel ModifierLocal shouldn't be read");
        }
    };

    /* compiled from: LayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Function0<LayoutNode> getConstructor$ui_release() {
            return LayoutNode.Constructor;
        }

        @NotNull
        public final ViewConfiguration getDummyViewConfiguration$ui_release() {
            return LayoutNode.DummyViewConfiguration;
        }

        private Companion() {
        }
    }

    /* compiled from: LayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum LayoutState {
        Measuring,
        LayingOut,
        Idle
    }

    /* compiled from: LayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {
        @NotNull
        private final String error;

        public NoIntrinsicsMeasurePolicy(@NotNull String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) m3466maxIntrinsicHeight(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) m3467maxIntrinsicWidth(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) m3468minIntrinsicHeight(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) m3469minIntrinsicWidth(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i10)).intValue();
        }

        @NotNull
        /* renamed from: maxIntrinsicHeight  reason: collision with other method in class */
        public Void m3466maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        /* renamed from: maxIntrinsicWidth  reason: collision with other method in class */
        public Void m3467maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        /* renamed from: minIntrinsicHeight  reason: collision with other method in class */
        public Void m3468minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        /* renamed from: minIntrinsicWidth  reason: collision with other method in class */
        public Void m3469minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }
    }

    /* compiled from: LayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum UsageByParent {
        InMeasureBlock,
        InLayoutBlock,
        NotUsed
    }

    /* compiled from: LayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutState.values().length];
            iArr[LayoutState.Idle.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LayoutNode() {
        this(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZComparator$lambda-52  reason: not valid java name */
    public static final int m3456ZComparator$lambda52(LayoutNode layoutNode, LayoutNode layoutNode2) {
        float f10 = layoutNode.zIndex;
        float f11 = layoutNode2.zIndex;
        if (f10 == f11) {
            return Intrinsics.compare(layoutNode.placeOrder, layoutNode2.placeOrder);
        }
        return Float.compare(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addModifierLocalConsumer(ModifierLocalConsumer modifierLocalConsumer, ModifierLocalProviderEntity modifierLocalProviderEntity, MutableVector<ModifierLocalConsumerEntity> mutableVector) {
        int i10;
        ModifierLocalConsumerEntity removeAt;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifierLocalConsumerEntity[] content = mutableVector.getContent();
            i10 = 0;
            while (content[i10].getModifier() != modifierLocalConsumer) {
                i10++;
                if (i10 >= size) {
                    i10 = -1;
                    break;
                }
            }
        } else {
            i10 = -1;
            break;
        }
        if (i10 < 0) {
            removeAt = new ModifierLocalConsumerEntity(modifierLocalProviderEntity, modifierLocalConsumer);
        } else {
            removeAt = mutableVector.removeAt(i10);
            removeAt.setProvider(modifierLocalProviderEntity);
        }
        modifierLocalProviderEntity.getConsumers().add(removeAt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ModifierLocalProviderEntity addModifierLocalProvider(ModifierLocalProvider<?> modifierLocalProvider, ModifierLocalProviderEntity modifierLocalProviderEntity) {
        ModifierLocalProviderEntity next = modifierLocalProviderEntity.getNext();
        while (next != null && next.getModifier() != modifierLocalProvider) {
            next = next.getNext();
        }
        if (next == null) {
            next = new ModifierLocalProviderEntity(this, modifierLocalProvider);
        } else {
            ModifierLocalProviderEntity prev = next.getPrev();
            if (prev != null) {
                prev.setNext(next.getNext());
            }
            ModifierLocalProviderEntity next2 = next.getNext();
            if (next2 != null) {
                next2.setPrev(next.getPrev());
            }
        }
        next.setNext(modifierLocalProviderEntity.getNext());
        ModifierLocalProviderEntity next3 = modifierLocalProviderEntity.getNext();
        if (next3 != null) {
            next3.setPrev(next);
        }
        modifierLocalProviderEntity.setNext(next);
        next.setPrev(modifierLocalProviderEntity);
        return next;
    }

    private final void alignmentLinesQueriedByModifier() {
        if (this.layoutState == LayoutState.Measuring) {
            this.alignmentLines.setUsedByModifierMeasurement$ui_release(true);
            if (this.alignmentLines.getDirty$ui_release()) {
                markLayoutPending$ui_release();
                return;
            }
            return;
        }
        this.alignmentLines.setUsedByModifierLayout$ui_release(true);
    }

    private final void clearSubtreeIntrinsicsUsage() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        this.intrinsicsUsageByParent = UsageByParent.NotUsed;
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode = content[i10];
                if (layoutNode.intrinsicsUsageByParent != UsageByParent.NotUsed) {
                    layoutNode.clearSubtreeIntrinsicsUsage();
                }
                i10++;
            } while (i10 < size);
        }
    }

    private final void clearSubtreePlacementIntrinsicsUsage() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        this.intrinsicsUsageByParent = UsageByParent.NotUsed;
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode = content[i10];
                if (layoutNode.intrinsicsUsageByParent == UsageByParent.InLayoutBlock) {
                    layoutNode.clearSubtreePlacementIntrinsicsUsage();
                }
                i10++;
            } while (i10 < size);
        }
    }

    private final void copyWrappersToCache() {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) outerLayoutNodeWrapper$ui_release;
            this.wrapperCache.add(modifiedLayoutNode);
            outerLayoutNodeWrapper$ui_release = modifiedLayoutNode.getWrapped$ui_release();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String debugTreeToString(int r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            r2 = r1
        L7:
            if (r2 >= r8) goto L11
            java.lang.String r3 = "  "
            r0.append(r3)
            int r2 = r2 + 1
            goto L7
        L11:
            java.lang.String r2 = "|-"
            r0.append(r2)
            java.lang.String r2 = r7.toString()
            r0.append(r2)
            r2 = 10
            r0.append(r2)
            androidx.compose.runtime.collection.MutableVector r2 = r7.get_children$ui_release()
            int r3 = r2.getSize()
            if (r3 <= 0) goto L42
            java.lang.Object[] r2 = r2.getContent()
            r4 = r1
        L31:
            r5 = r2[r4]
            androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
            int r6 = r8 + 1
            java.lang.String r5 = r5.debugTreeToString(r6)
            r0.append(r5)
            int r4 = r4 + 1
            if (r4 < r3) goto L31
        L42:
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "tree.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            if (r8 != 0) goto L5c
            int r8 = r0.length()
            int r8 = r8 + (-1)
            java.lang.String r0 = r0.substring(r1, r8)
            java.lang.String r8 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r8)
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.debugTreeToString(int):java.lang.String");
    }

    static /* synthetic */ String debugTreeToString$default(LayoutNode layoutNode, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return layoutNode.debugTreeToString(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FocusPropertiesModifier findFocusPropertiesModifier(FocusOrderModifier focusOrderModifier, MutableVector<ModifierLocalConsumerEntity> mutableVector) {
        ModifierLocalConsumerEntity modifierLocalConsumerEntity;
        ModifierLocalConsumer modifierLocalConsumer;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifierLocalConsumerEntity[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                modifierLocalConsumerEntity = content[i10];
                ModifierLocalConsumerEntity modifierLocalConsumerEntity2 = modifierLocalConsumerEntity;
                if ((modifierLocalConsumerEntity2.getModifier() instanceof FocusPropertiesModifier) && (((FocusPropertiesModifier) modifierLocalConsumerEntity2.getModifier()).getFocusPropertiesScope() instanceof FocusOrderModifierToProperties) && ((FocusOrderModifierToProperties) ((FocusPropertiesModifier) modifierLocalConsumerEntity2.getModifier()).getFocusPropertiesScope()).getModifier() == focusOrderModifier) {
                    break;
                }
                i10++;
            } while (i10 < size);
            modifierLocalConsumerEntity = null;
        } else {
            modifierLocalConsumerEntity = null;
        }
        ModifierLocalConsumerEntity modifierLocalConsumerEntity3 = modifierLocalConsumerEntity;
        if (modifierLocalConsumerEntity3 != null) {
            modifierLocalConsumer = modifierLocalConsumerEntity3.getModifier();
        } else {
            modifierLocalConsumer = null;
        }
        if (!(modifierLocalConsumer instanceof FocusPropertiesModifier)) {
            return null;
        }
        return (FocusPropertiesModifier) modifierLocalConsumer;
    }

    private final void forEachDelegate(Function1<? super ModifiedLayoutNode, Unit> function1) {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) outerLayoutNodeWrapper$ui_release;
            function1.invoke(modifiedLayoutNode);
            outerLayoutNodeWrapper$ui_release = modifiedLayoutNode.getWrapped$ui_release();
        }
    }

    private final void forEachDelegateIncludingInner(Function1<? super LayoutNodeWrapper, Unit> function1) {
        LayoutNodeWrapper wrapped$ui_release = this.innerLayoutNodeWrapper.getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            function1.invoke(outerLayoutNodeWrapper$ui_release);
        }
    }

    private final void forEachModifierLocalProvider(Function1<? super ModifierLocalProviderEntity, Unit> function1) {
        for (ModifierLocalProviderEntity modifierLocalProviderEntity = this.modifierLocalsHead; modifierLocalProviderEntity != null; modifierLocalProviderEntity = modifierLocalProviderEntity.getNext()) {
            function1.invoke(modifierLocalProviderEntity);
        }
    }

    private final LayoutNodeWrapper getInnerLayerWrapper() {
        OwnedLayer ownedLayer;
        if (this.innerLayerWrapperIsDirty) {
            LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
            LayoutNodeWrapper wrappedBy$ui_release = getOuterLayoutNodeWrapper$ui_release().getWrappedBy$ui_release();
            this._innerLayerWrapper = null;
            while (true) {
                if (Intrinsics.areEqual(layoutNodeWrapper, wrappedBy$ui_release)) {
                    break;
                }
                if (layoutNodeWrapper != null) {
                    ownedLayer = layoutNodeWrapper.getLayer();
                } else {
                    ownedLayer = null;
                }
                if (ownedLayer != null) {
                    this._innerLayerWrapper = layoutNodeWrapper;
                    break;
                } else if (layoutNodeWrapper != null) {
                    layoutNodeWrapper = layoutNodeWrapper.getWrappedBy$ui_release();
                } else {
                    layoutNodeWrapper = null;
                }
            }
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this._innerLayerWrapper;
        if (layoutNodeWrapper2 != null && layoutNodeWrapper2.getLayer() == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        return layoutNodeWrapper2;
    }

    private final boolean hasNewPositioningCallback() {
        final MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector = this.onPositionedCallbacks;
        return ((Boolean) getModifier().foldOut(Boolean.FALSE, new Function2<Modifier.Element, Boolean, Boolean>() { // from class: androidx.compose.ui.node.LayoutNode$hasNewPositioningCallback$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Boolean invoke(Modifier.Element element, Boolean bool) {
                return invoke(element, bool.booleanValue());
            }

            /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
                if (r1 == null) goto L22;
             */
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull androidx.compose.ui.Modifier.Element r7, boolean r8) {
                /*
                    r6 = this;
                    java.lang.String r0 = "mod"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                    if (r8 != 0) goto L35
                    boolean r8 = r7 instanceof androidx.compose.ui.layout.OnGloballyPositionedModifier
                    r0 = 0
                    if (r8 == 0) goto L36
                    androidx.compose.runtime.collection.MutableVector<kotlin.Pair<androidx.compose.ui.node.LayoutNodeWrapper, androidx.compose.ui.layout.OnGloballyPositionedModifier>> r8 = r1
                    r1 = 0
                    if (r8 == 0) goto L33
                    int r2 = r8.getSize()
                    if (r2 <= 0) goto L31
                    java.lang.Object[] r8 = r8.getContent()
                    r3 = r0
                L1c:
                    r4 = r8[r3]
                    r5 = r4
                    kotlin.Pair r5 = (kotlin.Pair) r5
                    java.lang.Object r5 = r5.f()
                    boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r5)
                    if (r5 == 0) goto L2d
                    r1 = r4
                    goto L31
                L2d:
                    int r3 = r3 + 1
                    if (r3 < r2) goto L1c
                L31:
                    kotlin.Pair r1 = (kotlin.Pair) r1
                L33:
                    if (r1 != 0) goto L36
                L35:
                    r0 = 1
                L36:
                    java.lang.Boolean r7 = java.lang.Boolean.valueOf(r0)
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode$hasNewPositioningCallback$1.invoke(androidx.compose.ui.Modifier$Element, boolean):java.lang.Boolean");
            }
        })).booleanValue();
    }

    /* renamed from: hitTest-M_7yMNQ$ui_release$default  reason: not valid java name */
    public static /* synthetic */ void m3457hitTestM_7yMNQ$ui_release$default(LayoutNode layoutNode, long j10, HitTestResult hitTestResult, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        boolean z12 = z10;
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        layoutNode.m3460hitTestM_7yMNQ$ui_release(j10, hitTestResult, z12, z11);
    }

    /* renamed from: hitTestSemantics-M_7yMNQ$ui_release$default  reason: not valid java name */
    public static /* synthetic */ void m3458hitTestSemanticsM_7yMNQ$ui_release$default(LayoutNode layoutNode, long j10, HitTestResult hitTestResult, boolean z10, boolean z11, int i10, Object obj) {
        boolean z12;
        boolean z13;
        if ((i10 & 4) != 0) {
            z12 = true;
        } else {
            z12 = z10;
        }
        if ((i10 & 8) != 0) {
            z13 = true;
        } else {
            z13 = z11;
        }
        layoutNode.m3461hitTestSemanticsM_7yMNQ$ui_release(j10, hitTestResult, z12, z13);
    }

    private final void invalidateUnfoldedVirtualChildren() {
        LayoutNode parent$ui_release;
        if (this.virtualChildrenCount > 0) {
            this.unfoldedVirtualChildrenListDirty = true;
        }
        if (this.isVirtual && (parent$ui_release = getParent$ui_release()) != null) {
            parent$ui_release.unfoldedVirtualChildrenListDirty = true;
        }
    }

    private final void markNodeAndSubtreeAsPlaced() {
        this.isPlaced = true;
        LayoutNodeWrapper wrapped$ui_release = this.innerLayoutNodeWrapper.getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            if (outerLayoutNodeWrapper$ui_release.getLastLayerDrawingWasSkipped$ui_release()) {
                outerLayoutNodeWrapper$ui_release.invalidateLayer();
            }
        }
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode = content[i10];
                if (layoutNode.placeOrder != Integer.MAX_VALUE) {
                    layoutNode.markNodeAndSubtreeAsPlaced();
                    rescheduleRemeasureOrRelayout(layoutNode);
                }
                i10++;
            } while (i10 < size);
        }
    }

    private final void markReusedModifiers(Modifier modifier) {
        MutableVector<ModifiedLayoutNode> mutableVector = this.wrapperCache;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifiedLayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].setToBeReusedForSameModifier(false);
                i10++;
            } while (i10 < size);
            modifier.foldIn(Unit.f60915a, new Function2<Unit, Modifier.Element, Unit>() { // from class: androidx.compose.ui.node.LayoutNode$markReusedModifiers$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Unit unit, Modifier.Element element) {
                    invoke2(unit, element);
                    return Unit.f60915a;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v3 */
                /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object[]] */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Unit unit, @NotNull Modifier.Element mod) {
                    MutableVector mutableVector2;
                    ModifiedLayoutNode modifiedLayoutNode;
                    Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(mod, "mod");
                    mutableVector2 = LayoutNode.this.wrapperCache;
                    int size2 = mutableVector2.getSize();
                    if (size2 > 0) {
                        int i11 = size2 - 1;
                        ?? content2 = mutableVector2.getContent();
                        do {
                            modifiedLayoutNode = content2[i11];
                            ModifiedLayoutNode modifiedLayoutNode2 = (ModifiedLayoutNode) modifiedLayoutNode;
                            if (modifiedLayoutNode2.getModifier() == mod && !modifiedLayoutNode2.getToBeReusedForSameModifier()) {
                                break;
                            }
                            i11--;
                        } while (i11 >= 0);
                        modifiedLayoutNode = null;
                    } else {
                        modifiedLayoutNode = null;
                    }
                    ModifiedLayoutNode modifiedLayoutNode3 = modifiedLayoutNode;
                    if (modifiedLayoutNode3 == null) {
                        return;
                    }
                    modifiedLayoutNode3.setToBeReusedForSameModifier(true);
                }
            });
        }
        modifier.foldIn(Unit.f60915a, new Function2<Unit, Modifier.Element, Unit>() { // from class: androidx.compose.ui.node.LayoutNode$markReusedModifiers$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Unit unit, Modifier.Element element) {
                invoke2(unit, element);
                return Unit.f60915a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object[]] */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Unit unit, @NotNull Modifier.Element mod) {
                MutableVector mutableVector2;
                ModifiedLayoutNode modifiedLayoutNode;
                Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(mod, "mod");
                mutableVector2 = LayoutNode.this.wrapperCache;
                int size2 = mutableVector2.getSize();
                if (size2 > 0) {
                    int i11 = size2 - 1;
                    ?? content2 = mutableVector2.getContent();
                    do {
                        modifiedLayoutNode = content2[i11];
                        ModifiedLayoutNode modifiedLayoutNode2 = (ModifiedLayoutNode) modifiedLayoutNode;
                        if (modifiedLayoutNode2.getModifier() == mod && !modifiedLayoutNode2.getToBeReusedForSameModifier()) {
                            break;
                        }
                        i11--;
                    } while (i11 >= 0);
                    modifiedLayoutNode = null;
                } else {
                    modifiedLayoutNode = null;
                }
                ModifiedLayoutNode modifiedLayoutNode3 = modifiedLayoutNode;
                if (modifiedLayoutNode3 == null) {
                    return;
                }
                modifiedLayoutNode3.setToBeReusedForSameModifier(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void markSubtreeAsNotPlaced() {
        if (isPlaced()) {
            int i10 = 0;
            this.isPlaced = false;
            MutableVector<LayoutNode> mutableVector = get_children$ui_release();
            int size = mutableVector.getSize();
            if (size > 0) {
                LayoutNode[] content = mutableVector.getContent();
                do {
                    content[i10].markSubtreeAsNotPlaced();
                    i10++;
                } while (i10 < size);
            }
        }
    }

    private final void onBeforeLayoutChildren() {
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode = content[i10];
                if (layoutNode.measurePending && layoutNode.measuredByParent == UsageByParent.InMeasureBlock && m3459remeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null)) {
                    requestRemeasure$ui_release$default(this, false, 1, null);
                }
                i10++;
            } while (i10 < size);
        }
    }

    private final void onChildRemoved(LayoutNode layoutNode) {
        if (this.owner != null) {
            layoutNode.detach$ui_release();
        }
        layoutNode._foldedParent = null;
        layoutNode.getOuterLayoutNodeWrapper$ui_release().setWrappedBy$ui_release(null);
        if (layoutNode.isVirtual) {
            this.virtualChildrenCount--;
            MutableVector<LayoutNode> mutableVector = layoutNode._foldedChildren;
            int size = mutableVector.getSize();
            if (size > 0) {
                LayoutNode[] content = mutableVector.getContent();
                int i10 = 0;
                do {
                    content[i10].getOuterLayoutNodeWrapper$ui_release().setWrappedBy$ui_release(null);
                    i10++;
                } while (i10 < size);
            }
        }
        invalidateUnfoldedVirtualChildren();
        onZSortedChildrenInvalidated();
    }

    private final void onDensityOrLayoutDirectionChanged() {
        requestRemeasure$ui_release$default(this, false, 1, null);
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release != null) {
            parent$ui_release.invalidateLayer$ui_release();
        }
        invalidateLayers$ui_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onZSortedChildrenInvalidated() {
        if (this.isVirtual) {
            LayoutNode parent$ui_release = getParent$ui_release();
            if (parent$ui_release != null) {
                parent$ui_release.onZSortedChildrenInvalidated();
                return;
            }
            return;
        }
        this.zSortedChildrenInvalidated = true;
    }

    private final void recreateUnfoldedChildrenIfDirty() {
        if (this.unfoldedVirtualChildrenListDirty) {
            int i10 = 0;
            this.unfoldedVirtualChildrenListDirty = false;
            MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
            if (mutableVector == null) {
                mutableVector = new MutableVector<>(new LayoutNode[16], 0);
                this._unfoldedChildren = mutableVector;
            }
            mutableVector.clear();
            MutableVector<LayoutNode> mutableVector2 = this._foldedChildren;
            int size = mutableVector2.getSize();
            if (size > 0) {
                LayoutNode[] content = mutableVector2.getContent();
                do {
                    LayoutNode layoutNode = content[i10];
                    if (layoutNode.isVirtual) {
                        mutableVector.addAll(mutableVector.getSize(), layoutNode.get_children$ui_release());
                    } else {
                        mutableVector.add(layoutNode);
                    }
                    i10++;
                } while (i10 < size);
            }
        }
    }

    /* renamed from: remeasure-_Sx5XlM$ui_release$default  reason: not valid java name */
    public static /* synthetic */ boolean m3459remeasure_Sx5XlM$ui_release$default(LayoutNode layoutNode, Constraints constraints, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            constraints = layoutNode.outerMeasurablePlaceable.m3500getLastConstraintsDWUhwKw();
        }
        return layoutNode.m3463remeasure_Sx5XlM$ui_release(constraints);
    }

    public static /* synthetic */ void requestRelayout$ui_release$default(LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        layoutNode.requestRelayout$ui_release(z10);
    }

    public static /* synthetic */ void requestRemeasure$ui_release$default(LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        layoutNode.requestRemeasure$ui_release(z10);
    }

    private final void rescheduleRemeasureOrRelayout(LayoutNode layoutNode) {
        if (WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutState.ordinal()] == 1) {
            if (layoutNode.measurePending) {
                layoutNode.requestRemeasure$ui_release(true);
                return;
            } else if (layoutNode.layoutPending) {
                layoutNode.requestRelayout$ui_release(true);
                return;
            } else {
                return;
            }
        }
        throw new IllegalStateException("Unexpected state " + layoutNode.layoutState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ModifiedLayoutNode reuseLayoutNodeWrapper(LayoutNodeWrapper layoutNodeWrapper, LayoutModifier layoutModifier) {
        int i10;
        if (this.wrapperCache.isEmpty()) {
            return null;
        }
        MutableVector<ModifiedLayoutNode> mutableVector = this.wrapperCache;
        int size = mutableVector.getSize();
        int i11 = -1;
        if (size > 0) {
            i10 = size - 1;
            ModifiedLayoutNode[] content = mutableVector.getContent();
            do {
                ModifiedLayoutNode modifiedLayoutNode = content[i10];
                if (modifiedLayoutNode.getToBeReusedForSameModifier() && modifiedLayoutNode.getModifier() == layoutModifier) {
                    break;
                }
                i10--;
            } while (i10 >= 0);
            i10 = -1;
        } else {
            i10 = -1;
        }
        if (i10 < 0) {
            MutableVector<ModifiedLayoutNode> mutableVector2 = this.wrapperCache;
            int size2 = mutableVector2.getSize();
            if (size2 > 0) {
                int i12 = size2 - 1;
                ModifiedLayoutNode[] content2 = mutableVector2.getContent();
                while (true) {
                    if (!content2[i12].getToBeReusedForSameModifier()) {
                        i11 = i12;
                        break;
                    }
                    i12--;
                    if (i12 < 0) {
                        break;
                    }
                }
            }
            i10 = i11;
        }
        if (i10 < 0) {
            return null;
        }
        ModifiedLayoutNode removeAt = this.wrapperCache.removeAt(i10);
        removeAt.setModifier(layoutModifier);
        removeAt.setWrapped(layoutNodeWrapper);
        return removeAt;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005b A[LOOP:2: B:12:0x0059->B:13:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067 A[LOOP:3: B:15:0x0065->B:16:0x0067, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void setModifierLocals(androidx.compose.ui.Modifier r6) {
        /*
            r5 = this;
            androidx.compose.runtime.collection.MutableVector r0 = new androidx.compose.runtime.collection.MutableVector
            r1 = 16
            androidx.compose.ui.node.ModifierLocalConsumerEntity[] r1 = new androidx.compose.ui.node.ModifierLocalConsumerEntity[r1]
            r2 = 0
            r0.<init>(r1, r2)
            androidx.compose.ui.node.ModifierLocalProviderEntity r1 = r5.modifierLocalsHead
        Lc:
            if (r1 == 0) goto L25
            androidx.compose.runtime.collection.MutableVector r3 = r1.getConsumers()
            int r4 = r0.getSize()
            r0.addAll(r4, r3)
            androidx.compose.runtime.collection.MutableVector r3 = r1.getConsumers()
            r3.clear()
            androidx.compose.ui.node.ModifierLocalProviderEntity r1 = r1.getNext()
            goto Lc
        L25:
            androidx.compose.ui.node.ModifierLocalProviderEntity r1 = r5.modifierLocalsHead
            androidx.compose.ui.node.LayoutNode$setModifierLocals$1 r3 = new androidx.compose.ui.node.LayoutNode$setModifierLocals$1
            r3.<init>()
            java.lang.Object r6 = r6.foldIn(r1, r3)
            androidx.compose.ui.node.ModifierLocalProviderEntity r6 = (androidx.compose.ui.node.ModifierLocalProviderEntity) r6
            r5.modifierLocalsTail = r6
            androidx.compose.ui.node.ModifierLocalProviderEntity r6 = r6.getNext()
            androidx.compose.ui.node.ModifierLocalProviderEntity r1 = r5.modifierLocalsTail
            r3 = 0
            r1.setNext(r3)
            boolean r1 = r5.isAttached()
            if (r1 == 0) goto L6f
            int r1 = r0.getSize()
            if (r1 <= 0) goto L59
            java.lang.Object[] r0 = r0.getContent()
        L4e:
            r3 = r0[r2]
            androidx.compose.ui.node.ModifierLocalConsumerEntity r3 = (androidx.compose.ui.node.ModifierLocalConsumerEntity) r3
            r3.detach()
            int r2 = r2 + 1
            if (r2 < r1) goto L4e
        L59:
            if (r6 == 0) goto L63
            r6.detach()
            androidx.compose.ui.node.ModifierLocalProviderEntity r6 = r6.getNext()
            goto L59
        L63:
            androidx.compose.ui.node.ModifierLocalProviderEntity r6 = r5.modifierLocalsHead
        L65:
            if (r6 == 0) goto L6f
            r6.attachDelayed()
            androidx.compose.ui.node.ModifierLocalProviderEntity r6 = r6.getNext()
            goto L65
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.setModifierLocals(androidx.compose.ui.Modifier):void");
    }

    private final boolean shouldInvalidateParentLayer() {
        LayoutNodeWrapper wrapped$ui_release = this.innerLayoutNodeWrapper.getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            if (outerLayoutNodeWrapper$ui_release.getLayer() != null) {
                return false;
            }
            if (EntityList.m3435has0OSVbXo(outerLayoutNodeWrapper$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3441getDrawEntityTypeEEbPh1w())) {
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c2 A[LOOP:2: B:45:0x00c0->B:46:0x00c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void attach$ui_release(@org.jetbrains.annotations.NotNull androidx.compose.ui.node.Owner r9) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.attach$ui_release(androidx.compose.ui.node.Owner):void");
    }

    @NotNull
    public final Map<AlignmentLine, Integer> calculateAlignmentLines$ui_release() {
        if (!this.outerMeasurablePlaceable.getDuringAlignmentLinesQuery$ui_release()) {
            alignmentLinesQueriedByModifier();
        }
        layoutChildren$ui_release();
        return this.alignmentLines.getLastCalculation();
    }

    public final void detach$ui_release() {
        Owner owner = this.owner;
        String str = null;
        if (owner == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot detach node that is already detached!  Tree: ");
            LayoutNode parent$ui_release = getParent$ui_release();
            if (parent$ui_release != null) {
                str = debugTreeToString$default(parent$ui_release, 0, 1, null);
            }
            sb2.append(str);
            throw new IllegalStateException(sb2.toString().toString());
        }
        LayoutNode parent$ui_release2 = getParent$ui_release();
        if (parent$ui_release2 != null) {
            parent$ui_release2.invalidateLayer$ui_release();
            requestRemeasure$ui_release$default(parent$ui_release2, false, 1, null);
        }
        this.alignmentLines.reset$ui_release();
        Function1<? super Owner, Unit> function1 = this.onDetach;
        if (function1 != null) {
            function1.invoke(owner);
        }
        for (ModifierLocalProviderEntity modifierLocalProviderEntity = this.modifierLocalsHead; modifierLocalProviderEntity != null; modifierLocalProviderEntity = modifierLocalProviderEntity.getNext()) {
            modifierLocalProviderEntity.detach();
        }
        LayoutNodeWrapper wrapped$ui_release = this.innerLayoutNodeWrapper.getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            outerLayoutNodeWrapper$ui_release.detach();
        }
        if (SemanticsNodeKt.getOuterSemantics(this) != null) {
            owner.onSemanticsChange();
        }
        owner.onDetach(this);
        this.owner = null;
        this.depth = 0;
        MutableVector<LayoutNode> mutableVector = this._foldedChildren;
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].detach$ui_release();
                i10++;
            } while (i10 < size);
            this.placeOrder = Integer.MAX_VALUE;
            this.previousPlaceOrder = Integer.MAX_VALUE;
            this.isPlaced = false;
        }
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        this.isPlaced = false;
    }

    public final void dispatchOnPositionedCallbacks$ui_release() {
        MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector;
        int size;
        if (this.layoutState == LayoutState.Idle && !this.layoutPending && !this.measurePending && isPlaced() && (mutableVector = this.onPositionedCallbacks) != null && (size = mutableVector.getSize()) > 0) {
            Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                Pair<LayoutNodeWrapper, OnGloballyPositionedModifier> pair = content[i10];
                pair.f().onGloballyPositioned(pair.e());
                i10++;
            } while (i10 < size);
        }
    }

    public final void draw$ui_release(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getOuterLayoutNodeWrapper$ui_release().draw(canvas);
    }

    @Override // androidx.compose.ui.layout.Remeasurement
    public void forceRemeasure() {
        requestRemeasure$ui_release$default(this, false, 1, null);
        Constraints m3500getLastConstraintsDWUhwKw = this.outerMeasurablePlaceable.m3500getLastConstraintsDWUhwKw();
        if (m3500getLastConstraintsDWUhwKw != null) {
            Owner owner = this.owner;
            if (owner != null) {
                owner.mo3510measureAndLayout0kLqBqw(this, m3500getLastConstraintsDWUhwKw.m4011unboximpl());
                return;
            }
            return;
        }
        Owner owner2 = this.owner;
        if (owner2 != null) {
            Owner.measureAndLayout$default(owner2, false, 1, null);
        }
    }

    @NotNull
    public final LayoutNodeAlignmentLines getAlignmentLines$ui_release() {
        return this.alignmentLines;
    }

    public final boolean getCanMultiMeasure$ui_release() {
        return this.canMultiMeasure;
    }

    @NotNull
    public final List<LayoutNode> getChildren$ui_release() {
        return get_children$ui_release().asMutableList();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    @NotNull
    public LayoutCoordinates getCoordinates() {
        return this.innerLayoutNodeWrapper;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo, androidx.compose.ui.node.ComposeUiNode
    @NotNull
    public Density getDensity() {
        return this.density;
    }

    public final int getDepth$ui_release() {
        return this.depth;
    }

    @NotNull
    public final List<LayoutNode> getFoldedChildren$ui_release() {
        return this._foldedChildren.asMutableList();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public int getHeight() {
        return this.outerMeasurablePlaceable.getHeight();
    }

    public final boolean getInnerLayerWrapperIsDirty$ui_release() {
        return this.innerLayerWrapperIsDirty;
    }

    @NotNull
    public final LayoutNodeWrapper getInnerLayoutNodeWrapper$ui_release() {
        return this.innerLayoutNodeWrapper;
    }

    @NotNull
    public final IntrinsicsPolicy getIntrinsicsPolicy$ui_release() {
        return this.intrinsicsPolicy;
    }

    @NotNull
    public final UsageByParent getIntrinsicsUsageByParent$ui_release() {
        return this.intrinsicsUsageByParent;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo, androidx.compose.ui.node.ComposeUiNode
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final boolean getLayoutPending$ui_release() {
        return this.layoutPending;
    }

    @NotNull
    public final LayoutState getLayoutState$ui_release() {
        return this.layoutState;
    }

    @NotNull
    public final LayoutNodeDrawScope getMDrawScope$ui_release() {
        return LayoutNodeKt.requireOwner(this).getSharedDrawScope();
    }

    public final boolean getMeasurePending$ui_release() {
        return this.measurePending;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    @NotNull
    public MeasurePolicy getMeasurePolicy() {
        return this.measurePolicy;
    }

    @NotNull
    public final MeasureScope getMeasureScope$ui_release() {
        return this.measureScope;
    }

    @NotNull
    public final UsageByParent getMeasuredByParent$ui_release() {
        return this.measuredByParent;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    @NotNull
    public Modifier getModifier() {
        return this.modifier;
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.Modifier] */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.compose.ui.Modifier] */
    @Override // androidx.compose.ui.layout.LayoutInfo
    @NotNull
    public List<ModifierInfo> getModifierInfo() {
        LayoutNodeEntity<?, ?>[] m3485getEntitiesCHwCgZE;
        LayoutNodeEntity<?, ?>[] m3485getEntitiesCHwCgZE2;
        MutableVector mutableVector = new MutableVector(new ModifierInfo[16], 0);
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) outerLayoutNodeWrapper$ui_release;
            OwnedLayer layer = modifiedLayoutNode.getLayer();
            mutableVector.add(new ModifierInfo(modifiedLayoutNode.getModifier(), modifiedLayoutNode, layer));
            for (LayoutNodeEntity<?, ?> layoutNodeEntity : modifiedLayoutNode.m3485getEntitiesCHwCgZE()) {
                for (; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                    mutableVector.add(new ModifierInfo(layoutNodeEntity.getModifier(), modifiedLayoutNode, layer));
                }
            }
            outerLayoutNodeWrapper$ui_release = modifiedLayoutNode.getWrapped$ui_release();
        }
        for (LayoutNodeEntity<?, ?> layoutNodeEntity2 : this.innerLayoutNodeWrapper.m3485getEntitiesCHwCgZE()) {
            for (; layoutNodeEntity2 != null; layoutNodeEntity2 = layoutNodeEntity2.getNext()) {
                ?? modifier = layoutNodeEntity2.getModifier();
                LayoutNodeWrapper layoutNodeWrapper2 = this.innerLayoutNodeWrapper;
                mutableVector.add(new ModifierInfo(modifier, layoutNodeWrapper2, layoutNodeWrapper2.getLayer()));
            }
        }
        return mutableVector.asMutableList();
    }

    @NotNull
    public final ModifierLocalProviderEntity getModifierLocalsHead$ui_release() {
        return this.modifierLocalsHead;
    }

    @NotNull
    public final ModifierLocalProviderEntity getModifierLocalsTail$ui_release() {
        return this.modifierLocalsTail;
    }

    public final boolean getNeedsOnPositionedDispatch$ui_release() {
        return this.needsOnPositionedDispatch;
    }

    @Nullable
    public final Function1<Owner, Unit> getOnAttach$ui_release() {
        return this.onAttach;
    }

    @Nullable
    public final Function1<Owner, Unit> getOnDetach$ui_release() {
        return this.onDetach;
    }

    @NotNull
    public final MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> getOrCreateOnPositionedCallbacks$ui_release() {
        MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector = this.onPositionedCallbacks;
        if (mutableVector == null) {
            MutableVector<Pair<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector2 = new MutableVector<>(new Pair[16], 0);
            this.onPositionedCallbacks = mutableVector2;
            return mutableVector2;
        }
        return mutableVector;
    }

    @NotNull
    public final LayoutNodeWrapper getOuterLayoutNodeWrapper$ui_release() {
        return this.outerMeasurablePlaceable.getOuterWrapper();
    }

    @Nullable
    public final Owner getOwner$ui_release() {
        return this.owner;
    }

    @Nullable
    public final LayoutNode getParent$ui_release() {
        LayoutNode layoutNode = this._foldedParent;
        if (layoutNode != null && layoutNode.isVirtual) {
            if (layoutNode != null) {
                return layoutNode.getParent$ui_release();
            }
            return null;
        }
        return layoutNode;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object getParentData() {
        return this.outerMeasurablePlaceable.getParentData();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    @Nullable
    public LayoutInfo getParentInfo() {
        return getParent$ui_release();
    }

    public final int getPlaceOrder$ui_release() {
        return this.placeOrder;
    }

    @Nullable
    public final LayoutNodeSubcompositionsState getSubcompositionsState$ui_release() {
        return this.subcompositionsState;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo, androidx.compose.ui.node.ComposeUiNode
    @NotNull
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public int getWidth() {
        return this.outerMeasurablePlaceable.getWidth();
    }

    @NotNull
    public final MutableVector<LayoutNode> getZSortedChildren() {
        if (this.zSortedChildrenInvalidated) {
            this._zSortedChildren.clear();
            MutableVector<LayoutNode> mutableVector = this._zSortedChildren;
            mutableVector.addAll(mutableVector.getSize(), get_children$ui_release());
            this._zSortedChildren.sortWith(this.ZComparator);
            this.zSortedChildrenInvalidated = false;
        }
        return this._zSortedChildren;
    }

    @NotNull
    public final MutableVector<LayoutNode> get_children$ui_release() {
        if (this.virtualChildrenCount == 0) {
            return this._foldedChildren;
        }
        recreateUnfoldedChildrenIfDirty();
        MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
        Intrinsics.checkNotNull(mutableVector);
        return mutableVector;
    }

    public final void handleMeasureResult$ui_release(@NotNull MeasureResult measureResult) {
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        this.innerLayoutNodeWrapper.setMeasureResult$ui_release(measureResult);
    }

    /* renamed from: hitTest-M_7yMNQ$ui_release  reason: not valid java name */
    public final void m3460hitTestM_7yMNQ$ui_release(long j10, @NotNull HitTestResult<PointerInputFilter> hitTestResult, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(hitTestResult, "hitTestResult");
        getOuterLayoutNodeWrapper$ui_release().m3488hitTestYqVAtuI(LayoutNodeWrapper.Companion.getPointerInputSource(), getOuterLayoutNodeWrapper$ui_release().m3484fromParentPositionMKHz9U(j10), hitTestResult, z10, z11);
    }

    /* renamed from: hitTestSemantics-M_7yMNQ$ui_release  reason: not valid java name */
    public final void m3461hitTestSemanticsM_7yMNQ$ui_release(long j10, @NotNull HitTestResult<SemanticsEntity> hitSemanticsEntities, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(hitSemanticsEntities, "hitSemanticsEntities");
        getOuterLayoutNodeWrapper$ui_release().m3488hitTestYqVAtuI(LayoutNodeWrapper.Companion.getSemanticsSource(), getOuterLayoutNodeWrapper$ui_release().m3484fromParentPositionMKHz9U(j10), hitSemanticsEntities, true, z11);
    }

    public final void ignoreRemeasureRequests$ui_release(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.ignoreRemeasureRequests = true;
        block.invoke();
        this.ignoreRemeasureRequests = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void insertAt$ui_release(int r7, @org.jetbrains.annotations.NotNull androidx.compose.ui.node.LayoutNode r8) {
        /*
            r6 = this;
            java.lang.String r0 = "instance"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            androidx.compose.ui.node.LayoutNode r0 = r8._foldedParent
            java.lang.String r1 = " Other tree: "
            java.lang.String r2 = "Cannot insert "
            r3 = 0
            r4 = 0
            r5 = 1
            if (r0 != 0) goto La2
            androidx.compose.ui.node.Owner r0 = r8.owner
            if (r0 != 0) goto L73
            r8._foldedParent = r6
            androidx.compose.runtime.collection.MutableVector<androidx.compose.ui.node.LayoutNode> r0 = r6._foldedChildren
            r0.add(r7, r8)
            r6.onZSortedChildrenInvalidated()
            boolean r7 = r8.isVirtual
            if (r7 == 0) goto L34
            boolean r7 = r6.isVirtual
            if (r7 != 0) goto L2c
            int r7 = r6.virtualChildrenCount
            int r7 = r7 + r5
            r6.virtualChildrenCount = r7
            goto L34
        L2c:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Virtual LayoutNode can't be added into a virtual parent"
            r7.<init>(r8)
            throw r7
        L34:
            r6.invalidateUnfoldedVirtualChildren()
            androidx.compose.ui.node.LayoutNodeWrapper r7 = r8.getOuterLayoutNodeWrapper$ui_release()
            boolean r0 = r6.isVirtual
            if (r0 == 0) goto L46
            androidx.compose.ui.node.LayoutNode r0 = r6._foldedParent
            if (r0 == 0) goto L48
            androidx.compose.ui.node.LayoutNodeWrapper r4 = r0.innerLayoutNodeWrapper
            goto L48
        L46:
            androidx.compose.ui.node.LayoutNodeWrapper r4 = r6.innerLayoutNodeWrapper
        L48:
            r7.setWrappedBy$ui_release(r4)
            boolean r7 = r8.isVirtual
            if (r7 == 0) goto L6b
            androidx.compose.runtime.collection.MutableVector<androidx.compose.ui.node.LayoutNode> r7 = r8._foldedChildren
            int r0 = r7.getSize()
            if (r0 <= 0) goto L6b
            java.lang.Object[] r7 = r7.getContent()
        L5b:
            r1 = r7[r3]
            androidx.compose.ui.node.LayoutNode r1 = (androidx.compose.ui.node.LayoutNode) r1
            androidx.compose.ui.node.LayoutNodeWrapper r1 = r1.getOuterLayoutNodeWrapper$ui_release()
            androidx.compose.ui.node.LayoutNodeWrapper r2 = r6.innerLayoutNodeWrapper
            r1.setWrappedBy$ui_release(r2)
            int r3 = r3 + r5
            if (r3 < r0) goto L5b
        L6b:
            androidx.compose.ui.node.Owner r7 = r6.owner
            if (r7 == 0) goto L72
            r8.attach$ui_release(r7)
        L72:
            return
        L73:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r2)
            r7.append(r8)
            java.lang.String r0 = " because it already has an owner. This tree: "
            r7.append(r0)
            java.lang.String r0 = debugTreeToString$default(r6, r3, r5, r4)
            r7.append(r0)
            r7.append(r1)
            java.lang.String r8 = debugTreeToString$default(r8, r3, r5, r4)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        La2:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r2)
            r7.append(r8)
            java.lang.String r0 = " because it already has a parent. This tree: "
            r7.append(r0)
            java.lang.String r0 = debugTreeToString$default(r6, r3, r5, r4)
            r7.append(r0)
            r7.append(r1)
            androidx.compose.ui.node.LayoutNode r8 = r8._foldedParent
            if (r8 == 0) goto Lc4
            java.lang.String r4 = debugTreeToString$default(r8, r3, r5, r4)
        Lc4:
            r7.append(r4)
            java.lang.String r7 = r7.toString()
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.insertAt$ui_release(int, androidx.compose.ui.node.LayoutNode):void");
    }

    public final void invalidateLayer$ui_release() {
        LayoutNodeWrapper innerLayerWrapper = getInnerLayerWrapper();
        if (innerLayerWrapper != null) {
            innerLayerWrapper.invalidateLayer();
            return;
        }
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release != null) {
            parent$ui_release.invalidateLayer$ui_release();
        }
    }

    public final void invalidateLayers$ui_release() {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) outerLayoutNodeWrapper$ui_release;
            OwnedLayer layer = modifiedLayoutNode.getLayer();
            if (layer != null) {
                layer.invalidate();
            }
            outerLayoutNodeWrapper$ui_release = modifiedLayoutNode.getWrapped$ui_release();
        }
        OwnedLayer layer2 = this.innerLayoutNodeWrapper.getLayer();
        if (layer2 != null) {
            layer2.invalidate();
        }
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public boolean isAttached() {
        if (this.owner != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public boolean isPlaced() {
        return this.isPlaced;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return isAttached();
    }

    public final void layoutChildren$ui_release() {
        this.alignmentLines.recalculateQueryOwner$ui_release();
        if (this.layoutPending) {
            onBeforeLayoutChildren();
        }
        if (this.layoutPending) {
            this.layoutPending = false;
            this.layoutState = LayoutState.LayingOut;
            LayoutNodeKt.requireOwner(this).getSnapshotObserver().observeLayoutSnapshotReads$ui_release(this, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$layoutChildren$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
                /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[ORIG_RETURN, RETURN] */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2() {
                    /*
                        r8 = this;
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        r1 = 0
                        androidx.compose.ui.node.LayoutNode.access$setNextChildPlaceOrder$p(r0, r1)
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.runtime.collection.MutableVector r0 = r0.get_children$ui_release()
                        int r2 = r0.getSize()
                        r3 = 2147483647(0x7fffffff, float:NaN)
                        if (r2 <= 0) goto L40
                        java.lang.Object[] r0 = r0.getContent()
                        r4 = r1
                    L1a:
                        r5 = r0[r4]
                        androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
                        int r6 = r5.getPlaceOrder$ui_release()
                        androidx.compose.ui.node.LayoutNode.access$setPreviousPlaceOrder$p(r5, r6)
                        androidx.compose.ui.node.LayoutNode.access$setPlaceOrder$p(r5, r3)
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r6 = r5.getAlignmentLines$ui_release()
                        r6.setUsedDuringParentLayout$ui_release(r1)
                        androidx.compose.ui.node.LayoutNode$UsageByParent r6 = r5.getMeasuredByParent$ui_release()
                        androidx.compose.ui.node.LayoutNode$UsageByParent r7 = androidx.compose.ui.node.LayoutNode.UsageByParent.InLayoutBlock
                        if (r6 != r7) goto L3c
                        androidx.compose.ui.node.LayoutNode$UsageByParent r6 = androidx.compose.ui.node.LayoutNode.UsageByParent.NotUsed
                        r5.setMeasuredByParent$ui_release(r6)
                    L3c:
                        int r4 = r4 + 1
                        if (r4 < r2) goto L1a
                    L40:
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.ui.node.LayoutNodeWrapper r0 = r0.getInnerLayoutNodeWrapper$ui_release()
                        androidx.compose.ui.layout.MeasureResult r0 = r0.getMeasureResult()
                        r0.placeChildren()
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.runtime.collection.MutableVector r0 = r0.get_children$ui_release()
                        androidx.compose.ui.node.LayoutNode r2 = androidx.compose.ui.node.LayoutNode.this
                        int r4 = r0.getSize()
                        if (r4 <= 0) goto L8f
                        java.lang.Object[] r0 = r0.getContent()
                    L5f:
                        r5 = r0[r1]
                        androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
                        int r6 = androidx.compose.ui.node.LayoutNode.access$getPreviousPlaceOrder$p(r5)
                        int r7 = r5.getPlaceOrder$ui_release()
                        if (r6 == r7) goto L7c
                        androidx.compose.ui.node.LayoutNode.access$onZSortedChildrenInvalidated(r2)
                        r2.invalidateLayer$ui_release()
                        int r6 = r5.getPlaceOrder$ui_release()
                        if (r6 != r3) goto L7c
                        androidx.compose.ui.node.LayoutNode.access$markSubtreeAsNotPlaced(r5)
                    L7c:
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r6 = r5.getAlignmentLines$ui_release()
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r5 = r5.getAlignmentLines$ui_release()
                        boolean r5 = r5.getUsedDuringParentLayout$ui_release()
                        r6.setPreviousUsedDuringParentLayout$ui_release(r5)
                        int r1 = r1 + 1
                        if (r1 < r4) goto L5f
                    L8f:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode$layoutChildren$1.invoke2():void");
                }
            });
            this.layoutState = LayoutState.Idle;
        }
        if (this.alignmentLines.getUsedDuringParentLayout$ui_release()) {
            this.alignmentLines.setPreviousUsedDuringParentLayout$ui_release(true);
        }
        if (this.alignmentLines.getDirty$ui_release() && this.alignmentLines.getRequired$ui_release()) {
            this.alignmentLines.recalculate();
        }
    }

    public final void markLayoutPending$ui_release() {
        this.layoutPending = true;
    }

    public final void markMeasurePending$ui_release() {
        this.measurePending = true;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i10) {
        return this.outerMeasurablePlaceable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i10) {
        return this.outerMeasurablePlaceable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    /* renamed from: measure-BRTryo0 */
    public Placeable mo3335measureBRTryo0(long j10) {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            clearSubtreeIntrinsicsUsage();
        }
        return this.outerMeasurablePlaceable.mo3335measureBRTryo0(j10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i10) {
        return this.outerMeasurablePlaceable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i10) {
        return this.outerMeasurablePlaceable.minIntrinsicWidth(i10);
    }

    public final void move$ui_release(int i10, int i11, int i12) {
        int i13;
        if (i10 == i11) {
            return;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            if (i10 > i11) {
                i13 = i10 + i14;
            } else {
                i13 = i10;
            }
            this._foldedChildren.add(i10 > i11 ? i11 + i14 : (i11 + i12) - 2, this._foldedChildren.removeAt(i13));
        }
        onZSortedChildrenInvalidated();
        invalidateUnfoldedVirtualChildren();
        requestRemeasure$ui_release$default(this, false, 1, null);
    }

    public final void onAlignmentsChanged$ui_release() {
        if (this.alignmentLines.getDirty$ui_release()) {
            return;
        }
        this.alignmentLines.setDirty$ui_release(true);
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release == null) {
            return;
        }
        if (this.alignmentLines.getUsedDuringParentMeasurement$ui_release()) {
            requestRemeasure$ui_release$default(parent$ui_release, false, 1, null);
        } else if (this.alignmentLines.getPreviousUsedDuringParentLayout$ui_release()) {
            requestRelayout$ui_release$default(parent$ui_release, false, 1, null);
        }
        if (this.alignmentLines.getUsedByModifierMeasurement$ui_release()) {
            requestRemeasure$ui_release$default(this, false, 1, null);
        }
        if (this.alignmentLines.getUsedByModifierLayout$ui_release()) {
            requestRelayout$ui_release$default(parent$ui_release, false, 1, null);
        }
        parent$ui_release.onAlignmentsChanged$ui_release();
    }

    @Override // androidx.compose.ui.node.Owner.OnLayoutCompletedListener
    public void onLayoutComplete() {
        for (LayoutNodeEntity<?, ?> layoutNodeEntity = this.innerLayoutNodeWrapper.m3485getEntitiesCHwCgZE()[EntityList.Companion.m3442getOnPlacedEntityTypeEEbPh1w()]; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
            ((OnPlacedModifier) ((SimpleEntity) layoutNodeEntity).getModifier()).onPlaced(this.innerLayoutNodeWrapper);
        }
    }

    public final void onNodePlaced$ui_release() {
        LayoutNode parent$ui_release = getParent$ui_release();
        float zIndex = this.innerLayoutNodeWrapper.getZIndex();
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) outerLayoutNodeWrapper$ui_release;
            zIndex += modifiedLayoutNode.getZIndex();
            outerLayoutNodeWrapper$ui_release = modifiedLayoutNode.getWrapped$ui_release();
        }
        if (zIndex != this.zIndex) {
            this.zIndex = zIndex;
            if (parent$ui_release != null) {
                parent$ui_release.onZSortedChildrenInvalidated();
            }
            if (parent$ui_release != null) {
                parent$ui_release.invalidateLayer$ui_release();
            }
        }
        if (!isPlaced()) {
            if (parent$ui_release != null) {
                parent$ui_release.invalidateLayer$ui_release();
            }
            markNodeAndSubtreeAsPlaced();
        }
        if (parent$ui_release != null) {
            if (!this.relayoutWithoutParentInProgress && parent$ui_release.layoutState == LayoutState.LayingOut) {
                if (this.placeOrder == Integer.MAX_VALUE) {
                    int i10 = parent$ui_release.nextChildPlaceOrder;
                    this.placeOrder = i10;
                    parent$ui_release.nextChildPlaceOrder = i10 + 1;
                } else {
                    throw new IllegalStateException("Place was called on a node which was placed already");
                }
            }
        } else {
            this.placeOrder = 0;
        }
        layoutChildren$ui_release();
    }

    /* renamed from: performMeasure-BRTryo0$ui_release  reason: not valid java name */
    public final void m3462performMeasureBRTryo0$ui_release(final long j10) {
        LayoutState layoutState = LayoutState.Measuring;
        this.layoutState = layoutState;
        this.measurePending = false;
        LayoutNodeKt.requireOwner(this).getSnapshotObserver().observeMeasureSnapshotReads$ui_release(this, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$performMeasure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                LayoutNode.this.getOuterLayoutNodeWrapper$ui_release().mo3335measureBRTryo0(j10);
            }
        });
        if (this.layoutState == layoutState) {
            markLayoutPending$ui_release();
            this.layoutState = LayoutState.Idle;
        }
    }

    public final void place$ui_release(int i10, int i11) {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            clearSubtreePlacementIntrinsicsUsage();
        }
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int measuredWidth = this.outerMeasurablePlaceable.getMeasuredWidth();
        LayoutDirection layoutDirection = getLayoutDirection();
        int parentWidth = companion.getParentWidth();
        LayoutDirection parentLayoutDirection = companion.getParentLayoutDirection();
        Placeable.PlacementScope.parentWidth = measuredWidth;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        Placeable.PlacementScope.placeRelative$default(companion, this.outerMeasurablePlaceable, i10, i11, 0.0f, 4, null);
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
    }

    /* renamed from: remeasure-_Sx5XlM$ui_release  reason: not valid java name */
    public final boolean m3463remeasure_Sx5XlM$ui_release(@Nullable Constraints constraints) {
        if (constraints != null) {
            if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
                clearSubtreeIntrinsicsUsage();
            }
            return this.outerMeasurablePlaceable.m3501remeasureBRTryo0(constraints.m4011unboximpl());
        }
        return false;
    }

    public final void removeAll$ui_release() {
        int size = this._foldedChildren.getSize();
        while (true) {
            size--;
            if (-1 < size) {
                onChildRemoved(this._foldedChildren.getContent()[size]);
            } else {
                this._foldedChildren.clear();
                return;
            }
        }
    }

    public final void removeAt$ui_release(int i10, int i11) {
        if (i11 >= 0) {
            int i12 = (i11 + i10) - 1;
            if (i10 > i12) {
                return;
            }
            while (true) {
                onChildRemoved(this._foldedChildren.removeAt(i12));
                if (i12 != i10) {
                    i12--;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException(("count (" + i11 + ") must be greater than 0").toString());
        }
    }

    public final void replace$ui_release() {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            clearSubtreePlacementIntrinsicsUsage();
        }
        try {
            this.relayoutWithoutParentInProgress = true;
            this.outerMeasurablePlaceable.replace();
        } finally {
            this.relayoutWithoutParentInProgress = false;
        }
    }

    public final void requestRelayout$ui_release(boolean z10) {
        Owner owner;
        if (!this.isVirtual && (owner = this.owner) != null) {
            owner.onRequestRelayout(this, z10);
        }
    }

    public final void requestRemeasure$ui_release(boolean z10) {
        Owner owner;
        if (this.ignoreRemeasureRequests || this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        owner.onRequestMeasure(this, z10);
        this.outerMeasurablePlaceable.invalidateIntrinsicsParent(z10);
    }

    public final void resetSubtreeIntrinsicsUsage$ui_release() {
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode = content[i10];
                UsageByParent usageByParent = layoutNode.previousIntrinsicsUsageByParent;
                layoutNode.intrinsicsUsageByParent = usageByParent;
                if (usageByParent != UsageByParent.NotUsed) {
                    layoutNode.resetSubtreeIntrinsicsUsage$ui_release();
                }
                i10++;
            } while (i10 < size);
        }
    }

    public final void setCanMultiMeasure$ui_release(boolean z10) {
        this.canMultiMeasure = z10;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setDensity(@NotNull Density value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!Intrinsics.areEqual(this.density, value)) {
            this.density = value;
            onDensityOrLayoutDirectionChanged();
        }
    }

    public final void setDepth$ui_release(int i10) {
        this.depth = i10;
    }

    public final void setInnerLayerWrapperIsDirty$ui_release(boolean z10) {
        this.innerLayerWrapperIsDirty = z10;
    }

    public final void setIntrinsicsUsageByParent$ui_release(@NotNull UsageByParent usageByParent) {
        Intrinsics.checkNotNullParameter(usageByParent, "<set-?>");
        this.intrinsicsUsageByParent = usageByParent;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setLayoutDirection(@NotNull LayoutDirection value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.layoutDirection != value) {
            this.layoutDirection = value;
            onDensityOrLayoutDirectionChanged();
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setMeasurePolicy(@NotNull MeasurePolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!Intrinsics.areEqual(this.measurePolicy, value)) {
            this.measurePolicy = value;
            this.intrinsicsPolicy.updateFrom(getMeasurePolicy());
            requestRemeasure$ui_release$default(this, false, 1, null);
        }
    }

    public final void setMeasuredByParent$ui_release(@NotNull UsageByParent usageByParent) {
        Intrinsics.checkNotNullParameter(usageByParent, "<set-?>");
        this.measuredByParent = usageByParent;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dd  */
    @Override // androidx.compose.ui.node.ComposeUiNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setModifier(@org.jetbrains.annotations.NotNull androidx.compose.ui.Modifier r13) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.setModifier(androidx.compose.ui.Modifier):void");
    }

    public final void setNeedsOnPositionedDispatch$ui_release(boolean z10) {
        this.needsOnPositionedDispatch = z10;
    }

    public final void setOnAttach$ui_release(@Nullable Function1<? super Owner, Unit> function1) {
        this.onAttach = function1;
    }

    public final void setOnDetach$ui_release(@Nullable Function1<? super Owner, Unit> function1) {
        this.onDetach = function1;
    }

    public final void setSubcompositionsState$ui_release(@Nullable LayoutNodeSubcompositionsState layoutNodeSubcompositionsState) {
        this.subcompositionsState = layoutNodeSubcompositionsState;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setViewConfiguration(@NotNull ViewConfiguration viewConfiguration) {
        Intrinsics.checkNotNullParameter(viewConfiguration, "<set-?>");
        this.viewConfiguration = viewConfiguration;
    }

    @NotNull
    public String toString() {
        return JvmActuals_jvmKt.simpleIdentityToString(this, null) + " children: " + getChildren$ui_release().size() + " measurePolicy: " + getMeasurePolicy();
    }

    public LayoutNode(boolean z10) {
        this.isVirtual = z10;
        this._foldedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.layoutState = LayoutState.Idle;
        this.wrapperCache = new MutableVector<>(new ModifiedLayoutNode[16], 0);
        this._zSortedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.zSortedChildrenInvalidated = true;
        this.measurePolicy = ErrorMeasurePolicy;
        this.intrinsicsPolicy = new IntrinsicsPolicy(this);
        this.density = DensityKt.Density$default(1.0f, 0.0f, 2, null);
        this.measureScope = new LayoutNode$measureScope$1(this);
        this.layoutDirection = LayoutDirection.Ltr;
        this.viewConfiguration = DummyViewConfiguration;
        this.alignmentLines = new LayoutNodeAlignmentLines(this);
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.measuredByParent = usageByParent;
        this.intrinsicsUsageByParent = usageByParent;
        this.previousIntrinsicsUsageByParent = usageByParent;
        InnerPlaceable innerPlaceable = new InnerPlaceable(this);
        this.innerLayoutNodeWrapper = innerPlaceable;
        this.outerMeasurablePlaceable = new OuterMeasurablePlaceable(this, innerPlaceable);
        this.innerLayerWrapperIsDirty = true;
        ModifierLocalProviderEntity modifierLocalProviderEntity = new ModifierLocalProviderEntity(this, SentinelModifierLocalProvider);
        this.modifierLocalsHead = modifierLocalProviderEntity;
        this.modifierLocalsTail = modifierLocalProviderEntity;
        this.modifier = Modifier.Companion;
        this.ZComparator = new Comparator() { // from class: androidx.compose.ui.node.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m3456ZComparator$lambda52;
                m3456ZComparator$lambda52 = LayoutNode.m3456ZComparator$lambda52((LayoutNode) obj, (LayoutNode) obj2);
                return m3456ZComparator$lambda52;
            }
        };
    }

    @c
    public static /* synthetic */ void getCanMultiMeasure$ui_release$annotations() {
    }

    public static /* synthetic */ void getZSortedChildren$annotations() {
    }

    public static /* synthetic */ void get_children$ui_release$annotations() {
    }

    public /* synthetic */ LayoutNode(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10);
    }
}
