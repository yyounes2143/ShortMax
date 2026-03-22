package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewAccumulatedTaskProgressItemBindingImpl extends ViewAccumulatedTaskProgressItemBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41177h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f41178i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f41179f;

    /* renamed from: g  reason: collision with root package name */
    private long f41180g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41178i = sparseIntArray;
        sparseIntArray.put(R$id.accumulated_task_bonus_cl, 1);
        sparseIntArray.put(R$id.iv_cion, 2);
        sparseIntArray.put(R$id.accumulated_task_bonus_tv, 3);
        sparseIntArray.put(R$id.accumulated_task_coin_iv, 4);
        sparseIntArray.put(R$id.accumulated_task_time_tv, 5);
    }

    public ViewAccumulatedTaskProgressItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f41177h, f41178i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41180g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41180g != 0) {
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
            this.f41180g = 1L;
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

    private ViewAccumulatedTaskProgressItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[1], (BaseTextView) objArr[3], (ImageView) objArr[4], (BaseTextView) objArr[5], (ImageView) objArr[2]);
        this.f41180g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41179f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
