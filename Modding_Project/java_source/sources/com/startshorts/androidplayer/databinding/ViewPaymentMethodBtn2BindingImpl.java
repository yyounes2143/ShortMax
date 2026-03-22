package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewPaymentMethodBtn2BindingImpl extends ViewPaymentMethodBtn2Binding {
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41315p = null;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final SparseIntArray f41316q;

    /* renamed from: o  reason: collision with root package name */
    private long f41317o;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41316q = sparseIntArray;
        sparseIntArray.put(R$id.other_pay_button, 1);
        sparseIntArray.put(R$id.tv_unit, 2);
        sparseIntArray.put(R$id.price_tv, 3);
        sparseIntArray.put(R$id.sub_pro_type_tv, 4);
        sparseIntArray.put(R$id.other_pay_iv, 5);
        sparseIntArray.put(R$id.other_discount_tv, 6);
        sparseIntArray.put(R$id.space_bottom, 7);
        sparseIntArray.put(R$id.tv_flavor_pay, 8);
        sparseIntArray.put(R$id.lay_google_pay, 9);
        sparseIntArray.put(R$id.tv_google_pay_unit, 10);
        sparseIntArray.put(R$id.tv_google_pay_final_price, 11);
        sparseIntArray.put(R$id.tv_google_pay_duration, 12);
        sparseIntArray.put(R$id.tv_google_pay_org_price, 13);
    }

    public ViewPaymentMethodBtn2BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f41315p, f41316q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41317o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41317o != 0) {
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
            this.f41317o = 1L;
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

    private ViewPaymentMethodBtn2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[9], (BaseTextView) objArr[6], (ConstraintLayout) objArr[1], (ImageView) objArr[5], (ConstraintLayout) objArr[0], (BaseTextView) objArr[3], (Space) objArr[7], (BaseTextView) objArr[4], (BaseTextView) objArr[8], (BaseTextView) objArr[12], (BaseTextView) objArr[11], (BaseTextView) objArr[13], (BaseTextView) objArr[10], (BaseTextView) objArr[2]);
        this.f41317o = -1L;
        this.f41305e.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
