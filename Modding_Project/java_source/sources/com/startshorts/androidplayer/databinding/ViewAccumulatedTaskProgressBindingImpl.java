package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class ViewAccumulatedTaskProgressBindingImpl extends ViewAccumulatedTaskProgressBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41168e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f41169f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f41170c;

    /* renamed from: d  reason: collision with root package name */
    private long f41171d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41169f = sparseIntArray;
        sparseIntArray.put(R$id.accumulated_task_progress_bar, 1);
        sparseIntArray.put(R$id.accumulated_task_progress_container, 2);
    }

    public ViewAccumulatedTaskProgressBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f41168e, f41169f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41171d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41171d != 0) {
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
            this.f41171d = 1L;
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

    private ViewAccumulatedTaskProgressBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ProgressBar) objArr[1], (FrameLayout) objArr[2]);
        this.f41171d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41170c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
