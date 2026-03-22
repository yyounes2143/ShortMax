package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewDiscoverModuleTitleMoreCountDownBindingImpl extends ViewDiscoverModuleTitleMoreCountDownBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41217f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f41218g;

    /* renamed from: e  reason: collision with root package name */
    private long f41219e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41218g = sparseIntArray;
        sparseIntArray.put(R$id.hour_tv, 1);
        sparseIntArray.put(R$id.minute_tv, 2);
        sparseIntArray.put(R$id.second_tv, 3);
    }

    public ViewDiscoverModuleTitleMoreCountDownBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f41217f, f41218g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41219e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41219e != 0) {
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
            this.f41219e = 1L;
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

    private ViewDiscoverModuleTitleMoreCountDownBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (BaseTextView) objArr[1], (BaseTextView) objArr[2], (BaseTextView) objArr[3]);
        this.f41219e = -1L;
        this.f41213a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
