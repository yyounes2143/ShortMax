package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogFragmentLibraryLabelBindingImpl extends DialogFragmentLibraryLabelBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38939n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f38940o;

    /* renamed from: m  reason: collision with root package name */
    private long f38941m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38940o = sparseIntArray;
        sparseIntArray.put(R$id.slider_view, 1);
        sparseIntArray.put(R$id.tvTitle, 2);
        sparseIntArray.put(R$id.scroll_view, 3);
        sparseIntArray.put(R$id.expense_title_tv, 4);
        sparseIntArray.put(R$id.expense_flexbox_layout, 5);
        sparseIntArray.put(R$id.channel_title_tv, 6);
        sparseIntArray.put(R$id.channel_flexbox_layout, 7);
        sparseIntArray.put(R$id.class_title_tv, 8);
        sparseIntArray.put(R$id.class_flexbox_layout, 9);
        sparseIntArray.put(R$id.reset_tv, 10);
        sparseIntArray.put(R$id.ok_tv, 11);
    }

    public DialogFragmentLibraryLabelBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f38939n, f38940o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38941m = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38941m != 0) {
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
            this.f38941m = 1L;
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

    private DialogFragmentLibraryLabelBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FlexboxLayout) objArr[7], (BaseTextView) objArr[6], (FlexboxLayout) objArr[9], (BaseTextView) objArr[8], (FlexboxLayout) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[11], (BaseTextView) objArr[10], (ConstraintLayout) objArr[0], (NestedScrollView) objArr[3], (View) objArr[1], (BaseTextView) objArr[2]);
        this.f38941m = -1L;
        this.f38935i.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
