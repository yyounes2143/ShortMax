package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityImmersionBindingImpl extends ActivityImmersionBinding {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts E = null;
    @Nullable
    private static final SparseIntArray F;
    private long D;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        F = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.refresh_layout_viewstub, 2);
        sparseIntArray.put(R$id.navigation_iv, 3);
        sparseIntArray.put(R$id.shorts_name_tv, 4);
        sparseIntArray.put(R$id.episode_num_tv, 5);
        sparseIntArray.put(R$id.sale_viewstub, 6);
        sparseIntArray.put(R$id.play_speed_tip_viewstub, 7);
        sparseIntArray.put(R$id.discount_layout_viewstub, 8);
        sparseIntArray.put(R$id.carton_downgrade_resolution_layout_viewstub, 9);
        sparseIntArray.put(R$id.notification_layout_viewstub, 10);
        sparseIntArray.put(R$id.seekbar_touch_viewstub, 11);
        sparseIntArray.put(R$id.buffering_viewstub, 12);
        sparseIntArray.put(R$id.seekbar_viewstub, 13);
        sparseIntArray.put(R$id.play_resolution_list_viewstub, 14);
        sparseIntArray.put(R$id.play_speed_list_viewstub, 15);
        sparseIntArray.put(R$id.download_drama_viewstub, 16);
        sparseIntArray.put(R$id.play_speed_viewstub, 17);
        sparseIntArray.put(R$id.play_resolution_viewstub, 18);
        sparseIntArray.put(R$id.mini_window_viewstub, 19);
        sparseIntArray.put(R$id.time_viewstub, 20);
        sparseIntArray.put(R$id.double_task_coin_viewstub, 21);
        sparseIntArray.put(R$id.accumulated_task_coin_viewstub, 22);
        sparseIntArray.put(R$id.daily_watch_drama_task_coin_viewstub, 23);
        sparseIntArray.put(R$id.short_rating_viewstub, 24);
        sparseIntArray.put(R$id.sale_sub_viewstub, 25);
        sparseIntArray.put(R$id.sub_discount_viewstub, 26);
        sparseIntArray.put(R$id.sub_discount_upgrade_viewstub, 27);
        sparseIntArray.put(R$id.page_state_view, 28);
    }

    public ActivityImmersionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 29, E, F));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.D = 0L;
        }
        if (this.f38277a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38277a.getBinding());
        }
        if (this.f38278b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38278b.getBinding());
        }
        if (this.f38279c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38279c.getBinding());
        }
        if (this.f38280d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38280d.getBinding());
        }
        if (this.f38281e.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38281e.getBinding());
        }
        if (this.f38282f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38282f.getBinding());
        }
        if (this.f38283g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38283g.getBinding());
        }
        if (this.f38285i.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38285i.getBinding());
        }
        if (this.f38287k.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38287k.getBinding());
        }
        if (this.f38289m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38289m.getBinding());
        }
        if (this.f38290n.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38290n.getBinding());
        }
        if (this.f38291o.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38291o.getBinding());
        }
        if (this.f38292p.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38292p.getBinding());
        }
        if (this.f38293q.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38293q.getBinding());
        }
        if (this.f38294r.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38294r.getBinding());
        }
        if (this.f38296t.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38296t.getBinding());
        }
        if (this.f38297u.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38297u.getBinding());
        }
        if (this.f38298v.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38298v.getBinding());
        }
        if (this.f38299w.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38299w.getBinding());
        }
        if (this.f38300x.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38300x.getBinding());
        }
        if (this.f38302z.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38302z.getBinding());
        }
        if (this.A.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.A.getBinding());
        }
        if (this.B.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.B.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.D != 0) {
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
            this.D = 1L;
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

    private ActivityImmersionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[22]), new ViewStubProxy((ViewStub) objArr[12]), new ViewStubProxy((ViewStub) objArr[9]), new ViewStubProxy((ViewStub) objArr[23]), new ViewStubProxy((ViewStub) objArr[8]), new ViewStubProxy((ViewStub) objArr[21]), new ViewStubProxy((ViewStub) objArr[16]), (BaseTextView) objArr[5], new ViewStubProxy((ViewStub) objArr[19]), (ImageView) objArr[3], new ViewStubProxy((ViewStub) objArr[10]), (StateViewGroup) objArr[28], new ViewStubProxy((ViewStub) objArr[14]), new ViewStubProxy((ViewStub) objArr[18]), new ViewStubProxy((ViewStub) objArr[15]), new ViewStubProxy((ViewStub) objArr[7]), new ViewStubProxy((ViewStub) objArr[17]), new ViewStubProxy((ViewStub) objArr[2]), (ConstraintLayout) objArr[0], new ViewStubProxy((ViewStub) objArr[25]), new ViewStubProxy((ViewStub) objArr[6]), new ViewStubProxy((ViewStub) objArr[11]), new ViewStubProxy((ViewStub) objArr[13]), new ViewStubProxy((ViewStub) objArr[24]), (BaseTextView) objArr[4], new ViewStubProxy((ViewStub) objArr[27]), new ViewStubProxy((ViewStub) objArr[26]), new ViewStubProxy((ViewStub) objArr[20]), (View) objArr[1]);
        this.D = -1L;
        this.f38277a.setContainingBinding(this);
        this.f38278b.setContainingBinding(this);
        this.f38279c.setContainingBinding(this);
        this.f38280d.setContainingBinding(this);
        this.f38281e.setContainingBinding(this);
        this.f38282f.setContainingBinding(this);
        this.f38283g.setContainingBinding(this);
        this.f38285i.setContainingBinding(this);
        this.f38287k.setContainingBinding(this);
        this.f38289m.setContainingBinding(this);
        this.f38290n.setContainingBinding(this);
        this.f38291o.setContainingBinding(this);
        this.f38292p.setContainingBinding(this);
        this.f38293q.setContainingBinding(this);
        this.f38294r.setContainingBinding(this);
        this.f38295s.setTag(null);
        this.f38296t.setContainingBinding(this);
        this.f38297u.setContainingBinding(this);
        this.f38298v.setContainingBinding(this);
        this.f38299w.setContainingBinding(this);
        this.f38300x.setContainingBinding(this);
        this.f38302z.setContainingBinding(this);
        this.A.setContainingBinding(this);
        this.B.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
