package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemPlaySpeedBindingImpl extends ItemPlaySpeedBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40591d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40592e = null;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseTextView f40593b;

    /* renamed from: c  reason: collision with root package name */
    private long f40594c;

    public ItemPlaySpeedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40591d, f40592e));
    }

    private boolean b(PlaySpeed playSpeed, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40594c |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40594c |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable PlaySpeed playSpeed) {
        updateRegistration(0, playSpeed);
        this.f40590a = playSpeed;
        synchronized (this) {
            this.f40594c |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        synchronized (this) {
            j10 = this.f40594c;
            this.f40594c = 0L;
        }
        PlaySpeed playSpeed = this.f40590a;
        int i10 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        int i11 = 0;
        String str = null;
        if (i10 != 0) {
            if ((j10 & 5) != 0 && playSpeed != null) {
                str = playSpeed.getKey();
            }
            if (playSpeed != null) {
                z10 = playSpeed.isSelected();
            } else {
                z10 = false;
            }
            if (playSpeed != null) {
                i11 = playSpeed.getSelectedColor(z10, getRoot().getContext());
            }
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40593b, str);
        }
        if (i10 != 0) {
            this.f40593b.setTextColor(i11);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40594c != 0) {
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
            this.f40594c = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((PlaySpeed) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((PlaySpeed) obj);
            return true;
        }
        return false;
    }

    private ItemPlaySpeedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1);
        this.f40594c = -1L;
        BaseTextView baseTextView = (BaseTextView) objArr[0];
        this.f40593b = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
