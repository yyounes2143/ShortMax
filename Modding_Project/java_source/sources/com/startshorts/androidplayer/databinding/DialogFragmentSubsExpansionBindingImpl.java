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
import com.startshorts.androidplayer.ui.view.fresco.FitLanguageImageView;
/* loaded from: classes6.dex */
public class DialogFragmentSubsExpansionBindingImpl extends DialogFragmentSubsExpansionBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39043q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f39044r;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final ConstraintLayout f39045o;

    /* renamed from: p  reason: collision with root package name */
    private long f39046p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39044r = sparseIntArray;
        sparseIntArray.put(R$id.ivClose, 1);
        sparseIntArray.put(R$id.ivLogo, 2);
        sparseIntArray.put(R$id.tvTitle, 3);
        sparseIntArray.put(R$id.tvContent, 4);
        sparseIntArray.put(R$id.lay_content, 5);
        sparseIntArray.put(R$id.lay_icon_1, 6);
        sparseIntArray.put(R$id.lay_icon_2, 7);
        sparseIntArray.put(R$id.lay_icon_3, 8);
        sparseIntArray.put(R$id.lay_icon_4, 9);
        sparseIntArray.put(R$id.itemPurchase, 10);
        sparseIntArray.put(R$id.tv_final_price, 11);
        sparseIntArray.put(R$id.tv_duration, 12);
        sparseIntArray.put(R$id.tvPriceRenew, 13);
        sparseIntArray.put(R$id.bottom_space, 14);
    }

    public DialogFragmentSubsExpansionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f39043q, f39044r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39046p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39046p != 0) {
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
            this.f39046p = 1L;
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

    private DialogFragmentSubsExpansionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Space) objArr[14], (ConstraintLayout) objArr[10], (ImageView) objArr[1], (FitLanguageImageView) objArr[2], (ConstraintLayout) objArr[5], (LinearLayout) objArr[6], (LinearLayout) objArr[7], (LinearLayout) objArr[8], (LinearLayout) objArr[9], (BaseTextView) objArr[4], (BaseTextView) objArr[12], (BaseTextView) objArr[11], (BaseTextView) objArr[13], (GradientTextView) objArr[3]);
        this.f39046p = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39045o = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
