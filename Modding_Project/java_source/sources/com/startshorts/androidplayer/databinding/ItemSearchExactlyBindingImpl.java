package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemSearchExactlyBindingImpl extends ItemSearchExactlyBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40755h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f40756i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f40757f;

    /* renamed from: g  reason: collision with root package name */
    private long f40758g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40756i = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.tvPlayCount, 2);
        sparseIntArray.put(R$id.tv_title, 3);
        sparseIntArray.put(R$id.tv_label, 4);
        sparseIntArray.put(R$id.tv_desc, 5);
    }

    public ItemSearchExactlyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f40755h, f40756i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40758g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40758g != 0) {
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
            this.f40758g = 1L;
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

    private ItemSearchExactlyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (BaseTextView) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[2], (BaseTextView) objArr[3]);
        this.f40758g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40757f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
