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
import com.startshorts.androidplayer.ui.view.progress.GradientProgressBar;
/* loaded from: classes6.dex */
public class ItemDownloadDramaBindingImpl extends ItemDownloadDramaBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40341k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f40342l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f40343i;

    /* renamed from: j  reason: collision with root package name */
    private long f40344j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40342l = sparseIntArray;
        sparseIntArray.put(R$id.ivCheckbox, 1);
        sparseIntArray.put(R$id.ivCover, 2);
        sparseIntArray.put(R$id.tvDramaName, 3);
        sparseIntArray.put(R$id.tvCurrentEp, 4);
        sparseIntArray.put(R$id.progressBar, 5);
        sparseIntArray.put(R$id.tvDownloadSpeed, 6);
        sparseIntArray.put(R$id.tvTotalProgress, 7);
        sparseIntArray.put(R$id.ivDownloadState, 8);
    }

    public ItemDownloadDramaBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f40341k, f40342l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40344j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40344j != 0) {
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
            this.f40344j = 1L;
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

    private ItemDownloadDramaBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (CustomFrescoView) objArr[2], (ImageView) objArr[8], (GradientProgressBar) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[6], (BaseTextView) objArr[3], (BaseTextView) objArr[7]);
        this.f40344j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40343i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
