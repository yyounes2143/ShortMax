package androidx.compose.ui.platform.accessibility;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class CollectionInfoKt {
    private static final boolean calculateIfHorizontallyStacked(List<SemanticsNode> list) {
        List n10;
        long m1616unboximpl;
        if (list.size() < 2) {
            return true;
        }
        if (list.size() != 0 && list.size() != 1) {
            n10 = new ArrayList();
            SemanticsNode semanticsNode = list.get(0);
            int p10 = CollectionsKt.p(list);
            int i10 = 0;
            while (i10 < p10) {
                i10++;
                SemanticsNode semanticsNode2 = list.get(i10);
                SemanticsNode semanticsNode3 = semanticsNode2;
                SemanticsNode semanticsNode4 = semanticsNode;
                n10.add(Offset.m1595boximpl(OffsetKt.Offset(Math.abs(Offset.m1606getXimpl(semanticsNode4.getBoundsInRoot().m1636getCenterF1C5BW0()) - Offset.m1606getXimpl(semanticsNode3.getBoundsInRoot().m1636getCenterF1C5BW0())), Math.abs(Offset.m1607getYimpl(semanticsNode4.getBoundsInRoot().m1636getCenterF1C5BW0()) - Offset.m1607getYimpl(semanticsNode3.getBoundsInRoot().m1636getCenterF1C5BW0())))));
                semanticsNode = semanticsNode2;
            }
        } else {
            n10 = CollectionsKt.n();
        }
        if (n10.size() == 1) {
            m1616unboximpl = ((Offset) CollectionsKt.r0(n10)).m1616unboximpl();
        } else if (!n10.isEmpty()) {
            Object r02 = CollectionsKt.r0(n10);
            int p11 = CollectionsKt.p(n10);
            if (1 <= p11) {
                int i11 = 1;
                while (true) {
                    r02 = Offset.m1595boximpl(Offset.m1611plusMKHz9U(((Offset) r02).m1616unboximpl(), ((Offset) n10.get(i11)).m1616unboximpl()));
                    if (i11 == p11) {
                        break;
                    }
                    i11++;
                }
            }
            m1616unboximpl = ((Offset) r02).m1616unboximpl();
        } else {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        if (Offset.m1597component2impl(m1616unboximpl) < Offset.m1596component1impl(m1616unboximpl)) {
            return true;
        }
        return false;
    }

    public static final boolean hasCollectionInfo(@NotNull SemanticsNode semanticsNode) {
        Intrinsics.checkNotNullParameter(semanticsNode, "<this>");
        SemanticsConfiguration config = semanticsNode.getConfig();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (SemanticsConfigurationKt.getOrNull(config, semanticsProperties.getCollectionInfo()) == null && SemanticsConfigurationKt.getOrNull(semanticsNode.getConfig(), semanticsProperties.getSelectableGroup()) == null) {
            return false;
        }
        return true;
    }

    private static final boolean isLazyCollection(CollectionInfo collectionInfo) {
        if (collectionInfo.getRowCount() >= 0 && collectionInfo.getColumnCount() >= 0) {
            return false;
        }
        return true;
    }

    public static final void setCollectionInfo(@NotNull SemanticsNode node, @NotNull AccessibilityNodeInfoCompat info) {
        int size;
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(info, "info");
        SemanticsConfiguration config = node.getConfig();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.getOrNull(config, semanticsProperties.getCollectionInfo());
        if (collectionInfo != null) {
            info.setCollectionInfo(toAccessibilityCollectionInfo(collectionInfo));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (SemanticsConfigurationKt.getOrNull(node.getConfig(), semanticsProperties.getSelectableGroup()) != null) {
            List<SemanticsNode> replacedChildren$ui_release = node.getReplacedChildren$ui_release();
            int size2 = replacedChildren$ui_release.size();
            for (int i10 = 0; i10 < size2; i10++) {
                SemanticsNode semanticsNode = replacedChildren$ui_release.get(i10);
                if (semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getSelected())) {
                    arrayList.add(semanticsNode);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            boolean calculateIfHorizontallyStacked = calculateIfHorizontallyStacked(arrayList);
            int i11 = 1;
            if (calculateIfHorizontallyStacked) {
                size = 1;
            } else {
                size = arrayList.size();
            }
            if (calculateIfHorizontallyStacked) {
                i11 = arrayList.size();
            }
            info.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(size, i11, false, 0));
        }
    }

    public static final void setCollectionItemInfo(@NotNull SemanticsNode node, @NotNull AccessibilityNodeInfoCompat info) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(info, "info");
        SemanticsConfiguration config = node.getConfig();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        CollectionItemInfo collectionItemInfo = (CollectionItemInfo) SemanticsConfigurationKt.getOrNull(config, semanticsProperties.getCollectionItemInfo());
        if (collectionItemInfo != null) {
            info.setCollectionItemInfo(toAccessibilityCollectionItemInfo(collectionItemInfo, node));
        }
        SemanticsNode parent = node.getParent();
        if (parent != null && SemanticsConfigurationKt.getOrNull(parent.getConfig(), semanticsProperties.getSelectableGroup()) != null) {
            CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.getOrNull(parent.getConfig(), semanticsProperties.getCollectionInfo());
            if ((collectionInfo != null && isLazyCollection(collectionInfo)) || !node.getConfig().contains(semanticsProperties.getSelected())) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            List<SemanticsNode> replacedChildren$ui_release = parent.getReplacedChildren$ui_release();
            int size = replacedChildren$ui_release.size();
            for (int i12 = 0; i12 < size; i12++) {
                SemanticsNode semanticsNode = replacedChildren$ui_release.get(i12);
                if (semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getSelected())) {
                    arrayList.add(semanticsNode);
                }
            }
            if (!arrayList.isEmpty()) {
                boolean calculateIfHorizontallyStacked = calculateIfHorizontallyStacked(arrayList);
                int size2 = arrayList.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    SemanticsNode semanticsNode2 = (SemanticsNode) arrayList.get(i13);
                    if (semanticsNode2.getId() == node.getId()) {
                        if (calculateIfHorizontallyStacked) {
                            i10 = 0;
                        } else {
                            i10 = i13;
                        }
                        if (calculateIfHorizontallyStacked) {
                            i11 = i13;
                        } else {
                            i11 = 0;
                        }
                        AccessibilityNodeInfoCompat.CollectionItemInfoCompat obtain = AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i10, 1, i11, 1, false, ((Boolean) semanticsNode2.getConfig().getOrElse(SemanticsProperties.INSTANCE.getSelected(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.accessibility.CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Boolean invoke() {
                                return Boolean.FALSE;
                            }
                        })).booleanValue());
                        if (obtain != null) {
                            info.setCollectionItemInfo(obtain);
                        }
                    }
                }
            }
        }
    }

    private static final AccessibilityNodeInfoCompat.CollectionInfoCompat toAccessibilityCollectionInfo(CollectionInfo collectionInfo) {
        return AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(collectionInfo.getRowCount(), collectionInfo.getColumnCount(), false, 0);
    }

    private static final AccessibilityNodeInfoCompat.CollectionItemInfoCompat toAccessibilityCollectionItemInfo(CollectionItemInfo collectionItemInfo, SemanticsNode semanticsNode) {
        return AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(collectionItemInfo.getRowIndex(), collectionItemInfo.getRowSpan(), collectionItemInfo.getColumnIndex(), collectionItemInfo.getColumnSpan(), false, ((Boolean) semanticsNode.getConfig().getOrElse(SemanticsProperties.INSTANCE.getSelected(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.accessibility.CollectionInfoKt$toAccessibilityCollectionItemInfo$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.FALSE;
            }
        })).booleanValue());
    }
}
