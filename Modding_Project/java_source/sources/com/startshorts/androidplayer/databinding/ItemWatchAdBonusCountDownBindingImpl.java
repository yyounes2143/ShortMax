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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemWatchAdBonusCountDownBindingImpl extends ItemWatchAdBonusCountDownBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41047g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f41048h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f41049e;

    /* renamed from: f  reason: collision with root package name */
    private long f41050f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41048h = sparseIntArray;
        sparseIntArray.put(R$id.coin_iv, 1);
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.bonus_tv, 3);
        sparseIntArray.put(R$id.watch_button, 4);
    }

    public ItemWatchAdBonusCountDownBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f41047g, f41048h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41050f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41050f != 0) {
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
            this.f41050f = 1L;
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

    private ItemWatchAdBonusCountDownBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[3], (CustomFrescoView) objArr[1], (BaseTextView) objArr[2], (BaseTextView) objArr[4]);
        this.f41050f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41049e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
