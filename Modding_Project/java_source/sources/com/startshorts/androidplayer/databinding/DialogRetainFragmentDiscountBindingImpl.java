package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public class DialogRetainFragmentDiscountBindingImpl extends DialogRetainFragmentDiscountBinding {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts A = null;
    @Nullable
    private static final SparseIntArray B;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private final LinearLayout f39279y;

    /* renamed from: z  reason: collision with root package name */
    private long f39280z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        B = sparseIntArray;
        sparseIntArray.put(R$id.clContent, 1);
        sparseIntArray.put(R$id.tv_des, 2);
        sparseIntArray.put(R$id.clRightLabel, 3);
        sparseIntArray.put(R$id.tv_discount_unit, 4);
        sparseIntArray.put(R$id.tv_discount_price, 5);
        sparseIntArray.put(R$id.tv_discount_type, 6);
        sparseIntArray.put(R$id.tvPrice, 7);
        sparseIntArray.put(R$id.tvOriginPrice, 8);
        sparseIntArray.put(R$id.benefitsContent, 9);
        sparseIntArray.put(R$id.ivUnlimitedViewing, 10);
        sparseIntArray.put(R$id.ivNoAds, 11);
        sparseIntArray.put(R$id.divider, 12);
        sparseIntArray.put(R$id.ivQuality, 13);
        sparseIntArray.put(R$id.ivOfflineDownload, 14);
        sparseIntArray.put(R$id.tv_title, 15);
        sparseIntArray.put(R$id.tv_sub_limited_time, 16);
        sparseIntArray.put(R$id.llTimeCountdown, 17);
        sparseIntArray.put(R$id.tvHour, 18);
        sparseIntArray.put(R$id.tvMin, 19);
        sparseIntArray.put(R$id.tvSec, 20);
        sparseIntArray.put(R$id.purchaseBtn, 21);
        sparseIntArray.put(R$id.tv_final_price, 22);
        sparseIntArray.put(R$id.ivThirdPayment, 23);
        sparseIntArray.put(R$id.ivClose, 24);
    }

    public DialogRetainFragmentDiscountBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 25, A, B));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39280z = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39280z != 0) {
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
            this.f39280z = 1L;
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

    private DialogRetainFragmentDiscountBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[9], (ConstraintLayout) objArr[1], (LinearLayout) objArr[3], (Space) objArr[12], (ImageView) objArr[24], (ImageView) objArr[11], (ImageView) objArr[14], (ImageView) objArr[13], (ImageView) objArr[23], (ImageView) objArr[10], (LinearLayout) objArr[17], (ConstraintLayout) objArr[21], (BaseTextView) objArr[2], (GradientTextView) objArr[5], (GradientTextView) objArr[6], (GradientTextView) objArr[4], (BaseTextView) objArr[22], (BaseTextView) objArr[18], (BaseTextView) objArr[19], (BaseTextView) objArr[8], (BaseTextView) objArr[7], (BaseTextView) objArr[20], (BaseTextView) objArr[16], (BaseTextView) objArr[15]);
        this.f39280z = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f39279y = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
