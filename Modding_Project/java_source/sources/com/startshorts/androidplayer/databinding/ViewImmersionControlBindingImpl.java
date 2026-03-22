package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionCoverView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionNameTagView;
/* loaded from: classes6.dex */
public class ViewImmersionControlBindingImpl extends ViewImmersionControlBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41237g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f41238h = null;

    /* renamed from: f  reason: collision with root package name */
    private long f41239f;

    public ViewImmersionControlBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View[] viewArr) {
        this(dataBindingComponent, viewArr, ViewDataBinding.mapBindings(dataBindingComponent, viewArr, 5, f41237g, f41238h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41239f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41239f != 0) {
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
            this.f41239f = 1L;
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

    private ViewImmersionControlBindingImpl(DataBindingComponent dataBindingComponent, View[] viewArr, Object[] objArr) {
        super(dataBindingComponent, viewArr[0], 0, (ImmersionIconTextView) objArr[1], (ImmersionIconTextView) objArr[2], (ImmersionIconTextView) objArr[3], (ImmersionCoverView) objArr[0], (ImmersionNameTagView) objArr[4]);
        this.f41239f = -1L;
        this.f41232a.setTag(null);
        this.f41233b.setTag(null);
        this.f41234c.setTag(null);
        this.f41235d.setTag(null);
        this.f41236e.setTag(null);
        setRootTag(viewArr);
        invalidateAll();
    }
}
