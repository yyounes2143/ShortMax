package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ViewToastAdRewardErrorBindingImpl extends ViewToastAdRewardErrorBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41433f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f41434g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f41435d;

    /* renamed from: e  reason: collision with root package name */
    private long f41436e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41434g = sparseIntArray;
        sparseIntArray.put(R$id.group_center, 1);
        sparseIntArray.put(R$id.icon_iv, 2);
        sparseIntArray.put(R$id.toast_tv, 3);
    }

    public ViewToastAdRewardErrorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f41433f, f41434g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41436e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41436e != 0) {
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
            this.f41436e = 1L;
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

    private ViewToastAdRewardErrorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Group) objArr[1], (ImageView) objArr[2], (BaseTextView) objArr[3]);
        this.f41436e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41435d = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
