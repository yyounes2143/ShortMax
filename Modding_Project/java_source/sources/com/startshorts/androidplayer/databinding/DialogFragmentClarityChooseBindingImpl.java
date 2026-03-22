package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogFragmentClarityChooseBindingImpl extends DialogFragmentClarityChooseBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38810f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f38811g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f38812d;

    /* renamed from: e  reason: collision with root package name */
    private long f38813e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38811g = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.tv_title, 2);
        sparseIntArray.put(R$id.recycler_view, 3);
    }

    public DialogFragmentClarityChooseBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f38810f, f38811g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38813e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38813e != 0) {
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
            this.f38813e = 1L;
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

    private DialogFragmentClarityChooseBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[3], (View) objArr[1], (BaseTextView) objArr[2]);
        this.f38813e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38812d = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
