package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewPaymentMethodBtn1BindingImpl extends ViewPaymentMethodBtn1Binding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41297l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f41298m;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final ConstraintLayout f41299j;

    /* renamed from: k  reason: collision with root package name */
    private long f41300k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41298m = sparseIntArray;
        sparseIntArray.put(R$id.cl_pay_btn, 1);
        sparseIntArray.put(R$id.tv_unit, 2);
        sparseIntArray.put(R$id.tv_final_price, 3);
        sparseIntArray.put(R$id.tv_duration, 4);
        sparseIntArray.put(R$id.tv_org_price, 5);
        sparseIntArray.put(R$id.ll_remember_payment, 6);
        sparseIntArray.put(R$id.iv_remember_payment, 7);
        sparseIntArray.put(R$id.tv_remember_payment, 8);
        sparseIntArray.put(R$id.tv_discount, 9);
    }

    public ViewPaymentMethodBtn1BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f41297l, f41298m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41300k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41300k != 0) {
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
            this.f41300k = 1L;
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

    private ViewPaymentMethodBtn1BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[1], (ImageView) objArr[7], (LinearLayout) objArr[6], (BaseTextView) objArr[9], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (BaseTextView) objArr[5], (BaseTextView) objArr[8], (BaseTextView) objArr[2]);
        this.f41300k = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41299j = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
