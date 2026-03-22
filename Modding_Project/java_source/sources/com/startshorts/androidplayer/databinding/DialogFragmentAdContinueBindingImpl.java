package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogFragmentAdContinueBindingImpl extends DialogFragmentAdContinueBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38773j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f38774k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f38775h;

    /* renamed from: i  reason: collision with root package name */
    private long f38776i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38774k = sparseIntArray;
        sparseIntArray.put(R$id.close_iv, 1);
        sparseIntArray.put(R$id.content_tv, 2);
        sparseIntArray.put(R$id.watch_ad_button, 3);
        sparseIntArray.put(R$id.watch_ad_iv, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.cancel_tv, 6);
        sparseIntArray.put(R$id.header_iv, 7);
    }

    public DialogFragmentAdContinueBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f38773j, f38774k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38776i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38776i != 0) {
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
            this.f38776i = 1L;
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

    private DialogFragmentAdContinueBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[6], (ImageView) objArr[1], (BaseTextView) objArr[2], (ImageView) objArr[7], (BaseTextView) objArr[5], (ConstraintLayout) objArr[3], (ImageView) objArr[4]);
        this.f38776i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38775h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
