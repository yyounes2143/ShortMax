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
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemSearchModuleTitleBindingImpl extends ItemSearchModuleTitleBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40793k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f40794l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f40795i;

    /* renamed from: j  reason: collision with root package name */
    private long f40796j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40794l = sparseIntArray;
        sparseIntArray.put(R$id.top_bg, 1);
        sparseIntArray.put(R$id.top_title, 2);
        sparseIntArray.put(R$id.cover_iv, 3);
        sparseIntArray.put(R$id.iv_rank_bg, 4);
        sparseIntArray.put(R$id.tv_rank_num, 5);
        sparseIntArray.put(R$id.tv_title, 6);
        sparseIntArray.put(R$id.tv_label, 7);
        sparseIntArray.put(R$id.tv_desc, 8);
    }

    public ItemSearchModuleTitleBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f40793k, f40794l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40796j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40796j != 0) {
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
            this.f40796j = 1L;
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

    private ItemSearchModuleTitleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[3], (ImageView) objArr[4], (ImageView) objArr[1], (GradientTextView) objArr[2], (BaseTextView) objArr[8], (BaseTextView) objArr[7], (BaseTextView) objArr[5], (BaseTextView) objArr[6]);
        this.f40796j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40795i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
