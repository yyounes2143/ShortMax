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
public class ItemNoviceTaskBindingImpl extends ItemNoviceTaskBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40530i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40531j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f40532g;

    /* renamed from: h  reason: collision with root package name */
    private long f40533h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40531j = sparseIntArray;
        sparseIntArray.put(R$id.hot_iv, 1);
        sparseIntArray.put(R$id.coin_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.button_tv, 4);
        sparseIntArray.put(R$id.btn_iv, 5);
        sparseIntArray.put(R$id.btn_tv, 6);
    }

    public ItemNoviceTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f40530i, f40531j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40533h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40533h != 0) {
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
            this.f40533h = 1L;
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

    private ItemNoviceTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[5], (BaseTextView) objArr[6], (ConstraintLayout) objArr[4], (CustomFrescoView) objArr[2], (ImageView) objArr[1], (BaseTextView) objArr[3]);
        this.f40533h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40532g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
