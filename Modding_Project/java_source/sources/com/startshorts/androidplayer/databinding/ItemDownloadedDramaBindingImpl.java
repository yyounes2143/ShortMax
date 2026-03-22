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
public class ItemDownloadedDramaBindingImpl extends ItemDownloadedDramaBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40362i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40363j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f40364g;

    /* renamed from: h  reason: collision with root package name */
    private long f40365h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40363j = sparseIntArray;
        sparseIntArray.put(R$id.ivCheckbox, 1);
        sparseIntArray.put(R$id.ivCover, 2);
        sparseIntArray.put(R$id.tvEPCount, 3);
        sparseIntArray.put(R$id.tvDramaName, 4);
        sparseIntArray.put(R$id.tvContent, 5);
        sparseIntArray.put(R$id.tvTotalSize, 6);
    }

    public ItemDownloadedDramaBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f40362i, f40363j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40365h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40365h != 0) {
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
            this.f40365h = 1L;
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

    private ItemDownloadedDramaBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (CustomFrescoView) objArr[2], (BaseTextView) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (BaseTextView) objArr[6]);
        this.f40365h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40364g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
