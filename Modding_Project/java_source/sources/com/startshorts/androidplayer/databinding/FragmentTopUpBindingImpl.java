package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
/* loaded from: classes6.dex */
public class FragmentTopUpBindingImpl extends FragmentTopUpBinding {
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39689p = null;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final SparseIntArray f39690q;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final LinearLayout f39691n;

    /* renamed from: o  reason: collision with root package name */
    private long f39692o;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39690q = sparseIntArray;
        sparseIntArray.put(R$id.scroll_view, 1);
        sparseIntArray.put(R$id.coin_layout, 2);
        sparseIntArray.put(R$id.coin_iv, 3);
        sparseIntArray.put(R$id.coin_value_tv, 4);
        sparseIntArray.put(R$id.coin_unit_tv, 5);
        sparseIntArray.put(R$id.divider_line, 6);
        sparseIntArray.put(R$id.bonus_value_tv, 7);
        sparseIntArray.put(R$id.bonus_unit_tv, 8);
        sparseIntArray.put(R$id.subs_type_viewstub, 9);
        sparseIntArray.put(R$id.recycler_view_viewstub, 10);
        sparseIntArray.put(R$id.desc_viewstub, 11);
        sparseIntArray.put(R$id.recharge_agreement_view, 12);
        sparseIntArray.put(R$id.stub_payment_method, 13);
    }

    public FragmentTopUpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f39689p, f39690q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39692o = 0L;
        }
        if (this.f39682g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39682g.getBinding());
        }
        if (this.f39685j.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39685j.getBinding());
        }
        if (this.f39687l.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39687l.getBinding());
        }
        if (this.f39688m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39688m.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39692o != 0) {
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
            this.f39692o = 1L;
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

    private FragmentTopUpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[8], (BaseTextView) objArr[7], (ImageView) objArr[3], (ConstraintLayout) objArr[2], (BaseTextView) objArr[5], (BaseTextView) objArr[4], new ViewStubProxy((ViewStub) objArr[11]), (View) objArr[6], (RechargeTipView) objArr[12], new ViewStubProxy((ViewStub) objArr[10]), (NestedScrollView) objArr[1], new ViewStubProxy((ViewStub) objArr[13]), new ViewStubProxy((ViewStub) objArr[9]));
        this.f39692o = -1L;
        this.f39682g.setContainingBinding(this);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f39691n = linearLayout;
        linearLayout.setTag(null);
        this.f39685j.setContainingBinding(this);
        this.f39687l.setContainingBinding(this);
        this.f39688m.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
