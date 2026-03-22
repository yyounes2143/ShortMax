package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView7;
/* loaded from: classes6.dex */
public class ItemSubsTypePro7BindingImpl extends ItemSubsTypePro7Binding {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40955c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f40956d = null;

    /* renamed from: b  reason: collision with root package name */
    private long f40957b;

    public ItemSubsTypePro7BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40955c, f40956d));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40957b = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40957b != 0) {
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
            this.f40957b = 1L;
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

    private ItemSubsTypePro7BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (SubsProOldStyleView7) objArr[0]);
        this.f40957b = -1L;
        this.f40954a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
