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
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class ActivityRoutingBindingImpl extends ActivityRoutingBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38449f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f38450g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f38451d;

    /* renamed from: e  reason: collision with root package name */
    private long f38452e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38450g = sparseIntArray;
        sparseIntArray.put(R$id.progress_lottie, 1);
        sparseIntArray.put(R$id.act_app_open_viewstub, 2);
        sparseIntArray.put(R$id.hw_splash_view, 3);
    }

    public ActivityRoutingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f38449f, f38450g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38452e = 0L;
        }
        if (this.f38446a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38446a.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38452e != 0) {
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
            this.f38452e = 1L;
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

    private ActivityRoutingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[2]), (ConstraintLayout) objArr[3], (LottieAnimationView) objArr[1]);
        this.f38452e = -1L;
        this.f38446a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38451d = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
