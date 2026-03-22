package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2;
/* loaded from: classes6.dex */
public class ViewImmersionSeekbarExperimentBindingImpl extends ViewImmersionSeekbarExperimentBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41258k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f41259l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f41260i;

    /* renamed from: j  reason: collision with root package name */
    private long f41261j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41259l = sparseIntArray;
        sparseIntArray.put(R$id.operation_bg_view, 1);
        sparseIntArray.put(R$id.seekbar_touch_view, 2);
        sparseIntArray.put(R$id.seekbar_baseline_view, 3);
        sparseIntArray.put(R$id.buffering_viewstub, 4);
        sparseIntArray.put(R$id.seekbar, 5);
        sparseIntArray.put(R$id.play_speed_tip_viewstub, 6);
        sparseIntArray.put(R$id.time_viewstub, 7);
        sparseIntArray.put(R$id.screen_content_group, 8);
    }

    public ViewImmersionSeekbarExperimentBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f41258k, f41259l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41261j = 0L;
        }
        if (this.f41250a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41250a.getBinding());
        }
        if (this.f41252c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41252c.getBinding());
        }
        if (this.f41257h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41257h.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41261j != 0) {
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
            this.f41261j = 1L;
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

    private ViewImmersionSeekbarExperimentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[4]), (View) objArr[1], new ViewStubProxy((ViewStub) objArr[6]), (Group) objArr[8], (DiscreteSeekBar2) objArr[5], (View) objArr[3], (View) objArr[2], new ViewStubProxy((ViewStub) objArr[7]));
        this.f41261j = -1L;
        this.f41250a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41260i = constraintLayout;
        constraintLayout.setTag(null);
        this.f41252c.setContainingBinding(this);
        this.f41257h.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
