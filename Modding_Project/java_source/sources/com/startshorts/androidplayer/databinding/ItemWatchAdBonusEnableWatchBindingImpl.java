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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemWatchAdBonusEnableWatchBindingImpl extends ItemWatchAdBonusEnableWatchBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41065h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f41066i;

    /* renamed from: g  reason: collision with root package name */
    private long f41067g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41066i = sparseIntArray;
        sparseIntArray.put(R$id.coin_iv, 1);
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.watch_button, 3);
        sparseIntArray.put(R$id.btn_iv, 4);
        sparseIntArray.put(R$id.bonus_tv, 5);
    }

    public ItemWatchAdBonusEnableWatchBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f41065h, f41066i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41067g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41067g != 0) {
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
            this.f41067g = 1L;
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

    private ItemWatchAdBonusEnableWatchBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[5], (ImageView) objArr[4], (CustomFrescoView) objArr[1], (ConstraintLayout) objArr[0], (BaseTextView) objArr[2], (ConstraintLayout) objArr[3]);
        this.f41067g = -1L;
        this.f41062d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
