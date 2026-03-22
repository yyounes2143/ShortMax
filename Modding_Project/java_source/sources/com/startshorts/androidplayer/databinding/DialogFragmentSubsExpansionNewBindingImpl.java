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
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.FitLanguageImageView;
/* loaded from: classes6.dex */
public class DialogFragmentSubsExpansionNewBindingImpl extends DialogFragmentSubsExpansionNewBinding {
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39069y = null;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private static final SparseIntArray f39070z;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    private final ConstraintLayout f39071w;

    /* renamed from: x  reason: collision with root package name */
    private long f39072x;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39070z = sparseIntArray;
        sparseIntArray.put(R$id.ivClose, 1);
        sparseIntArray.put(R$id.ivLogo, 2);
        sparseIntArray.put(R$id.tvTitle, 3);
        sparseIntArray.put(R$id.clContent, 4);
        sparseIntArray.put(R$id.tvCycleCount, 5);
        sparseIntArray.put(R$id.tvPrice, 6);
        sparseIntArray.put(R$id.tvPriceUnit, 7);
        sparseIntArray.put(R$id.benefitsContent, 8);
        sparseIntArray.put(R$id.ivUnlimitedViewing, 9);
        sparseIntArray.put(R$id.ivNoAds, 10);
        sparseIntArray.put(R$id.divider, 11);
        sparseIntArray.put(R$id.ivQuality, 12);
        sparseIntArray.put(R$id.ivOfflineDownload, 13);
        sparseIntArray.put(R$id.clRightLabel, 14);
        sparseIntArray.put(R$id.tvDiscount, 15);
        sparseIntArray.put(R$id.driverRightLabel, 16);
        sparseIntArray.put(R$id.tvTimeCountdown, 17);
        sparseIntArray.put(R$id.purchaseBtn, 18);
        sparseIntArray.put(R$id.tv_final_price, 19);
        sparseIntArray.put(R$id.ivThirdPayment, 20);
        sparseIntArray.put(R$id.tvPriceRenew, 21);
        sparseIntArray.put(R$id.bottom_space, 22);
    }

    public DialogFragmentSubsExpansionNewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 23, f39069y, f39070z));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39072x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39072x != 0) {
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
            this.f39072x = 1L;
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

    private DialogFragmentSubsExpansionNewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[8], (Space) objArr[22], (ConstraintLayout) objArr[4], (ConstraintLayout) objArr[14], (Space) objArr[11], (View) objArr[16], (ImageView) objArr[1], (FitLanguageImageView) objArr[2], (ImageView) objArr[10], (ImageView) objArr[13], (ImageView) objArr[12], (ImageView) objArr[20], (ImageView) objArr[9], (ConstraintLayout) objArr[18], (BaseTextView) objArr[5], (BaseTextView) objArr[15], (BaseTextView) objArr[19], (BaseTextView) objArr[6], (BaseTextView) objArr[21], (BaseTextView) objArr[7], (BaseTextView) objArr[17], (GradientTextView) objArr[3]);
        this.f39072x = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39071w = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
