package androidx.compose.ui.node;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DepthSortedSet.kt */
@Metadata
/* loaded from: classes.dex */
public final class DepthSortedSet {
    @NotNull
    private final Comparator<LayoutNode> DepthComparator;
    private final boolean extraAssertions;
    @NotNull
    private final i mapOfOriginalDepth$delegate;
    @NotNull
    private final TreeSet<LayoutNode> set;

    public DepthSortedSet() {
        this(false, 1, null);
    }

    private final Map<LayoutNode, Integer> getMapOfOriginalDepth() {
        return (Map) this.mapOfOriginalDepth$delegate.getValue();
    }

    public final void add(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (node.isAttached()) {
            if (this.extraAssertions) {
                Integer num = getMapOfOriginalDepth().get(node);
                if (num == null) {
                    getMapOfOriginalDepth().put(node, Integer.valueOf(node.getDepth$ui_release()));
                } else {
                    if (num.intValue() != node.getDepth$ui_release()) {
                        throw new IllegalStateException("Check failed.");
                    }
                }
            }
            this.set.add(node);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final boolean contains(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        boolean contains = this.set.contains(node);
        if (this.extraAssertions && contains != getMapOfOriginalDepth().containsKey(node)) {
            throw new IllegalStateException("Check failed.");
        }
        return contains;
    }

    public final boolean isEmpty() {
        return this.set.isEmpty();
    }

    public final boolean isNotEmpty() {
        return !isEmpty();
    }

    @NotNull
    public final LayoutNode pop() {
        LayoutNode node = this.set.first();
        Intrinsics.checkNotNullExpressionValue(node, "node");
        remove(node);
        return node;
    }

    public final void popEach(@NotNull Function1<? super LayoutNode, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        while (!isEmpty()) {
            block.invoke(pop());
        }
    }

    public final boolean remove(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (node.isAttached()) {
            boolean remove = this.set.remove(node);
            if (this.extraAssertions) {
                Integer remove2 = getMapOfOriginalDepth().remove(node);
                if (remove) {
                    int depth$ui_release = node.getDepth$ui_release();
                    if (remove2 == null || remove2.intValue() != depth$ui_release) {
                        throw new IllegalStateException("Check failed.");
                    }
                } else if (remove2 != null) {
                    throw new IllegalStateException("Check failed.");
                }
            }
            return remove;
        }
        throw new IllegalStateException("Check failed.");
    }

    @NotNull
    public String toString() {
        String obj = this.set.toString();
        Intrinsics.checkNotNullExpressionValue(obj, "set.toString()");
        return obj;
    }

    public DepthSortedSet(boolean z10) {
        this.extraAssertions = z10;
        this.mapOfOriginalDepth$delegate = c.a(LazyThreadSafetyMode.NONE, new Function0<Map<LayoutNode, Integer>>() { // from class: androidx.compose.ui.node.DepthSortedSet$mapOfOriginalDepth$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<LayoutNode, Integer> invoke() {
                return new LinkedHashMap();
            }
        });
        Comparator<LayoutNode> comparator = new Comparator<LayoutNode>() { // from class: androidx.compose.ui.node.DepthSortedSet$DepthComparator$1
            @Override // java.util.Comparator
            public int compare(@NotNull LayoutNode l12, @NotNull LayoutNode l22) {
                Intrinsics.checkNotNullParameter(l12, "l1");
                Intrinsics.checkNotNullParameter(l22, "l2");
                int compare = Intrinsics.compare(l12.getDepth$ui_release(), l22.getDepth$ui_release());
                return compare != 0 ? compare : Intrinsics.compare(l12.hashCode(), l22.hashCode());
            }
        };
        this.DepthComparator = comparator;
        this.set = new TreeSet<>(comparator);
    }

    public /* synthetic */ DepthSortedSet(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }
}
