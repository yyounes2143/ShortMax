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
public class DialogAppNotificationPermissionBindingImpl extends DialogAppNotificationPermissionBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38635k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38636l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f38637i;

    /* renamed from: j  reason: collision with root package name */
    private long f38638j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38636l = sparseIntArray;
        sparseIntArray.put(R$id.notify_wrap, 1);
        sparseIntArray.put(R$id.notify_bg, 2);
        sparseIntArray.put(R$id.close_iv, 3);
        sparseIntArray.put(R$id.notify_logo_iv, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.des_tv, 6);
        sparseIntArray.put(R$id.receiver_button, 7);
        sparseIntArray.put(R$id.later_button, 8);
    }

    public DialogAppNotificationPermissionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38635k, f38636l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38638j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38638j != 0) {
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
            this.f38638j = 1L;
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

    private DialogAppNotificationPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3], (BaseTextView) objArr[6], (BaseTextView) objArr[8], (View) objArr[2], (ImageView) objArr[4], (View) objArr[1], (BaseTextView) objArr[7], (BaseTextView) objArr[5]);
        this.f38638j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38637i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
