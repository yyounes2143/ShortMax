package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RootForTest;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsNode.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SemanticsNode {
    public static final int $stable = 8;
    @Nullable
    private SemanticsNode fakeNodeParent;

    /* renamed from: id  reason: collision with root package name */
    private final int f1288id;
    private boolean isFake;
    @NotNull
    private final LayoutNode layoutNode;
    private final boolean mergingEnabled;
    @NotNull
    private final SemanticsEntity outerSemanticsEntity;
    @NotNull
    private final SemanticsConfiguration unmergedConfig;

    public SemanticsNode(@NotNull SemanticsEntity outerSemanticsEntity, boolean z10) {
        Intrinsics.checkNotNullParameter(outerSemanticsEntity, "outerSemanticsEntity");
        this.outerSemanticsEntity = outerSemanticsEntity;
        this.mergingEnabled = z10;
        this.unmergedConfig = outerSemanticsEntity.collapsedSemanticsConfiguration();
        this.f1288id = outerSemanticsEntity.getModifier().getId();
        this.layoutNode = outerSemanticsEntity.getLayoutNode();
    }

    private final void emitFakeNodes(List<SemanticsNode> list) {
        final Role role;
        final String str;
        role = SemanticsNodeKt.getRole(this);
        if (role != null && this.unmergedConfig.isMergingSemanticsOfDescendants() && !list.isEmpty()) {
            list.add(m3601fakeSemanticsNodeypyhhiA(role, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull SemanticsPropertyReceiver fakeSemanticsNode) {
                    Intrinsics.checkNotNullParameter(fakeSemanticsNode, "$this$fakeSemanticsNode");
                    SemanticsPropertiesKt.m3608setRolekuIjeqM(fakeSemanticsNode, Role.this.m3594unboximpl());
                }
            }));
        }
        SemanticsConfiguration semanticsConfiguration = this.unmergedConfig;
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (semanticsConfiguration.contains(semanticsProperties.getContentDescription()) && !list.isEmpty() && this.unmergedConfig.isMergingSemanticsOfDescendants()) {
            List list2 = (List) SemanticsConfigurationKt.getOrNull(this.unmergedConfig, semanticsProperties.getContentDescription());
            if (list2 != null) {
                str = (String) CollectionsKt.firstOrNull(list2);
            } else {
                str = null;
            }
            if (str != null) {
                list.add(0, m3601fakeSemanticsNodeypyhhiA(null, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull SemanticsPropertyReceiver fakeSemanticsNode) {
                        Intrinsics.checkNotNullParameter(fakeSemanticsNode, "$this$fakeSemanticsNode");
                        SemanticsPropertiesKt.setContentDescription(fakeSemanticsNode, str);
                    }
                }));
            }
        }
    }

    /* renamed from: fakeSemanticsNode-ypyhhiA  reason: not valid java name */
    private final SemanticsNode m3601fakeSemanticsNodeypyhhiA(Role role, Function1<? super SemanticsPropertyReceiver, Unit> function1) {
        SemanticsNode semanticsNode = new SemanticsNode(new SemanticsEntity(new LayoutNode(true).getInnerLayoutNodeWrapper$ui_release(), new SemanticsModifierCore(role != null ? SemanticsNodeKt.roleFakeNodeId(this) : SemanticsNodeKt.contentDescriptionFakeNodeId(this), false, false, function1)), false);
        semanticsNode.isFake = true;
        semanticsNode.fakeNodeParent = this;
        return semanticsNode;
    }

    private final List<SemanticsNode> findOneLayerOfMergingSemanticsNodes(List<SemanticsNode> list, boolean z10) {
        List unmergedChildren$ui_release$default = unmergedChildren$ui_release$default(this, z10, false, 2, null);
        int size = unmergedChildren$ui_release$default.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode = (SemanticsNode) unmergedChildren$ui_release$default.get(i10);
            if (semanticsNode.isMergingSemanticsOfDescendants()) {
                list.add(semanticsNode);
            } else if (!semanticsNode.unmergedConfig.isClearingSemantics()) {
                findOneLayerOfMergingSemanticsNodes$default(semanticsNode, list, false, 2, null);
            }
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List findOneLayerOfMergingSemanticsNodes$default(SemanticsNode semanticsNode, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return semanticsNode.findOneLayerOfMergingSemanticsNodes(list, z10);
    }

    private final boolean isMergingSemanticsOfDescendants() {
        if (this.mergingEnabled && this.unmergedConfig.isMergingSemanticsOfDescendants()) {
            return true;
        }
        return false;
    }

    private final void mergeConfig(SemanticsConfiguration semanticsConfiguration) {
        if (!this.unmergedConfig.isClearingSemantics()) {
            List unmergedChildren$ui_release$default = unmergedChildren$ui_release$default(this, false, false, 3, null);
            int size = unmergedChildren$ui_release$default.size();
            for (int i10 = 0; i10 < size; i10++) {
                SemanticsNode semanticsNode = (SemanticsNode) unmergedChildren$ui_release$default.get(i10);
                if (!semanticsNode.isMergingSemanticsOfDescendants()) {
                    semanticsConfiguration.mergeChild$ui_release(semanticsNode.unmergedConfig);
                    semanticsNode.mergeConfig(semanticsConfiguration);
                }
            }
        }
    }

    public static /* synthetic */ List unmergedChildren$ui_release$default(SemanticsNode semanticsNode, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        return semanticsNode.unmergedChildren$ui_release(z10, z11);
    }

    @NotNull
    public final LayoutNodeWrapper findWrapperToGetBounds$ui_release() {
        if (this.unmergedConfig.isMergingSemanticsOfDescendants()) {
            SemanticsEntity outerMergingSemantics = SemanticsNodeKt.getOuterMergingSemantics(this.layoutNode);
            if (outerMergingSemantics == null) {
                outerMergingSemantics = this.outerSemanticsEntity;
            }
            return outerMergingSemantics.getLayoutNodeWrapper();
        }
        return this.outerSemanticsEntity.getLayoutNodeWrapper();
    }

    public final int getAlignmentLinePosition(@NotNull AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return findWrapperToGetBounds$ui_release().get(alignmentLine);
    }

    @NotNull
    public final Rect getBoundsInRoot() {
        if (!this.layoutNode.isAttached()) {
            return Rect.Companion.getZero();
        }
        return LayoutCoordinatesKt.boundsInRoot(findWrapperToGetBounds$ui_release());
    }

    @NotNull
    public final Rect getBoundsInWindow() {
        if (!this.layoutNode.isAttached()) {
            return Rect.Companion.getZero();
        }
        return LayoutCoordinatesKt.boundsInWindow(findWrapperToGetBounds$ui_release());
    }

    @NotNull
    public final List<SemanticsNode> getChildren() {
        return getChildren(false, !this.mergingEnabled, false);
    }

    @NotNull
    public final SemanticsConfiguration getConfig() {
        if (isMergingSemanticsOfDescendants()) {
            SemanticsConfiguration copy = this.unmergedConfig.copy();
            mergeConfig(copy);
            return copy;
        }
        return this.unmergedConfig;
    }

    public final int getId() {
        return this.f1288id;
    }

    @NotNull
    public final LayoutInfo getLayoutInfo() {
        return this.layoutNode;
    }

    @NotNull
    public final LayoutNode getLayoutNode$ui_release() {
        return this.layoutNode;
    }

    public final boolean getMergingEnabled() {
        return this.mergingEnabled;
    }

    @NotNull
    public final SemanticsEntity getOuterSemanticsEntity$ui_release() {
        return this.outerSemanticsEntity;
    }

    @Nullable
    public final SemanticsNode getParent() {
        LayoutNode layoutNode;
        SemanticsEntity semanticsEntity;
        SemanticsNode semanticsNode = this.fakeNodeParent;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        if (this.mergingEnabled) {
            layoutNode = SemanticsNodeKt.findClosestParentNode(this.layoutNode, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsNode$parent$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull LayoutNode it) {
                    SemanticsConfiguration collapsedSemanticsConfiguration;
                    Intrinsics.checkNotNullParameter(it, "it");
                    SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(it);
                    boolean z10 = false;
                    if (outerSemantics != null && (collapsedSemanticsConfiguration = outerSemantics.collapsedSemanticsConfiguration()) != null && collapsedSemanticsConfiguration.isMergingSemanticsOfDescendants()) {
                        z10 = true;
                    }
                    return Boolean.valueOf(z10);
                }
            });
        } else {
            layoutNode = null;
        }
        if (layoutNode == null) {
            layoutNode = SemanticsNodeKt.findClosestParentNode(this.layoutNode, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsNode$parent$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull LayoutNode it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(SemanticsNodeKt.getOuterSemantics(it) != null);
                }
            });
        }
        if (layoutNode != null) {
            semanticsEntity = SemanticsNodeKt.getOuterSemantics(layoutNode);
        } else {
            semanticsEntity = null;
        }
        if (semanticsEntity == null) {
            return null;
        }
        return new SemanticsNode(semanticsEntity, this.mergingEnabled);
    }

    /* renamed from: getPositionInRoot-F1C5BW0  reason: not valid java name */
    public final long m3602getPositionInRootF1C5BW0() {
        if (!this.layoutNode.isAttached()) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        return LayoutCoordinatesKt.positionInRoot(findWrapperToGetBounds$ui_release());
    }

    /* renamed from: getPositionInWindow-F1C5BW0  reason: not valid java name */
    public final long m3603getPositionInWindowF1C5BW0() {
        if (!this.layoutNode.isAttached()) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        return LayoutCoordinatesKt.positionInWindow(findWrapperToGetBounds$ui_release());
    }

    @NotNull
    public final List<SemanticsNode> getReplacedChildren$ui_release() {
        return getChildren(false, false, true);
    }

    @NotNull
    public final List<SemanticsNode> getReplacedChildrenSortedByBounds$ui_release() {
        return getChildren(true, false, true);
    }

    @Nullable
    public final RootForTest getRoot() {
        Owner owner$ui_release = this.layoutNode.getOwner$ui_release();
        if (owner$ui_release != null) {
            return owner$ui_release.getRootForTest();
        }
        return null;
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    public final long m3604getSizeYbymL2g() {
        return findWrapperToGetBounds$ui_release().mo3337getSizeYbymL2g();
    }

    @NotNull
    public final Rect getTouchBoundsInRoot() {
        SemanticsEntity semanticsEntity;
        if (this.unmergedConfig.isMergingSemanticsOfDescendants()) {
            semanticsEntity = SemanticsNodeKt.getOuterMergingSemantics(this.layoutNode);
            if (semanticsEntity == null) {
                semanticsEntity = this.outerSemanticsEntity;
            }
        } else {
            semanticsEntity = this.outerSemanticsEntity;
        }
        return semanticsEntity.touchBoundsInRoot();
    }

    @NotNull
    public final SemanticsConfiguration getUnmergedConfig$ui_release() {
        return this.unmergedConfig;
    }

    public final boolean isFake$ui_release() {
        return this.isFake;
    }

    public final boolean isRoot() {
        if (getParent() == null) {
            return true;
        }
        return false;
    }

    public final void setFake$ui_release(boolean z10) {
        this.isFake = z10;
    }

    @NotNull
    public final List<SemanticsNode> unmergedChildren$ui_release(boolean z10, boolean z11) {
        List findOneLayerOfSemanticsWrappers$default;
        if (this.isFake) {
            return CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        if (z10) {
            findOneLayerOfSemanticsWrappers$default = SemanticsSortKt.findOneLayerOfSemanticsWrappersSortedByBounds$default(this.layoutNode, null, 1, null);
        } else {
            findOneLayerOfSemanticsWrappers$default = SemanticsNodeKt.findOneLayerOfSemanticsWrappers$default(this.layoutNode, null, 1, null);
        }
        int size = findOneLayerOfSemanticsWrappers$default.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new SemanticsNode((SemanticsEntity) findOneLayerOfSemanticsWrappers$default.get(i10), this.mergingEnabled));
        }
        if (z11) {
            emitFakeNodes(arrayList);
        }
        return arrayList;
    }

    private final List<SemanticsNode> getChildren(boolean z10, boolean z11, boolean z12) {
        if (!z11 && this.unmergedConfig.isClearingSemantics()) {
            return CollectionsKt.n();
        }
        if (isMergingSemanticsOfDescendants()) {
            return findOneLayerOfMergingSemanticsNodes$default(this, null, z10, 1, null);
        }
        return unmergedChildren$ui_release(z10, z12);
    }
}
