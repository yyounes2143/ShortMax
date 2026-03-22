package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class DialogInterstitialLoadingBindingImpl extends DialogInterstitialLoadingBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39152d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f39153e;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final ConstraintLayout f39154b;

    /* renamed from: c  reason: collision with root package name */
    private long f39155c;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39153e = sparseIntArray;
        sparseIntArray.put(R$id.loading_container, 1);
    }

    public DialogInterstitialLoadingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f39152d, f39153e));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39155c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39155c != 0) {
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
            this.f39155c = 1L;
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

    private DialogInterstitialLoadingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[1]);
        this.f39155c = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39154b = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
