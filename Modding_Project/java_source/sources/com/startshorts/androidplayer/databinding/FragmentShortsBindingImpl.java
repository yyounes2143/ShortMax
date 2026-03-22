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
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class FragmentShortsBindingImpl extends FragmentShortsBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39652n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f39653o;

    /* renamed from: m  reason: collision with root package name */
    private long f39654m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39653o = sparseIntArray;
        sparseIntArray.put(R$id.refresh_layout_viewstub, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
        sparseIntArray.put(R$id.reward_box_viewstub, 3);
        sparseIntArray.put(R$id.play_speed_tip_viewstub, 4);
        sparseIntArray.put(R$id.time_viewstub, 5);
        sparseIntArray.put(R$id.seek_bar_viewstub, 6);
        sparseIntArray.put(R$id.buffering_viewstub, 7);
        sparseIntArray.put(R$id.double_task_coin_viewstub, 8);
        sparseIntArray.put(R$id.accumulated_task_coin_viewstub, 9);
        sparseIntArray.put(R$id.daily_watch_drama_task_coin_viewstub, 10);
        sparseIntArray.put(R$id.short_rating_viewstub, 11);
    }

    public FragmentShortsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f39652n, f39653o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39654m = 0L;
        }
        if (this.f39640a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39640a.getBinding());
        }
        if (this.f39641b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39641b.getBinding());
        }
        if (this.f39642c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39642c.getBinding());
        }
        if (this.f39643d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39643d.getBinding());
        }
        if (this.f39645f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39645f.getBinding());
        }
        if (this.f39646g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39646g.getBinding());
        }
        if (this.f39647h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39647h.getBinding());
        }
        if (this.f39649j.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39649j.getBinding());
        }
        if (this.f39650k.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39650k.getBinding());
        }
        if (this.f39651l.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39651l.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39654m != 0) {
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
            this.f39654m = 1L;
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

    private FragmentShortsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[9]), new ViewStubProxy((ViewStub) objArr[7]), new ViewStubProxy((ViewStub) objArr[10]), new ViewStubProxy((ViewStub) objArr[8]), (StateViewGroup) objArr[2], new ViewStubProxy((ViewStub) objArr[4]), new ViewStubProxy((ViewStub) objArr[1]), new ViewStubProxy((ViewStub) objArr[3]), (ConstraintLayout) objArr[0], new ViewStubProxy((ViewStub) objArr[6]), new ViewStubProxy((ViewStub) objArr[11]), new ViewStubProxy((ViewStub) objArr[5]));
        this.f39654m = -1L;
        this.f39640a.setContainingBinding(this);
        this.f39641b.setContainingBinding(this);
        this.f39642c.setContainingBinding(this);
        this.f39643d.setContainingBinding(this);
        this.f39645f.setContainingBinding(this);
        this.f39646g.setContainingBinding(this);
        this.f39647h.setContainingBinding(this);
        this.f39648i.setTag(null);
        this.f39649j.setContainingBinding(this);
        this.f39650k.setContainingBinding(this);
        this.f39651l.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
