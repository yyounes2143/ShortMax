package androidx.compose.ui.platform;

import android.graphics.Region;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean accessibilityEquals(AccessibilityAction<?> accessibilityAction, Object obj) {
        if (accessibilityAction == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj;
        if (!Intrinsics.areEqual(accessibilityAction.getLabel(), accessibilityAction2.getLabel())) {
            return false;
        }
        if (accessibilityAction.getAction() == null && accessibilityAction2.getAction() != null) {
            return false;
        }
        if (accessibilityAction.getAction() == null || accessibilityAction2.getAction() != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean enabled(SemanticsNode semanticsNode) {
        if (SemanticsConfigurationKt.getOrNull(semanticsNode.getConfig(), SemanticsProperties.INSTANCE.getDisabled()) == null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean excludeLineAndPageGranularities(SemanticsNode semanticsNode) {
        boolean z10;
        SemanticsConfiguration collapsedSemanticsConfiguration;
        if (isTextField(semanticsNode) && !Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), SemanticsProperties.INSTANCE.getFocused()), Boolean.TRUE)) {
            return true;
        }
        LayoutNode findClosestParentNode = findClosestParentNode(semanticsNode.getLayoutNode$ui_release(), new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1
            /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
                if (r3.contains(androidx.compose.ui.semantics.SemanticsActions.INSTANCE.getSetText()) != false) goto L9;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull androidx.compose.ui.node.LayoutNode r3) {
                /*
                    r2 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                    androidx.compose.ui.semantics.SemanticsEntity r3 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r3)
                    if (r3 == 0) goto L10
                    androidx.compose.ui.semantics.SemanticsConfiguration r3 = r3.collapsedSemanticsConfiguration()
                    goto L11
                L10:
                    r3 = 0
                L11:
                    if (r3 == 0) goto L27
                    boolean r0 = r3.isMergingSemanticsOfDescendants()
                    r1 = 1
                    if (r0 != r1) goto L27
                    androidx.compose.ui.semantics.SemanticsActions r0 = androidx.compose.ui.semantics.SemanticsActions.INSTANCE
                    androidx.compose.ui.semantics.SemanticsPropertyKey r0 = r0.getSetText()
                    boolean r3 = r3.contains(r0)
                    if (r3 == 0) goto L27
                    goto L28
                L27:
                    r1 = 0
                L28:
                    java.lang.Boolean r3 = java.lang.Boolean.valueOf(r1)
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1.invoke(androidx.compose.ui.node.LayoutNode):java.lang.Boolean");
            }
        });
        if (findClosestParentNode != null) {
            SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(findClosestParentNode);
            if (outerSemantics != null && (collapsedSemanticsConfiguration = outerSemantics.collapsedSemanticsConfiguration()) != null) {
                z10 = Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(collapsedSemanticsConfiguration, SemanticsProperties.INSTANCE.getFocused()), Boolean.TRUE);
            } else {
                z10 = false;
            }
            if (!z10) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public static final ScrollObservationScope findById(@NotNull List<ScrollObservationScope> list, int i10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (list.get(i11).getSemanticsNodeId() == i10) {
                return list.get(i11);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutNode findClosestParentNode(LayoutNode layoutNode, Function1<? super LayoutNode, Boolean> function1) {
        for (LayoutNode parent$ui_release = layoutNode.getParent$ui_release(); parent$ui_release != null; parent$ui_release = parent$ui_release.getParent$ui_release()) {
            if (function1.invoke(parent$ui_release).booleanValue()) {
                return parent$ui_release;
            }
        }
        return null;
    }

    @NotNull
    public static final Map<Integer, SemanticsNodeWithAdjustedBounds> getAllUncoveredSemanticsNodesToMap(@NotNull SemanticsOwner semanticsOwner) {
        Intrinsics.checkNotNullParameter(semanticsOwner, "<this>");
        SemanticsNode unmergedRootSemanticsNode = semanticsOwner.getUnmergedRootSemanticsNode();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (unmergedRootSemanticsNode.getLayoutNode$ui_release().isPlaced() && unmergedRootSemanticsNode.getLayoutNode$ui_release().isAttached()) {
            Region region = new Region();
            region.set(RectHelper_androidKt.toAndroidRect(unmergedRootSemanticsNode.getBoundsInRoot()));
            getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(region, unmergedRootSemanticsNode, linkedHashMap, unmergedRootSemanticsNode);
        }
        return linkedHashMap;
    }

    private static final void getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(Region region, SemanticsNode semanticsNode, Map<Integer, SemanticsNodeWithAdjustedBounds> map, SemanticsNode semanticsNode2) {
        boolean z10;
        int id2;
        Rect rect;
        LayoutInfo layoutInfo;
        if (semanticsNode2.getLayoutNode$ui_release().isPlaced() && semanticsNode2.getLayoutNode$ui_release().isAttached()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!region.isEmpty() || semanticsNode2.getId() == semanticsNode.getId()) {
            if (z10 && !semanticsNode2.isFake$ui_release()) {
                return;
            }
            android.graphics.Rect androidRect = RectHelper_androidKt.toAndroidRect(semanticsNode2.getTouchBoundsInRoot());
            Region region2 = new Region();
            region2.set(androidRect);
            if (semanticsNode2.getId() == semanticsNode.getId()) {
                id2 = -1;
            } else {
                id2 = semanticsNode2.getId();
            }
            if (region2.op(region, region2, Region.Op.INTERSECT)) {
                Integer valueOf = Integer.valueOf(id2);
                android.graphics.Rect bounds = region2.getBounds();
                Intrinsics.checkNotNullExpressionValue(bounds, "region.bounds");
                map.put(valueOf, new SemanticsNodeWithAdjustedBounds(semanticsNode2, bounds));
                List<SemanticsNode> replacedChildren$ui_release = semanticsNode2.getReplacedChildren$ui_release();
                for (int size = replacedChildren$ui_release.size() - 1; -1 < size; size--) {
                    getAllUncoveredSemanticsNodesToMap$findAllSemanticNodesRecursive(region, semanticsNode, map, replacedChildren$ui_release.get(size));
                }
                region.op(androidRect, region, Region.Op.REVERSE_DIFFERENCE);
            } else if (semanticsNode2.isFake$ui_release()) {
                SemanticsNode parent = semanticsNode2.getParent();
                if (parent != null && (layoutInfo = parent.getLayoutInfo()) != null && layoutInfo.isPlaced()) {
                    rect = parent.getBoundsInRoot();
                } else {
                    rect = new Rect(0.0f, 0.0f, 10.0f, 10.0f);
                }
                map.put(Integer.valueOf(id2), new SemanticsNodeWithAdjustedBounds(semanticsNode2, RectHelper_androidKt.toAndroidRect(rect)));
            } else if (id2 == -1) {
                Integer valueOf2 = Integer.valueOf(id2);
                android.graphics.Rect bounds2 = region2.getBounds();
                Intrinsics.checkNotNullExpressionValue(bounds2, "region.bounds");
                map.put(valueOf2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, bounds2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasPaneTitle(SemanticsNode semanticsNode) {
        return semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getPaneTitle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isPassword(SemanticsNode semanticsNode) {
        return semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getPassword());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isRtl(SemanticsNode semanticsNode) {
        if (semanticsNode.getLayoutInfo().getLayoutDirection() == LayoutDirection.Rtl) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isTextField(SemanticsNode semanticsNode) {
        return semanticsNode.getUnmergedConfig$ui_release().contains(SemanticsActions.INSTANCE.getSetText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean propertiesDeleted(SemanticsNode semanticsNode, AndroidComposeViewAccessibilityDelegateCompat.SemanticsNodeCopy semanticsNodeCopy) {
        Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = semanticsNodeCopy.getUnmergedConfig().iterator();
        while (it.hasNext()) {
            if (!semanticsNode.getConfig().contains(it.next().getKey())) {
                return true;
            }
        }
        return false;
    }
}
