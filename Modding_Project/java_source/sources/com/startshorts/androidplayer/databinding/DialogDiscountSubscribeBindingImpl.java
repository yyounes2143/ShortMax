package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public class DialogDiscountSubscribeBindingImpl extends DialogDiscountSubscribeBinding {
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38736m = null;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final SparseIntArray f38737n;

    /* renamed from: l  reason: collision with root package name */
    private long f38738l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38737n = sparseIntArray;
        sparseIntArray.put(R$id.tv_title, 1);
        sparseIntArray.put(R$id.iv_discount_subs, 2);
        sparseIntArray.put(R$id.tv_discount_unit, 3);
        sparseIntArray.put(R$id.tv_discount_price, 4);
        sparseIntArray.put(R$id.tv_discount_type, 5);
        sparseIntArray.put(R$id.tv_discount_subs, 6);
        sparseIntArray.put(R$id.iv_time_icon, 7);
        sparseIntArray.put(R$id.tv_discount_time, 8);
        sparseIntArray.put(R$id.ic_close_dialog, 9);
        sparseIntArray.put(R$id.page_state_view, 10);
    }

    public DialogDiscountSubscribeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f38736m, f38737n));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38738l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38738l != 0) {
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
            this.f38738l = 1L;
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

    private DialogDiscountSubscribeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[9], (ConstraintLayout) objArr[2], (ImageView) objArr[7], (ConstraintLayout) objArr[0], (StateViewGroup) objArr[10], (GradientTextView) objArr[4], (BaseTextView) objArr[6], (BaseTextView) objArr[8], (GradientTextView) objArr[5], (GradientTextView) objArr[3], (GradientTextView) objArr[1]);
        this.f38738l = -1L;
        this.f38728d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
