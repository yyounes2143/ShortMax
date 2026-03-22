package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ActivityCustomNotificationBindingImpl extends ActivityCustomNotificationBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38166k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38167l;

    /* renamed from: j  reason: collision with root package name */
    private long f38168j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38167l = sparseIntArray;
        sparseIntArray.put(R$id.app_logo_iv, 1);
        sparseIntArray.put(R$id.app_name_tv, 2);
        sparseIntArray.put(R$id.close_iv, 3);
        sparseIntArray.put(R$id.cover_iv, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.content_tv, 6);
        sparseIntArray.put(R$id.bottom_barrier, 7);
        sparseIntArray.put(R$id.watch_button, 8);
    }

    public ActivityCustomNotificationBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38166k, f38167l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38168j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38168j != 0) {
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
            this.f38168j = 1L;
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

    private ActivityCustomNotificationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (BaseTextView) objArr[2], (Barrier) objArr[7], (ImageView) objArr[3], (BaseTextView) objArr[6], (CustomFrescoView) objArr[4], (ConstraintLayout) objArr[0], (BaseTextView) objArr[5], (BaseTextView) objArr[8]);
        this.f38168j = -1L;
        this.f38163g.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
