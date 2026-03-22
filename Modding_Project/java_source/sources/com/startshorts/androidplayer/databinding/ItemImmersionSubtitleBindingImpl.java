package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.immersion.adapter.ImmersionSubtitleAdapterView;
/* loaded from: classes6.dex */
public class ItemImmersionSubtitleBindingImpl extends ItemImmersionSubtitleBinding {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40462c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final SparseIntArray f40463d = null;

    /* renamed from: b  reason: collision with root package name */
    private long f40464b;

    public ItemImmersionSubtitleBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40462c, f40463d));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40464b = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40464b != 0) {
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
            this.f40464b = 1L;
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

    private ItemImmersionSubtitleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImmersionSubtitleAdapterView) objArr[0]);
        this.f40464b = -1L;
        this.f40461a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
