package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemGridLibraryBindingImpl extends ItemGridLibraryBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40421j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f40422k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f40423h;

    /* renamed from: i  reason: collision with root package name */
    private long f40424i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40422k = sparseIntArray;
        sparseIntArray.put(R$id.ivCover, 1);
        sparseIntArray.put(R$id.tvPlayCount, 2);
        sparseIntArray.put(R$id.tvLabelStyle, 3);
        sparseIntArray.put(R$id.tvDramaName, 4);
        sparseIntArray.put(R$id.itemTag, 5);
        sparseIntArray.put(R$id.tagContent, 6);
        sparseIntArray.put(R$id.ivMore, 7);
    }

    public ItemGridLibraryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f40421j, f40422k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40424i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40424i != 0) {
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
            this.f40424i = 1L;
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

    private ItemGridLibraryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[5], (CustomFrescoView) objArr[1], (ImageView) objArr[7], (TextView) objArr[6], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (BaseTextView) objArr[2]);
        this.f40424i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40423h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
