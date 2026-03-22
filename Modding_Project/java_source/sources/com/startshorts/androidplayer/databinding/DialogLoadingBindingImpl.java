package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
/* loaded from: classes6.dex */
public class DialogLoadingBindingImpl extends DialogLoadingBinding {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39156c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f39157d = null;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f39158a;

    /* renamed from: b  reason: collision with root package name */
    private long f39159b;

    public DialogLoadingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f39156c, f39157d));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39159b = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39159b != 0) {
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
            this.f39159b = 1L;
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

    private DialogLoadingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.f39159b = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39158a = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
