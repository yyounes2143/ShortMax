package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewGroup.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewGroupKt {
    public static final boolean contains(@NotNull ViewGroup viewGroup, @NotNull View view) {
        if (viewGroup.indexOfChild(view) != -1) {
            return true;
        }
        return false;
    }

    public static final void forEach(@NotNull ViewGroup viewGroup, @NotNull Function1<? super View, Unit> function1) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            function1.invoke(viewGroup.getChildAt(i10));
        }
    }

    public static final void forEachIndexed(@NotNull ViewGroup viewGroup, @NotNull Function2<? super Integer, ? super View, Unit> function2) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            function2.invoke(Integer.valueOf(i10), viewGroup.getChildAt(i10));
        }
    }

    @NotNull
    public static final View get(@NotNull ViewGroup viewGroup, int i10) {
        View childAt = viewGroup.getChildAt(i10);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + viewGroup.getChildCount());
    }

    @NotNull
    public static final Sequence<View> getChildren(@NotNull final ViewGroup viewGroup) {
        return new Sequence<View>() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<View> iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    @NotNull
    public static final Sequence<View> getDescendants(@NotNull final ViewGroup viewGroup) {
        return new Sequence<View>() { // from class: androidx.core.view.ViewGroupKt$special$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<View> iterator() {
                return new TreeIterator(ViewGroupKt.getChildren(viewGroup).iterator(), new Function1<View, Iterator<? extends View>>() { // from class: androidx.core.view.ViewGroupKt$descendants$1$1
                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final Iterator<View> invoke(@NotNull View view) {
                        Sequence<View> children;
                        ViewGroup viewGroup2 = view instanceof ViewGroup ? (ViewGroup) view : null;
                        if (viewGroup2 == null || (children = ViewGroupKt.getChildren(viewGroup2)) == null) {
                            return null;
                        }
                        return children.iterator();
                    }
                });
            }
        };
    }

    @NotNull
    public static final IntRange getIndices(@NotNull ViewGroup viewGroup) {
        return kotlin.ranges.e.v(0, viewGroup.getChildCount());
    }

    public static final int getSize(@NotNull ViewGroup viewGroup) {
        return viewGroup.getChildCount();
    }

    public static final boolean isEmpty(@NotNull ViewGroup viewGroup) {
        if (viewGroup.getChildCount() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isNotEmpty(@NotNull ViewGroup viewGroup) {
        if (viewGroup.getChildCount() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Iterator<View> iterator(@NotNull ViewGroup viewGroup) {
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final void minusAssign(@NotNull ViewGroup viewGroup, @NotNull View view) {
        viewGroup.removeView(view);
    }

    public static final void plusAssign(@NotNull ViewGroup viewGroup, @NotNull View view) {
        viewGroup.addView(view);
    }

    public static final void setMargins(@NotNull ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i10) {
        marginLayoutParams.setMargins(i10, i10, i10, i10);
    }

    public static final void updateMargins(@NotNull ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        marginLayoutParams.setMargins(i10, i11, i12, i13);
    }

    public static /* synthetic */ void updateMargins$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = marginLayoutParams.leftMargin;
        }
        if ((i14 & 2) != 0) {
            i11 = marginLayoutParams.topMargin;
        }
        if ((i14 & 4) != 0) {
            i12 = marginLayoutParams.rightMargin;
        }
        if ((i14 & 8) != 0) {
            i13 = marginLayoutParams.bottomMargin;
        }
        marginLayoutParams.setMargins(i10, i11, i12, i13);
    }

    public static final void updateMarginsRelative(@NotNull ViewGroup.MarginLayoutParams marginLayoutParams, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        marginLayoutParams.setMarginStart(i10);
        marginLayoutParams.topMargin = i11;
        marginLayoutParams.setMarginEnd(i12);
        marginLayoutParams.bottomMargin = i13;
    }

    public static /* synthetic */ void updateMarginsRelative$default(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = marginLayoutParams.getMarginStart();
        }
        if ((i14 & 2) != 0) {
            i11 = marginLayoutParams.topMargin;
        }
        if ((i14 & 4) != 0) {
            i12 = marginLayoutParams.getMarginEnd();
        }
        if ((i14 & 8) != 0) {
            i13 = marginLayoutParams.bottomMargin;
        }
        marginLayoutParams.setMarginStart(i10);
        marginLayoutParams.topMargin = i11;
        marginLayoutParams.setMarginEnd(i12);
        marginLayoutParams.bottomMargin = i13;
    }
}
