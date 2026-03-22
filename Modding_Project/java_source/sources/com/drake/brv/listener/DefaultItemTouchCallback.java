package com.drake.brv.listener;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import l1.c;
import l1.h;
import o1.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultItemTouchCallback.kt */
@Metadata
/* loaded from: classes3.dex */
public class DefaultItemTouchCallback extends ItemTouchHelper.Callback {

    /* renamed from: a  reason: collision with root package name */
    private int f13553a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BindingAdapter.BindingViewHolder f13554b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BindingAdapter.BindingViewHolder f13555c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Integer f13556d;

    public void a(@NotNull BindingAdapter.BindingViewHolder source, @NotNull BindingAdapter.BindingViewHolder target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        View findViewWithTag = viewHolder.itemView.findViewWithTag("swipe");
        if (findViewWithTag != null) {
            findViewWithTag.setTranslationX(0.0f);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int i12 = 0;
        if (viewHolder instanceof BindingAdapter.BindingViewHolder) {
            Object j10 = ((BindingAdapter.BindingViewHolder) viewHolder).j();
            if (j10 instanceof c) {
                i11 = ((c) j10).a();
            } else {
                i11 = 0;
            }
            if (j10 instanceof h) {
                i12 = ((h) j10).a();
            }
            i10 = i12;
            i12 = i11;
        } else {
            i10 = 0;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(i12, i10);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getSwipeThreshold(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return 1.0f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(@NotNull Canvas c10, @NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, float f10, float f11, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (i10 == 1) {
            View findViewWithTag = viewHolder.itemView.findViewWithTag("swipe");
            if (findViewWithTag != null) {
                findViewWithTag.setTranslationX(f10);
                return;
            } else {
                super.onChildDraw(c10, recyclerView, viewHolder, f10, f11, i10, z10);
                return;
            }
        }
        super.onChildDraw(c10, recyclerView, viewHolder, f10, f11, i10, z10);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder source, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        BindingAdapter a10 = b.a(recyclerView);
        List<Object> list = null;
        if (a10 == null) {
            a10 = null;
        }
        if (a10 == null) {
            return false;
        }
        int childLayoutPosition = recyclerView.getChildLayoutPosition(source.itemView);
        int childLayoutPosition2 = recyclerView.getChildLayoutPosition(target.itemView);
        List<Object> u10 = a10.u();
        if (TypeIntrinsics.isMutableList(u10)) {
            list = u10;
        }
        if (list == null || !(source instanceof BindingAdapter.BindingViewHolder) || !(target instanceof BindingAdapter.BindingViewHolder) || !a10.C(childLayoutPosition2)) {
            return false;
        }
        int o10 = childLayoutPosition - a10.o();
        Object obj = list.get(o10);
        list.remove(o10);
        list.add(childLayoutPosition2 - a10.o(), obj);
        a10.notifyItemMoved(childLayoutPosition, childLayoutPosition2);
        if (this.f13556d == null) {
            this.f13556d = Integer.valueOf(((BindingAdapter.BindingViewHolder) target).getBindingAdapterPosition());
        }
        this.f13554b = (BindingAdapter.BindingViewHolder) source;
        this.f13555c = (BindingAdapter.BindingViewHolder) target;
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i10) {
        Integer num;
        if (i10 == 0) {
            BindingAdapter.BindingViewHolder bindingViewHolder = this.f13554b;
            BindingAdapter.BindingViewHolder bindingViewHolder2 = this.f13555c;
            if (this.f13553a == 2 && bindingViewHolder != null && bindingViewHolder2 != null && (num = this.f13556d) != null) {
                int bindingAdapterPosition = bindingViewHolder.getBindingAdapterPosition();
                if (num == null || num.intValue() != bindingAdapterPosition) {
                    a(bindingViewHolder, bindingViewHolder2);
                }
            }
            this.f13556d = null;
            return;
        }
        this.f13553a = i10;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int i10) {
        BindingAdapter bindingAdapter;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        RecyclerView.Adapter<? extends RecyclerView.ViewHolder> bindingAdapter2 = viewHolder.getBindingAdapter();
        List<Object> list = null;
        if (bindingAdapter2 instanceof BindingAdapter) {
            bindingAdapter = (BindingAdapter) bindingAdapter2;
        } else {
            bindingAdapter = null;
        }
        if (bindingAdapter == null) {
            return;
        }
        int layoutPosition = viewHolder.getLayoutPosition();
        int o10 = bindingAdapter.o();
        if (layoutPosition < o10) {
            bindingAdapter.J(Integer.valueOf(layoutPosition), true);
            return;
        }
        List<Object> u10 = bindingAdapter.u();
        if (TypeIntrinsics.isMutableList(u10)) {
            list = u10;
        }
        if (list != null) {
            list.remove(layoutPosition - o10);
            bindingAdapter.notifyItemRemoved(layoutPosition);
        }
    }
}
