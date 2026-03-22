package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class AdToSubscribeDialogBindingImpl extends AdToSubscribeDialogBinding {
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38609w = null;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private static final SparseIntArray f38610x;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private final ConstraintLayout f38611u;

    /* renamed from: v  reason: collision with root package name */
    private long f38612v;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38610x = sparseIntArray;
        sparseIntArray.put(R$id.header_iv, 1);
        sparseIntArray.put(R$id.ic_close_dialog, 2);
        sparseIntArray.put(R$id.cl_content, 3);
        sparseIntArray.put(R$id.tv_title, 4);
        sparseIntArray.put(R$id.tv_discount_desc, 5);
        sparseIntArray.put(R$id.tv_origin_price, 6);
        sparseIntArray.put(R$id.tv_desc, 7);
        sparseIntArray.put(R$id.cl_content_detail, 8);
        sparseIntArray.put(R$id.iv_head_sub, 9);
        sparseIntArray.put(R$id.tv_desc_sub, 10);
        sparseIntArray.put(R$id.guideline, 11);
        sparseIntArray.put(R$id.iv_all_free, 12);
        sparseIntArray.put(R$id.tv_all_free, 13);
        sparseIntArray.put(R$id.iv_no_ads, 14);
        sparseIntArray.put(R$id.tv_no_ads, 15);
        sparseIntArray.put(R$id.btn_subscribe, 16);
        sparseIntArray.put(R$id.tv_subscribe_price, 17);
        sparseIntArray.put(R$id.tv_subscribe_price_unit, 18);
        sparseIntArray.put(R$id.tv_renew_desc, 19);
        sparseIntArray.put(R$id.page_state_view, 20);
    }

    public AdToSubscribeDialogBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 21, f38609w, f38610x));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38612v = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38612v != 0) {
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
            this.f38612v = 1L;
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

    private AdToSubscribeDialogBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[16], (ConstraintLayout) objArr[3], (ConstraintLayout) objArr[8], (Guideline) objArr[11], (ImageView) objArr[1], (ImageView) objArr[2], (ImageView) objArr[12], (ImageView) objArr[9], (ImageView) objArr[14], (StateViewGroup) objArr[20], (BaseTextView) objArr[13], (BaseTextView) objArr[7], (BaseTextView) objArr[10], (BaseTextView) objArr[5], (BaseTextView) objArr[15], (BaseTextView) objArr[6], (BaseTextView) objArr[19], (BaseTextView) objArr[17], (BaseTextView) objArr[18], (BaseTextView) objArr[4]);
        this.f38612v = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38611u = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
