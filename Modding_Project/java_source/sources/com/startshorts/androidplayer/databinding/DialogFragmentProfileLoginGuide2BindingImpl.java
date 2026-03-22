package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogFragmentProfileLoginGuide2BindingImpl extends DialogFragmentProfileLoginGuide2Binding {
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38960m = null;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final SparseIntArray f38961n;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final ConstraintLayout f38962k;

    /* renamed from: l  reason: collision with root package name */
    private long f38963l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38961n = sparseIntArray;
        sparseIntArray.put(R$id.login_bg, 1);
        sparseIntArray.put(R$id.slide_view, 2);
        sparseIntArray.put(R$id.name_tv, 3);
        sparseIntArray.put(R$id.policy_tv, 4);
        sparseIntArray.put(R$id.phone_login_tv, 5);
        sparseIntArray.put(R$id.phone_login_get_bonus, 6);
        sparseIntArray.put(R$id.facebook_login, 7);
        sparseIntArray.put(R$id.facebook_tv, 8);
        sparseIntArray.put(R$id.login_get_bonus, 9);
        sparseIntArray.put(R$id.google_login, 10);
    }

    public DialogFragmentProfileLoginGuide2BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f38960m, f38961n));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38963l = 0L;
        }
        if (this.f38954e.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38954e.getBinding());
        }
        if (this.f38956g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38956g.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38963l != 0) {
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
            this.f38963l = 1L;
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

    private DialogFragmentProfileLoginGuide2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[7], (BaseTextView) objArr[8], (ConstraintLayout) objArr[10], (CustomFrescoView) objArr[1], new ViewStubProxy((ViewStub) objArr[9]), (BaseTextView) objArr[3], new ViewStubProxy((ViewStub) objArr[6]), (BaseTextView) objArr[5], (BaseTextView) objArr[4], (View) objArr[2]);
        this.f38963l = -1L;
        this.f38954e.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38962k = constraintLayout;
        constraintLayout.setTag(null);
        this.f38956g.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
