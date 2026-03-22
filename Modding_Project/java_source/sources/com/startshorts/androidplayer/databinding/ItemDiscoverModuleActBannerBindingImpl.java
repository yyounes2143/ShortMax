package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleActBannerBindingImpl extends ItemDiscoverModuleActBannerBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40068d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40069e;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final FrameLayout f40070b;

    /* renamed from: c  reason: collision with root package name */
    private long f40071c;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40069e = sparseIntArray;
        sparseIntArray.put(R$id.banner_container, 1);
    }

    public ItemDiscoverModuleActBannerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40068d, f40069e));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40071c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40071c != 0) {
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
            this.f40071c = 1L;
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

    private ItemDiscoverModuleActBannerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ActBanner) objArr[1]);
        this.f40071c = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f40070b = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
