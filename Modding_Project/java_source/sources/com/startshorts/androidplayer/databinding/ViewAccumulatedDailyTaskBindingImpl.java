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
public class ViewAccumulatedDailyTaskBindingImpl extends ViewAccumulatedDailyTaskBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41150l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f41151m;

    /* renamed from: k  reason: collision with root package name */
    private long f41152k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41151m = sparseIntArray;
        sparseIntArray.put(R$id.watch_drama_iv, 1);
        sparseIntArray.put(R$id.accumulated_task_title_tv, 2);
        sparseIntArray.put(R$id.accumulated_task_sub_title_tv, 3);
        sparseIntArray.put(R$id.button_view, 4);
        sparseIntArray.put(R$id.button_iv, 5);
        sparseIntArray.put(R$id.button_tv, 6);
        sparseIntArray.put(R$id.accumulated_task_limited_time_tv, 7);
        sparseIntArray.put(R$id.accumulated_task_scroll_view, 8);
        sparseIntArray.put(R$id.accumulated_task_progress_view, 9);
    }

    public ViewAccumulatedDailyTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f41150l, f41151m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41152k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41152k != 0) {
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
            this.f41152k = 1L;
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

    private ViewAccumulatedDailyTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[7], (AccumulatedTaskProgressView) objArr[9], (HorizontalScrollView) objArr[8], (BaseTextView) objArr[3], (BaseTextView) objArr[2], (ImageView) objArr[5], (BaseTextView) objArr[6], (ConstraintLayout) objArr[4], (ConstraintLayout) objArr[0], (ImageView) objArr[1]);
        this.f41152k = -1L;
        this.f41148i.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
