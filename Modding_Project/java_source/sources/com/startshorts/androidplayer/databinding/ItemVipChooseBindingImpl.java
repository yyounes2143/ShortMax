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
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class ItemVipChooseBindingImpl extends ItemVipChooseBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41033h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f41034i;

    /* renamed from: g  reason: collision with root package name */
    private long f41035g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41034i = sparseIntArray;
        sparseIntArray.put(R$id.tv_num, 1);
        sparseIntArray.put(R$id.iv_playing, 2);
        sparseIntArray.put(R$id.iv_download_status, 3);
        sparseIntArray.put(R$id.iv_download_shape, 4);
        sparseIntArray.put(R$id.iv_download_progress, 5);
    }

    public ItemVipChooseBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f41033h, f41034i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41035g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41035g != 0) {
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
            this.f41035g = 1L;
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

    private ItemVipChooseBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (CircularProgressIndicator) objArr[5], (LottieAnimationView) objArr[4], (ImageView) objArr[3], (LottieAnimationView) objArr[2], (TextView) objArr[1]);
        this.f41035g = -1L;
        this.f41027a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
