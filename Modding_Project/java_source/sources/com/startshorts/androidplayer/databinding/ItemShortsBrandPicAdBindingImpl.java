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
public class ItemShortsBrandPicAdBindingImpl extends ItemShortsBrandPicAdBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40887j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f40888k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f40889h;

    /* renamed from: i  reason: collision with root package name */
    private long f40890i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40888k = sparseIntArray;
        sparseIntArray.put(R$id.blur_cover_iv, 1);
        sparseIntArray.put(R$id.cover_iv, 2);
        sparseIntArray.put(R$id.logo_iv, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.content_tv, 5);
        sparseIntArray.put(R$id.install_iv, 6);
        sparseIntArray.put(R$id.install_tv, 7);
    }

    public ItemShortsBrandPicAdBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f40887j, f40888k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40890i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40890i != 0) {
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
            this.f40890i = 1L;
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

    private ItemShortsBrandPicAdBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (BaseTextView) objArr[5], (CustomFrescoView) objArr[2], (ImageView) objArr[6], (BaseTextView) objArr[7], (CustomFrescoView) objArr[3], (BaseTextView) objArr[4]);
        this.f40890i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40889h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
