package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityLoginBindingImpl extends ActivityLoginBinding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38360u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f38361v;

    /* renamed from: t  reason: collision with root package name */
    private long f38362t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38361v = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.logo_iv, 3);
        sparseIntArray.put(R$id.phone_login_bg_view, 4);
        sparseIntArray.put(R$id.phone_login_tv, 5);
        sparseIntArray.put(R$id.layout_line_or_line, 6);
        sparseIntArray.put(R$id.hw_login_bg_view, 7);
        sparseIntArray.put(R$id.login_reward_coin_viewstub, 8);
        sparseIntArray.put(R$id.login_reward_tip_viewstub, 9);
        sparseIntArray.put(R$id.facebook_login_bg_view, 10);
        sparseIntArray.put(R$id.facebook_login_iv, 11);
        sparseIntArray.put(R$id.facebook_login_tv, 12);
        sparseIntArray.put(R$id.google_login_bg_view, 13);
        sparseIntArray.put(R$id.google_login_iv, 14);
        sparseIntArray.put(R$id.google_login_tv, 15);
        sparseIntArray.put(R$id.login_reward_icon_viewstub, 16);
        sparseIntArray.put(R$id.desc_tv, 17);
        sparseIntArray.put(R$id.policy_tv, 18);
    }

    public ActivityLoginBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f38360u, f38361v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38362t = 0L;
        }
        if (this.f38348h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38348h.getBinding());
        }
        if (this.f38351k.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38351k.getBinding());
        }
        if (this.f38352l.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38352l.getBinding());
        }
        if (this.f38353m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38353m.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38362t != 0) {
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
            this.f38362t = 1L;
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

    private ActivityLoginBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[17], (View) objArr[10], (ImageView) objArr[11], (BaseTextView) objArr[12], (View) objArr[13], (ImageView) objArr[14], (BaseTextView) objArr[15], new ViewStubProxy((ViewStub) objArr[7]), (ConstraintLayout) objArr[0], (LinearLayout) objArr[6], new ViewStubProxy((ViewStub) objArr[8]), new ViewStubProxy((ViewStub) objArr[16]), new ViewStubProxy((ViewStub) objArr[9]), (ImageView) objArr[3], (ImageView) objArr[2], (View) objArr[4], (BaseTextView) objArr[5], (BaseTextView) objArr[18], (View) objArr[1]);
        this.f38362t = -1L;
        this.f38348h.setContainingBinding(this);
        this.f38349i.setTag(null);
        this.f38351k.setContainingBinding(this);
        this.f38352l.setContainingBinding(this);
        this.f38353m.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
