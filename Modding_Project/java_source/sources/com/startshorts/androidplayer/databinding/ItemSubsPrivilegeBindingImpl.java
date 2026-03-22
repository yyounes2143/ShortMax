package com.startshorts.androidplayer.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemSubsPrivilegeBindingImpl extends ItemSubsPrivilegeBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40937f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40938g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40939c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final BaseTextView f40940d;

    /* renamed from: e  reason: collision with root package name */
    private long f40941e;

    public ItemSubsPrivilegeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40937f, f40938g));
    }

    public void b(@Nullable SubsPrivilege subsPrivilege) {
        this.f40936b = subsPrivilege;
        synchronized (this) {
            this.f40941e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        Drawable drawable;
        synchronized (this) {
            j10 = this.f40941e;
            this.f40941e = 0L;
        }
        SubsPrivilege subsPrivilege = this.f40936b;
        int i10 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        if (i10 != 0 && subsPrivilege != null) {
            str = subsPrivilege.getDesc();
            drawable = subsPrivilege.getIcon();
        } else {
            str = null;
            drawable = null;
        }
        if (i10 != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f40935a, drawable);
            TextViewBindingAdapter.setText(this.f40940d, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40941e != 0) {
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
            this.f40941e = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            b((SubsPrivilege) obj);
            return true;
        }
        return false;
    }

    private ItemSubsPrivilegeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1]);
        this.f40941e = -1L;
        this.f40935a.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40939c = constraintLayout;
        constraintLayout.setTag(null);
        BaseTextView baseTextView = (BaseTextView) objArr[2];
        this.f40940d = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
