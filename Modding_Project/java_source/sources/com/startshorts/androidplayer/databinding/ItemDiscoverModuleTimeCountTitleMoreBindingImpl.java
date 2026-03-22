package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleTimeCountTitleMoreBindingImpl extends ItemDiscoverModuleTimeCountTitleMoreBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40167g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f40168h;

    /* renamed from: f  reason: collision with root package name */
    private long f40169f;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f40167g = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"view_discover_module_title_more_count_down"}, new int[]{1}, new int[]{R$layout.view_discover_module_title_more_count_down});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40168h = sparseIntArray;
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.more_iv, 3);
        sparseIntArray.put(R$id.barrier, 4);
    }

    public ItemDiscoverModuleTimeCountTitleMoreBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40167g, f40168h));
    }

    private boolean b(ViewDiscoverModuleTitleMoreCountDownBinding viewDiscoverModuleTitleMoreCountDownBinding, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40169f |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40169f = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.f40163b);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40169f != 0) {
                    return true;
                }
                if (this.f40163b.hasPendingBindings()) {
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
            this.f40169f = 2L;
        }
        this.f40163b.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((ViewDiscoverModuleTitleMoreCountDownBinding) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f40163b.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private ItemDiscoverModuleTimeCountTitleMoreBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (Barrier) objArr[4], (ViewDiscoverModuleTitleMoreCountDownBinding) objArr[1], (ImageView) objArr[3], (ConstraintLayout) objArr[0], (BaseTextView) objArr[2]);
        this.f40169f = -1L;
        setContainedBinding(this.f40163b);
        this.f40165d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
