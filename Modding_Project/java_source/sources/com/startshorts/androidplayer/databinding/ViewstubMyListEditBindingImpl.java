package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewstubMyListEditBindingImpl extends ViewstubMyListEditBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41461i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f41462j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f41463g;

    /* renamed from: h  reason: collision with root package name */
    private long f41464h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41462j = sparseIntArray;
        sparseIntArray.put(R$id.iv_line, 1);
        sparseIntArray.put(R$id.select_all_click_view, 2);
        sparseIntArray.put(R$id.check_box_iv, 3);
        sparseIntArray.put(R$id.select_all_tv, 4);
        sparseIntArray.put(R$id.delete_click_view, 5);
        sparseIntArray.put(R$id.delete_tv, 6);
    }

    public ViewstubMyListEditBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f41461i, f41462j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41464h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41464h != 0) {
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
            this.f41464h = 1L;
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

    private ViewstubMyListEditBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3], (View) objArr[5], (BaseTextView) objArr[6], (AppCompatImageView) objArr[1], (View) objArr[2], (BaseTextView) objArr[4]);
        this.f41464h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41463g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
