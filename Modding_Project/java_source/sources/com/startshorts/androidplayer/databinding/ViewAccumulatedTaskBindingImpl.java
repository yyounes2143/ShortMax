package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.task.AccumulatedTaskProgressView;
/* loaded from: classes6.dex */
public class ViewAccumulatedTaskBindingImpl extends ViewAccumulatedTaskBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41163l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f41164m;

    /* renamed from: k  reason: collision with root package name */
    private long f41165k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41164m = sparseIntArray;
        sparseIntArray.put(R$id.accumulated_task_title_tv, 1);
        sparseIntArray.put(R$id.accumulated_task_limited_time_tv, 2);
        sparseIntArray.put(R$id.accumulated_task_sub_title_tv, 3);
        sparseIntArray.put(R$id.bg_accumulated_task_total_bonus_view, 4);
        sparseIntArray.put(R$id.accumulated_task_coin_iv, 5);
        sparseIntArray.put(R$id.accumulated_task_coin_bonus_tv, 6);
        sparseIntArray.put(R$id.accumulated_task_scroll_view, 7);
        sparseIntArray.put(R$id.accumulated_task_progress_view, 8);
        sparseIntArray.put(R$id.watch_now_tv, 9);
    }

    public ViewAccumulatedTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f41163l, f41164m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41165k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41165k != 0) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41165k = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private ViewAccumulatedTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[6], (ImageView) objArr[5], (BaseTextView) objArr[2], (AccumulatedTaskProgressView) objArr[8], (HorizontalScrollView) objArr[7], (BaseTextView) objArr[3], (BaseTextView) objArr[1], (View) objArr[4], (ConstraintLayout) objArr[0], (BaseTextView) objArr[9]);
        this.f41165k = -1L;
        this.f41161i.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
