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
public class ItemHomeCheckInDayBigBindingImpl extends ItemHomeCheckInDayBigBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40439g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f40440h;

    /* renamed from: f  reason: collision with root package name */
    private long f40441f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40440h = sparseIntArray;
        sparseIntArray.put(R$id.bg_day, 1);
        sparseIntArray.put(R$id.day_iv, 2);
        sparseIntArray.put(R$id.day_bonus_tv, 3);
        sparseIntArray.put(R$id.check_in_day, 4);
    }

    public ItemHomeCheckInDayBigBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40439g, f40440h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40441f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40441f != 0) {
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
            this.f40441f = 1L;
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

    private ItemHomeCheckInDayBigBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (ImageView) objArr[2], (ConstraintLayout) objArr[0]);
        this.f40441f = -1L;
        this.f40438e.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
