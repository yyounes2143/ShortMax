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
/* loaded from: classes6.dex */
public class FragmentDeleteAccountBindingImpl extends FragmentDeleteAccountBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39414g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f39415h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f39416e;

    /* renamed from: f  reason: collision with root package name */
    private long f39417f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39415h = sparseIntArray;
        sparseIntArray.put(R$id.title_tv, 1);
        sparseIntArray.put(R$id.desc_tv, 2);
        sparseIntArray.put(R$id.delete_button, 3);
        sparseIntArray.put(R$id.cancel_button, 4);
    }

    public FragmentDeleteAccountBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f39414g, f39415h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39417f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39417f != 0) {
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
            this.f39417f = 1L;
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

    private FragmentDeleteAccountBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (BaseTextView) objArr[3], (BaseTextView) objArr[2], (BaseTextView) objArr[1]);
        this.f39417f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39416e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
