package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogFragmentProfileLoginGuideBindingImpl extends DialogFragmentProfileLoginGuideBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38975n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f38976o;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final ConstraintLayout f38977l;

    /* renamed from: m  reason: collision with root package name */
    private long f38978m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38976o = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.logo_iv, 2);
        sparseIntArray.put(R$id.app_name_tv, 3);
        sparseIntArray.put(R$id.tip_tv, 4);
        sparseIntArray.put(R$id.login_reward_coin_viewstub, 5);
        sparseIntArray.put(R$id.login_reward_tip_viewstub, 6);
        sparseIntArray.put(R$id.login_bg_view, 7);
        sparseIntArray.put(R$id.login_icon_iv, 8);
        sparseIntArray.put(R$id.login_method_tv, 9);
        sparseIntArray.put(R$id.login_reward_icon_viewstub, 10);
        sparseIntArray.put(R$id.policy_tv, 11);
    }

    public DialogFragmentProfileLoginGuideBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f38975n, f38976o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38978m = 0L;
        }
        if (this.f38968e.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38968e.getBinding());
        }
        if (this.f38969f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38969f.getBinding());
        }
        if (this.f38970g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38970g.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38978m != 0) {
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
            this.f38978m = 1L;
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

    private DialogFragmentProfileLoginGuideBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[3], (View) objArr[7], (ImageView) objArr[8], (BaseTextView) objArr[9], new ViewStubProxy((ViewStub) objArr[5]), new ViewStubProxy((ViewStub) objArr[10]), new ViewStubProxy((ViewStub) objArr[6]), (ImageView) objArr[2], (BaseTextView) objArr[11], (View) objArr[1], (BaseTextView) objArr[4]);
        this.f38978m = -1L;
        this.f38968e.setContainingBinding(this);
        this.f38969f.setContainingBinding(this);
        this.f38970g.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38977l = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
