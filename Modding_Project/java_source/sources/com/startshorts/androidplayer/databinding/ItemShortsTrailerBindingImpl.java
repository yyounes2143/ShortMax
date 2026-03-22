package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.ShortsTrailerAdapterView;
/* loaded from: classes6.dex */
public class ItemShortsTrailerBindingImpl extends ItemShortsTrailerBinding {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40908c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f40909d = null;

    /* renamed from: b  reason: collision with root package name */
    private long f40910b;

    public ItemShortsTrailerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40908c, f40909d));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40910b = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40910b != 0) {
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
            this.f40910b = 1L;
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

    private ItemShortsTrailerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShortsTrailerAdapterView) objArr[0]);
        this.f40910b = -1L;
        this.f40907a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
