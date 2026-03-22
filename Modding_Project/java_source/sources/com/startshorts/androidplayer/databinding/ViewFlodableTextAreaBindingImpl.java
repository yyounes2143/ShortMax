package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.InterceptParentTouchScrollView;
/* loaded from: classes6.dex */
public class ViewFlodableTextAreaBindingImpl extends ViewFlodableTextAreaBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41229g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f41230h;

    /* renamed from: f  reason: collision with root package name */
    private long f41231f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41230h = sparseIntArray;
        sparseIntArray.put(R$id.expandable_text_area, 1);
        sparseIntArray.put(R$id.top_tv, 2);
        sparseIntArray.put(R$id.bottom_tv, 3);
        sparseIntArray.put(R$id.expand_tv, 4);
    }

    public ViewFlodableTextAreaBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f41229g, f41230h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41231f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41231f != 0) {
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
            this.f41231f = 1L;
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

    private ViewFlodableTextAreaBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[3], (TextView) objArr[4], (ConstraintLayout) objArr[1], (InterceptParentTouchScrollView) objArr[0], (BaseTextView) objArr[2]);
        this.f41231f = -1L;
        this.f41227d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
