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
public class ViewPaymentMethodBtnBindingImpl extends ViewPaymentMethodBtnBinding {
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41351o = null;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final SparseIntArray f41352p;

    /* renamed from: n  reason: collision with root package name */
    private long f41353n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41352p = sparseIntArray;
        sparseIntArray.put(R$id.other_pay_button, 1);
        sparseIntArray.put(R$id.tv_unit, 2);
        sparseIntArray.put(R$id.price_tv, 3);
        sparseIntArray.put(R$id.sub_pro_type_tv, 4);
        sparseIntArray.put(R$id.other_pay_iv, 5);
        sparseIntArray.put(R$id.other_discount_tv, 6);
        sparseIntArray.put(R$id.google_pay_button, 7);
        sparseIntArray.put(R$id.lay_google_pay, 8);
        sparseIntArray.put(R$id.tv_google_pay_unit, 9);
        sparseIntArray.put(R$id.tv_google_pay_final_price, 10);
        sparseIntArray.put(R$id.tv_google_pay_duration, 11);
        sparseIntArray.put(R$id.tv_google_pay_org_price, 12);
    }

    public ViewPaymentMethodBtnBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f41351o, f41352p));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41353n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41353n != 0) {
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
            this.f41353n = 1L;
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

    private ViewPaymentMethodBtnBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[7], (ConstraintLayout) objArr[8], (BaseTextView) objArr[6], (ConstraintLayout) objArr[1], (ImageView) objArr[5], (ConstraintLayout) objArr[0], (BaseTextView) objArr[3], (BaseTextView) objArr[4], (BaseTextView) objArr[11], (BaseTextView) objArr[10], (BaseTextView) objArr[12], (BaseTextView) objArr[9], (BaseTextView) objArr[2]);
        this.f41353n = -1L;
        this.f41343f.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
