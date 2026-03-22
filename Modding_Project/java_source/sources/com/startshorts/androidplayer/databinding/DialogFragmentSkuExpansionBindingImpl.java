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
import com.startshorts.androidplayer.ui.view.fresco.FitLanguageImageView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.RetentionAutoUnlockEpisodeView;
/* loaded from: classes6.dex */
public class DialogFragmentSkuExpansionBindingImpl extends DialogFragmentSkuExpansionBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39025q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f39026r;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final ConstraintLayout f39027o;

    /* renamed from: p  reason: collision with root package name */
    private long f39028p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39026r = sparseIntArray;
        sparseIntArray.put(R$id.gift_iv, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.percent_tv, 4);
        sparseIntArray.put(R$id.lay_time, 5);
        sparseIntArray.put(R$id.time_iv, 6);
        sparseIntArray.put(R$id.count_down_tv, 7);
        sparseIntArray.put(R$id.auto_unlock_episode_view, 8);
        sparseIntArray.put(R$id.lay_purchase, 9);
        sparseIntArray.put(R$id.coins_tv, 10);
        sparseIntArray.put(R$id.bonus_value_tv, 11);
        sparseIntArray.put(R$id.bonus_unit_tv, 12);
        sparseIntArray.put(R$id.purchase_button, 13);
        sparseIntArray.put(R$id.bottom_space, 14);
    }

    public DialogFragmentSkuExpansionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f39025q, f39026r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39028p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39028p != 0) {
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
            this.f39028p = 1L;
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

    private DialogFragmentSkuExpansionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RetentionAutoUnlockEpisodeView) objArr[8], (BaseTextView) objArr[12], (BaseTextView) objArr[11], (Space) objArr[14], (ImageView) objArr[2], (BaseTextView) objArr[10], (BaseTextView) objArr[7], (FitLanguageImageView) objArr[1], (LinearLayout) objArr[9], (LinearLayout) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[13], (ImageView) objArr[6], (BaseTextView) objArr[3]);
        this.f39028p = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39027o = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
