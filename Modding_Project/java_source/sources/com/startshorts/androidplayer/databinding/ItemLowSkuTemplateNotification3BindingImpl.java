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
public class ItemLowSkuTemplateNotification3BindingImpl extends ItemLowSkuTemplateNotification3Binding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40481g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f40482h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f40483e;

    /* renamed from: f  reason: collision with root package name */
    private long f40484f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40482h = sparseIntArray;
        sparseIntArray.put(R$id.low_sku_template_notification_bg_iv, 1);
        sparseIntArray.put(R$id.notification_tv, 2);
        sparseIntArray.put(R$id.go_tv, 3);
        sparseIntArray.put(R$id.close_iv, 4);
    }

    public ItemLowSkuTemplateNotification3BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40481g, f40482h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40484f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40484f != 0) {
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
            this.f40484f = 1L;
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

    private ItemLowSkuTemplateNotification3BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[4], (BaseTextView) objArr[3], (ImageView) objArr[1], (BaseTextView) objArr[2]);
        this.f40484f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40483e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
