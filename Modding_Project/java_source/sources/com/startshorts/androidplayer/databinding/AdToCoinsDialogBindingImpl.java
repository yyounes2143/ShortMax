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
/* loaded from: classes6.dex */
public class AdToCoinsDialogBindingImpl extends AdToCoinsDialogBinding {
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38585r = null;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static final SparseIntArray f38586s;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final ConstraintLayout f38587p;

    /* renamed from: q  reason: collision with root package name */
    private long f38588q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38586s = sparseIntArray;
        sparseIntArray.put(R$id.header_iv, 1);
        sparseIntArray.put(R$id.ic_close_dialog, 2);
        sparseIntArray.put(R$id.cl_content, 3);
        sparseIntArray.put(R$id.tv_title, 4);
        sparseIntArray.put(R$id.tv_desc, 5);
        sparseIntArray.put(R$id.iv_bonus_bg, 6);
        sparseIntArray.put(R$id.iv_discount_bg, 7);
        sparseIntArray.put(R$id.tv_discount, 8);
        sparseIntArray.put(R$id.tv_bonus, 9);
        sparseIntArray.put(R$id.tv_bonus_tag, 10);
        sparseIntArray.put(R$id.iv_coins_bg, 11);
        sparseIntArray.put(R$id.tv_coins, 12);
        sparseIntArray.put(R$id.tv_coins_tag, 13);
        sparseIntArray.put(R$id.tv_pay_now, 14);
        sparseIntArray.put(R$id.page_state_view, 15);
    }

    public AdToCoinsDialogBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f38585r, f38586s));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38588q = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38588q != 0) {
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
            this.f38588q = 1L;
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

    private AdToCoinsDialogBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[3], (ImageView) objArr[1], (ImageView) objArr[2], (ImageView) objArr[6], (ImageView) objArr[11], (ImageView) objArr[7], (StateViewGroup) objArr[15], (BaseTextView) objArr[9], (BaseTextView) objArr[10], (BaseTextView) objArr[12], (BaseTextView) objArr[13], (BaseTextView) objArr[5], (BaseTextView) objArr[8], (BaseTextView) objArr[14], (BaseTextView) objArr[4]);
        this.f38588q = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38587p = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
