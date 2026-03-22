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
public class ActivityLogin2BindingImpl extends ActivityLogin2Binding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38338q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f38339r;

    /* renamed from: p  reason: collision with root package name */
    private long f38340p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38339r = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.logo_iv, 3);
        sparseIntArray.put(R$id.policy_tv, 4);
        sparseIntArray.put(R$id.phone_login, 5);
        sparseIntArray.put(R$id.phone_login_get_bonus, 6);
        sparseIntArray.put(R$id.hw_login_bg_view, 7);
        sparseIntArray.put(R$id.layout_line_or_line, 8);
        sparseIntArray.put(R$id.facebook_login, 9);
        sparseIntArray.put(R$id.facebook_iv, 10);
        sparseIntArray.put(R$id.facebook_tv, 11);
        sparseIntArray.put(R$id.login_get_bonus, 12);
        sparseIntArray.put(R$id.google_login, 13);
        sparseIntArray.put(R$id.google_iv, 14);
    }

    public ActivityLogin2BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f38338q, f38339r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38340p = 0L;
        }
        if (this.f38328f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38328f.getBinding());
        }
        if (this.f38331i.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38331i.getBinding());
        }
        if (this.f38335m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38335m.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38340p != 0) {
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
            this.f38340p = 1L;
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

    private ActivityLogin2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[10], (ConstraintLayout) objArr[9], (BaseTextView) objArr[11], (ImageView) objArr[14], (ConstraintLayout) objArr[13], new ViewStubProxy((ViewStub) objArr[7]), (ConstraintLayout) objArr[0], (LinearLayout) objArr[8], new ViewStubProxy((ViewStub) objArr[12]), (ImageView) objArr[3], (ImageView) objArr[2], (BaseTextView) objArr[5], new ViewStubProxy((ViewStub) objArr[6]), (BaseTextView) objArr[4], (View) objArr[1]);
        this.f38340p = -1L;
        this.f38328f.setContainingBinding(this);
        this.f38329g.setTag(null);
        this.f38331i.setContainingBinding(this);
        this.f38335m.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
