package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.task.AccumulatedTaskView;
/* loaded from: classes6.dex */
public class ItemRewardFragmentModuleNewbieWatchBindingImpl extends ItemRewardFragmentModuleNewbieWatchBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40721e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40722f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40723c;

    /* renamed from: d  reason: collision with root package name */
    private long f40724d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40722f = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.accumulated_task_view, 2);
    }

    public ItemRewardFragmentModuleNewbieWatchBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40721e, f40722f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40724d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40724d != 0) {
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
            this.f40724d = 1L;
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

    private ItemRewardFragmentModuleNewbieWatchBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AccumulatedTaskView) objArr[2], (View) objArr[1]);
        this.f40724d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40723c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
