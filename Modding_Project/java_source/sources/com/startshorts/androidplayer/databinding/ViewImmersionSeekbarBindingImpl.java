package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2;
/* loaded from: classes6.dex */
public class ViewImmersionSeekbarBindingImpl extends ViewImmersionSeekbarBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41246i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f41247j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f41248g;

    /* renamed from: h  reason: collision with root package name */
    private long f41249h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41247j = sparseIntArray;
        sparseIntArray.put(R$id.operation_bg_view, 1);
        sparseIntArray.put(R$id.seekbar_touch_view, 2);
        sparseIntArray.put(R$id.buffering_viewstub, 3);
        sparseIntArray.put(R$id.seekbar, 4);
        sparseIntArray.put(R$id.play_speed_tip_viewstub, 5);
        sparseIntArray.put(R$id.time_viewstub, 6);
    }

    public ViewImmersionSeekbarBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f41246i, f41247j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41249h = 0L;
        }
        if (this.f41240a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41240a.getBinding());
        }
        if (this.f41242c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41242c.getBinding());
        }
        if (this.f41245f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41245f.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41249h != 0) {
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
            this.f41249h = 1L;
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

    private ViewImmersionSeekbarBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[3]), (View) objArr[1], new ViewStubProxy((ViewStub) objArr[5]), (DiscreteSeekBar2) objArr[4], (View) objArr[2], new ViewStubProxy((ViewStub) objArr[6]));
        this.f41249h = -1L;
        this.f41240a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41248g = constraintLayout;
        constraintLayout.setTag(null);
        this.f41242c.setContainingBinding(this);
        this.f41245f.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
