package o1;

import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import com.drake.brv.layoutmanager.HoverGridLayoutManager;
import com.drake.brv.layoutmanager.HoverLinearLayoutManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecyclerUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull
    public static final BindingAdapter a(@NotNull RecyclerView recyclerView) {
        BindingAdapter bindingAdapter;
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter instanceof BindingAdapter) {
            bindingAdapter = (BindingAdapter) adapter;
        } else {
            bindingAdapter = null;
        }
        if (bindingAdapter != null) {
            return bindingAdapter;
        }
        throw new NullPointerException("RecyclerView without BindingAdapter");
    }

    @NotNull
    public static final RecyclerView b(@NotNull RecyclerView recyclerView, int i10, int i11, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        HoverGridLayoutManager hoverGridLayoutManager = new HoverGridLayoutManager(recyclerView.getContext(), i10, i11, z10);
        hoverGridLayoutManager.K(z11);
        recyclerView.setLayoutManager(hoverGridLayoutManager);
        return recyclerView;
    }

    public static /* synthetic */ RecyclerView c(RecyclerView recyclerView, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            z11 = true;
        }
        return b(recyclerView, i10, i11, z10, z11);
    }

    @NotNull
    public static final RecyclerView d(@NotNull RecyclerView recyclerView, int i10, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        HoverLinearLayoutManager hoverLinearLayoutManager = new HoverLinearLayoutManager(recyclerView.getContext(), i10, z10);
        hoverLinearLayoutManager.K(z11);
        hoverLinearLayoutManager.setStackFromEnd(z12);
        recyclerView.setLayoutManager(hoverLinearLayoutManager);
        return recyclerView;
    }

    public static /* synthetic */ RecyclerView e(RecyclerView recyclerView, int i10, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 1;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            z11 = true;
        }
        if ((i11 & 8) != 0) {
            z12 = false;
        }
        return d(recyclerView, i10, z10, z11, z12);
    }

    public static final void f(@NotNull RecyclerView recyclerView, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        a(recyclerView).K(list);
    }

    @NotNull
    public static final BindingAdapter g(@NotNull RecyclerView recyclerView, @NotNull Function2<? super BindingAdapter, ? super RecyclerView, Unit> block) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        BindingAdapter bindingAdapter = new BindingAdapter();
        block.invoke(bindingAdapter, recyclerView);
        recyclerView.setAdapter(bindingAdapter);
        return bindingAdapter;
    }
}
