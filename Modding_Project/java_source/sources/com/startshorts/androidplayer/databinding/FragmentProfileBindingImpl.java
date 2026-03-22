package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class FragmentProfileBindingImpl extends FragmentProfileBinding {
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39597w = null;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private static final SparseIntArray f39598x;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private final NestedScrollView f39599u;

    /* renamed from: v  reason: collision with root package name */
    private long f39600v;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39598x = sparseIntArray;
        sparseIntArray.put(R$id.login_layout, 1);
        sparseIntArray.put(R$id.avatar_iv, 2);
        sparseIntArray.put(R$id.username_tv, 3);
        sparseIntArray.put(R$id.login_iv, 4);
        sparseIntArray.put(R$id.login_lottie, 5);
        sparseIntArray.put(R$id.tip2_viewstub, 6);
        sparseIntArray.put(R$id.id_tv, 7);
        sparseIntArray.put(R$id.copy_uid_iv, 8);
        sparseIntArray.put(R$id.subs_viewstub, 9);
        sparseIntArray.put(R$id.money_bg_view, 10);
        sparseIntArray.put(R$id.wallet_bg_view, 11);
        sparseIntArray.put(R$id.tvMyWallet, 12);
        sparseIntArray.put(R$id.money_divider_line, 13);
        sparseIntArray.put(R$id.coin_value_tv, 14);
        sparseIntArray.put(R$id.coin_tv, 15);
        sparseIntArray.put(R$id.bonus_value_tv, 16);
        sparseIntArray.put(R$id.bonus_tv, 17);
        sparseIntArray.put(R$id.top_up_button_viewstub, 18);
        sparseIntArray.put(R$id.act_banner_viewstub, 19);
        sparseIntArray.put(R$id.recycler_view, 20);
    }

    public FragmentProfileBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 21, f39597w, f39598x));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39600v = 0L;
        }
        if (this.f39577a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39577a.getBinding());
        }
        if (this.f39591o.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39591o.getBinding());
        }
        if (this.f39592p.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39592p.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39600v != 0) {
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
            this.f39600v = 1L;
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

    private FragmentProfileBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[19]), (CustomFrescoView) objArr[2], (BaseTextView) objArr[17], (BaseTextView) objArr[16], (BaseTextView) objArr[15], (BaseTextView) objArr[14], (ImageView) objArr[8], (BaseTextView) objArr[7], (ImageView) objArr[4], (ConstraintLayout) objArr[1], (LottieAnimationView) objArr[5], (View) objArr[10], (View) objArr[13], (RecyclerView) objArr[20], new ViewStubProxy((ViewStub) objArr[9]), new ViewStubProxy((ViewStub) objArr[6]), (BaseTextView) objArr[18], (BaseTextView) objArr[12], (BaseTextView) objArr[3], (View) objArr[11]);
        this.f39600v = -1L;
        this.f39577a.setContainingBinding(this);
        NestedScrollView nestedScrollView = (NestedScrollView) objArr[0];
        this.f39599u = nestedScrollView;
        nestedScrollView.setTag(null);
        this.f39591o.setContainingBinding(this);
        this.f39592p.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
