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
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemEpisodeTabBindingImpl extends ItemEpisodeTabBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40404e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40405f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40406c;

    /* renamed from: d  reason: collision with root package name */
    private long f40407d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40405f = sparseIntArray;
        sparseIntArray.put(R$id.name_tv, 1);
        sparseIntArray.put(R$id.divider_line_viewstub, 2);
    }

    public ItemEpisodeTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40404e, f40405f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40407d = 0L;
        }
        if (this.f40402a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40402a.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40407d != 0) {
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
            this.f40407d = 1L;
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

    private ItemEpisodeTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[2]), (BaseTextView) objArr[1]);
        this.f40407d = -1L;
        this.f40402a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40406c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
