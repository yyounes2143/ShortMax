package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class LayoutToastDelBindingImpl extends LayoutToastDelBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41124e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f41125f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final LinearLayout f41126c;

    /* renamed from: d  reason: collision with root package name */
    private long f41127d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41125f = sparseIntArray;
        sparseIntArray.put(R$id.iv_collect, 1);
        sparseIntArray.put(R$id.tv_toast_result, 2);
    }

    public LayoutToastDelBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f41124e, f41125f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41127d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41127d != 0) {
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
            this.f41127d = 1L;
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

    private LayoutToastDelBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatImageView) objArr[1], (BaseTextView) objArr[2]);
        this.f41127d = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f41126c = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
