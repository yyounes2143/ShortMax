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
public class DialogFragmentSubsProExpiredBindingImpl extends DialogFragmentSubsProExpiredBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39078h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f39079i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f39080f;

    /* renamed from: g  reason: collision with root package name */
    private long f39081g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39079i = sparseIntArray;
        sparseIntArray.put(R$id.header_iv, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.content_tv, 3);
        sparseIntArray.put(R$id.confirm_button, 4);
        sparseIntArray.put(R$id.cancel_button, 5);
    }

    public DialogFragmentSubsProExpiredBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f39078h, f39079i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39081g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39081g != 0) {
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
            this.f39081g = 1L;
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

    private DialogFragmentSubsProExpiredBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[5], (ImageView) objArr[2], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (ImageView) objArr[1]);
        this.f39081g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39080f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
