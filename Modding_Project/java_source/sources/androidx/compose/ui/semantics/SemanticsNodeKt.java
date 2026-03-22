package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.EntityList;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsNodeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int contentDescriptionFakeNodeId(SemanticsNode semanticsNode) {
        return semanticsNode.getId() + 2000000000;
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

    private static final List<SemanticsEntity> findOneLayerOfSemanticsWrappers(LayoutNode layoutNode, List<SemanticsEntity> list) {
        MutableVector<LayoutNode> zSortedChildren = layoutNode.getZSortedChildren();
        int size = zSortedChildren.getSize();
        if (size > 0) {
            LayoutNode[] content = zSortedChildren.getContent();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = content[i10];
                SemanticsEntity outerSemantics = getOuterSemantics(layoutNode2);
                if (outerSemantics != null) {
                    list.add(outerSemantics);
                } else {
                    findOneLayerOfSemanticsWrappers(layoutNode2, list);
                }
                i10++;
            } while (i10 < size);
            return list;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List findOneLayerOfSemanticsWrappers$default(LayoutNode layoutNode, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return findOneLayerOfSemanticsWrappers(layoutNode, list);
    }

    @Nullable
    public static final SemanticsEntity getOuterMergingSemantics(@NotNull LayoutNode layoutNode) {
        SemanticsEntity semanticsEntity;
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = layoutNode.getOuterLayoutNodeWrapper$ui_release();
        while (outerLayoutNodeWrapper$ui_release != null && !EntityList.m3435has0OSVbXo(outerLayoutNodeWrapper$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) {
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
        }
        if (outerLayoutNodeWrapper$ui_release == null || (semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(outerLayoutNodeWrapper$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) == null) {
            return null;
        }
        LayoutNodeWrapper layoutNodeWrapper = semanticsEntity.getLayoutNodeWrapper();
        while (layoutNodeWrapper != null) {
            while (semanticsEntity != null) {
                if (semanticsEntity.getModifier().getSemanticsConfiguration().isMergingSemanticsOfDescendants()) {
                    return semanticsEntity;
                }
                semanticsEntity = semanticsEntity.getNext();
            }
            layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release();
            if (layoutNodeWrapper != null) {
                semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
            } else {
                semanticsEntity = null;
            }
        }
        return null;
    }

    @Nullable
    public static final SemanticsEntity getOuterSemantics(@NotNull LayoutNode layoutNode) {
        SemanticsEntity semanticsEntity;
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = layoutNode.getOuterLayoutNodeWrapper$ui_release();
        while (outerLayoutNodeWrapper$ui_release != null && !EntityList.m3435has0OSVbXo(outerLayoutNodeWrapper$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) {
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
        }
        if (outerLayoutNodeWrapper$ui_release == null || (semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(outerLayoutNodeWrapper$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) == null) {
            return null;
        }
        LayoutNodeWrapper layoutNodeWrapper = semanticsEntity.getLayoutNodeWrapper();
        while (layoutNodeWrapper != null) {
            if (semanticsEntity != null) {
                return semanticsEntity;
            }
            layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release();
            if (layoutNodeWrapper != null) {
                semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
            } else {
                semanticsEntity = null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Role getRole(SemanticsNode semanticsNode) {
        return (Role) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), SemanticsProperties.INSTANCE.getRole());
    }

    @Nullable
    public static final SemanticsEntity nearestSemantics(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull Function1<? super SemanticsEntity, Boolean> predicate) {
        SemanticsEntity semanticsEntity;
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        while (layoutNodeWrapper != null && !EntityList.m3435has0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) {
            layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release();
        }
        if (layoutNodeWrapper == null || (semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) == null) {
            return null;
        }
        LayoutNodeWrapper layoutNodeWrapper2 = semanticsEntity.getLayoutNodeWrapper();
        while (layoutNodeWrapper2 != null) {
            while (semanticsEntity != null) {
                if (predicate.invoke(semanticsEntity).booleanValue()) {
                    return semanticsEntity;
                }
                semanticsEntity = semanticsEntity.getNext();
            }
            layoutNodeWrapper2 = layoutNodeWrapper2.getWrapped$ui_release();
            if (layoutNodeWrapper2 != null) {
                semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper2.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
            } else {
                semanticsEntity = null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int roleFakeNodeId(SemanticsNode semanticsNode) {
        return semanticsNode.getId() + Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
    }
}
