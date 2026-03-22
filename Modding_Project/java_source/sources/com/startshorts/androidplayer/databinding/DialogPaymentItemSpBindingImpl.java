package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogPaymentItemSpBindingImpl extends DialogPaymentItemSpBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39244i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f39245j;

    /* renamed from: h  reason: collision with root package name */
    private long f39246h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39245j = sparseIntArray;
        sparseIntArray.put(R$id.lay_item_sku, 1);
        sparseIntArray.put(R$id.ivPayLogo, 2);
        sparseIntArray.put(R$id.tv_price_discount, 3);
        sparseIntArray.put(R$id.tv_give_coin, 4);
        sparseIntArray.put(R$id.tv_price, 5);
        sparseIntArray.put(R$id.tv_label, 6);
    }

    public DialogPaymentItemSpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f39244i, f39245j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39246h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39246h != 0) {
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
            this.f39246h = 1L;
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

    private DialogPaymentItemSpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (CustomFrescoView) objArr[2], (ConstraintLayout) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (BaseTextView) objArr[3]);
        this.f39246h = -1L;
        this.f39237a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
