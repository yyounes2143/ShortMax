package androidx.compose.ui.semantics;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsOwner.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsOwnerKt {
    @NotNull
    public static final List<SemanticsNode> getAllSemanticsNodes(@NotNull SemanticsOwner semanticsOwner, boolean z10) {
        Intrinsics.checkNotNullParameter(semanticsOwner, "<this>");
        return CollectionsKt.d1(getAllSemanticsNodesToMap(semanticsOwner, !z10).values());
    }

    @NotNull
    public static final Map<Integer, SemanticsNode> getAllSemanticsNodesToMap(@NotNull SemanticsOwner semanticsOwner, boolean z10) {
        SemanticsNode rootSemanticsNode;
        Intrinsics.checkNotNullParameter(semanticsOwner, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z10) {
            rootSemanticsNode = semanticsOwner.getUnmergedRootSemanticsNode();
        } else {
            rootSemanticsNode = semanticsOwner.getRootSemanticsNode();
        }
        getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(linkedHashMap, rootSemanticsNode);
        return linkedHashMap;
    }

    public static /* synthetic */ Map getAllSemanticsNodesToMap$default(SemanticsOwner semanticsOwner, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return getAllSemanticsNodesToMap(semanticsOwner, z10);
    }

    private static final void getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(Map<Integer, SemanticsNode> map, SemanticsNode semanticsNode) {
        map.put(Integer.valueOf(semanticsNode.getId()), semanticsNode);
        List<SemanticsNode> children = semanticsNode.getChildren();
        int size = children.size();
        for (int i10 = 0; i10 < size; i10++) {
            getAllSemanticsNodesToMap$findAllSemanticNodesRecursive(map, children.get(i10));
        }
    }
}
