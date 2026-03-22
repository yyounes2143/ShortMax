package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemPlayResolutionTextLeftBindingImpl extends ItemPlayResolutionTextLeftBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40586d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40587e = null;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseTextView f40588b;

    /* renamed from: c  reason: collision with root package name */
    private long f40589c;

    public ItemPlayResolutionTextLeftBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40586d, f40587e));
    }

    private boolean b(PlayResolution playResolution, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40589c |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40589c |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable PlayResolution playResolution) {
        updateRegistration(0, playResolution);
        this.f40585a = playResolution;
        synchronized (this) {
            this.f40589c |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        synchronized (this) {
            j10 = this.f40589c;
            this.f40589c = 0L;
        }
        PlayResolution playResolution = this.f40585a;
        int i10 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        int i11 = 0;
        String str = null;
        if (i10 != 0) {
            if ((j10 & 5) != 0 && playResolution != null) {
                str = playResolution.getLabel(getRoot().getContext());
            }
            if (playResolution != null) {
                z10 = playResolution.isSelected();
            } else {
                z10 = false;
            }
            if (playResolution != null) {
                i11 = playResolution.getSelectedColor(z10, getRoot().getContext());
            }
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40588b, str);
        }
        if (i10 != 0) {
            this.f40588b.setTextColor(i11);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40589c != 0) {
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
            this.f40589c = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((PlayResolution) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((PlayResolution) obj);
            return true;
        }
        return false;
    }

    private ItemPlayResolutionTextLeftBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1);
        this.f40589c = -1L;
        BaseTextView baseTextView = (BaseTextView) objArr[0];
        this.f40588b = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
