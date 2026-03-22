package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogChooseNotificationPermissionBindingImpl extends DialogChooseNotificationPermissionBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38705h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f38706i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f38707f;

    /* renamed from: g  reason: collision with root package name */
    private long f38708g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38706i = sparseIntArray;
        sparseIntArray.put(R$id.notify_bg, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.check_box_container, 4);
        sparseIntArray.put(R$id.turn_on_button, 5);
    }

    public DialogChooseNotificationPermissionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f38705h, f38706i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38708g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38708g != 0) {
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
            this.f38708g = 1L;
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

    private DialogChooseNotificationPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[4], (ImageView) objArr[2], (View) objArr[1], (BaseTextView) objArr[3], (BaseTextView) objArr[5]);
        this.f38708g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38707f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
