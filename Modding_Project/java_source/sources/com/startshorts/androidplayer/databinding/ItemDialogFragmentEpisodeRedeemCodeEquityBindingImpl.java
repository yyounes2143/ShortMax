package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl extends ItemDialogFragmentEpisodeRedeemCodeEquityBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39912i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f39913j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f39914g;

    /* renamed from: h  reason: collision with root package name */
    private long f39915h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39913j = sparseIntArray;
        sparseIntArray.put(R$id.bg_iv, 1);
        sparseIntArray.put(R$id.left_iv, 2);
        sparseIntArray.put(R$id.right_iv, 3);
        sparseIntArray.put(R$id.equity_content_fl, 4);
        sparseIntArray.put(R$id.equity_value_tv, 5);
        sparseIntArray.put(R$id.equity_text_tv, 6);
    }

    public ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f39912i, f39913j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39915h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39915h != 0) {
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
            this.f39915h = 1L;
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

    private ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (FrameLayout) objArr[4], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (ImageView) objArr[2], (ImageView) objArr[3]);
        this.f39915h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39914g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
