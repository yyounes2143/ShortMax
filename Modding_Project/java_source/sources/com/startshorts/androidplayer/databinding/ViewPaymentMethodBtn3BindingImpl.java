package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ViewPaymentMethodBtn3BindingImpl extends ViewPaymentMethodBtn3Binding {
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41335s = null;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private static final SparseIntArray f41336t;

    /* renamed from: r  reason: collision with root package name */
    private long f41337r;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41336t = sparseIntArray;
        sparseIntArray.put(R$id.guideline_50, 1);
        sparseIntArray.put(R$id.flavor_other_pay_button, 2);
        sparseIntArray.put(R$id.iv_pay_icon, 3);
        sparseIntArray.put(R$id.flavor_other_discount_tv, 4);
        sparseIntArray.put(R$id.other_pay_button, 5);
        sparseIntArray.put(R$id.tv_unit, 6);
        sparseIntArray.put(R$id.price_tv, 7);
        sparseIntArray.put(R$id.other_pay_iv, 8);
        sparseIntArray.put(R$id.other_discount_tv, 9);
        sparseIntArray.put(R$id.space_bottom, 10);
        sparseIntArray.put(R$id.tv_flavor_pay, 11);
        sparseIntArray.put(R$id.lay_google_pay, 12);
        sparseIntArray.put(R$id.tv_google_pay_unit, 13);
        sparseIntArray.put(R$id.tv_google_pay_final_price, 14);
        sparseIntArray.put(R$id.tv_google_pay_duration, 15);
        sparseIntArray.put(R$id.tv_google_pay_org_price, 16);
    }

    public ViewPaymentMethodBtn3BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 17, f41335s, f41336t));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41337r = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41337r != 0) {
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
            this.f41337r = 1L;
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

    private ViewPaymentMethodBtn3BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (ConstraintLayout) objArr[2], (Guideline) objArr[1], (CustomFrescoView) objArr[3], (ConstraintLayout) objArr[12], (BaseTextView) objArr[9], (ConstraintLayout) objArr[5], (ImageView) objArr[8], (ConstraintLayout) objArr[0], (BaseTextView) objArr[7], (Space) objArr[10], (BaseTextView) objArr[11], (BaseTextView) objArr[15], (BaseTextView) objArr[14], (BaseTextView) objArr[16], (BaseTextView) objArr[13], (BaseTextView) objArr[6]);
        this.f41337r = -1L;
        this.f41326i.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
