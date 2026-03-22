package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.semantics.NodeLocationHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsSort.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsSortKt {
    @Nullable
    public static final LayoutNode findNodeByPredicateTraversal(@NotNull LayoutNode layoutNode, @NotNull Function1<? super LayoutNode, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (predicate.invoke(layoutNode).booleanValue()) {
            return layoutNode;
        }
        List<LayoutNode> children$ui_release = layoutNode.getChildren$ui_release();
        int size = children$ui_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutNode findNodeByPredicateTraversal = findNodeByPredicateTraversal(children$ui_release.get(i10), predicate);
            if (findNodeByPredicateTraversal != null) {
                return findNodeByPredicateTraversal;
            }
        }
        return null;
    }

    @NotNull
    public static final List<SemanticsEntity> findOneLayerOfSemanticsWrappersSortedByBounds(@NotNull LayoutNode layoutNode, @NotNull List<SemanticsEntity> list) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        if (!layoutNode.isAttached()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        List<LayoutNode> children$ui_release = layoutNode.getChildren$ui_release();
        int size = children$ui_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutNode layoutNode2 = children$ui_release.get(i10);
            if (layoutNode2.isAttached()) {
                arrayList.add(new NodeLocationHolder(layoutNode, layoutNode2));
            }
        }
        List<NodeLocationHolder> findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy = findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(arrayList);
        ArrayList arrayList2 = new ArrayList(findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy.size());
        int size2 = findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy.size();
        for (int i11 = 0; i11 < size2; i11++) {
            arrayList2.add(findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy.get(i11).getNode$ui_release());
        }
        int size3 = arrayList2.size();
        for (int i12 = 0; i12 < size3; i12++) {
            LayoutNode layoutNode3 = (LayoutNode) arrayList2.get(i12);
            SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(layoutNode3);
            if (outerSemantics != null) {
                list.add(outerSemantics);
            } else {
                findOneLayerOfSemanticsWrappersSortedByBounds(layoutNode3, list);
            }
        }
        return list;
    }

    public static /* synthetic */ List findOneLayerOfSemanticsWrappersSortedByBounds$default(LayoutNode layoutNode, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return findOneLayerOfSemanticsWrappersSortedByBounds(layoutNode, list);
    }

    private static final List<NodeLocationHolder> findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(List<NodeLocationHolder> list) {
        try {
            NodeLocationHolder.Companion.setComparisonStrategy$ui_release(NodeLocationHolder.ComparisonStrategy.Stripe);
            List<NodeLocationHolder> g12 = CollectionsKt.g1(list);
            CollectionsKt.C(g12);
            return g12;
        } catch (IllegalArgumentException unused) {
            NodeLocationHolder.Companion.setComparisonStrategy$ui_release(NodeLocationHolder.ComparisonStrategy.Location);
            List<NodeLocationHolder> g13 = CollectionsKt.g1(list);
            CollectionsKt.C(g13);
            return g13;
        }
    }

    @NotNull
    public static final LayoutNodeWrapper findWrapperToGetBounds(@NotNull LayoutNode layoutNode) {
        LayoutNodeWrapper layoutNodeWrapper;
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        SemanticsEntity outerMergingSemantics = SemanticsNodeKt.getOuterMergingSemantics(layoutNode);
        if (outerMergingSemantics == null) {
            outerMergingSemantics = SemanticsNodeKt.getOuterSemantics(layoutNode);
        }
        if (outerMergingSemantics == null || (layoutNodeWrapper = outerMergingSemantics.getLayoutNodeWrapper()) == null) {
            return layoutNode.getInnerLayoutNodeWrapper$ui_release();
        }
        return layoutNodeWrapper;
    }
}
