package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kd.a;
/* loaded from: classes6.dex */
public class ItemPlayResolutionTextIconBindingImpl extends ItemPlayResolutionTextIconBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40580f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40581g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40582c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ImageView f40583d;

    /* renamed from: e  reason: collision with root package name */
    private long f40584e;

    public ItemPlayResolutionTextIconBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40580f, f40581g));
    }

    private boolean b(PlayResolution playResolution, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40584e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40584e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable PlayResolution playResolution) {
        updateRegistration(0, playResolution);
        this.f40579b = playResolution;
        synchronized (this) {
            this.f40584e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        int i11;
        boolean z10;
        synchronized (this) {
            j10 = this.f40584e;
            this.f40584e = 0L;
        }
        PlayResolution playResolution = this.f40579b;
        int i12 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        int i13 = 0;
        String str = null;
        if (i12 != 0) {
            if ((j10 & 5) != 0 && playResolution != null) {
                str = playResolution.getLabel(getRoot().getContext());
                i11 = playResolution.iconDrawable();
            } else {
                i11 = 0;
            }
            if (playResolution != null) {
                z10 = playResolution.isSelected();
            } else {
                z10 = false;
            }
            if (playResolution != null) {
                i13 = playResolution.getSelectedColor(z10, getRoot().getContext());
            }
            i10 = i13;
            i13 = i11;
        } else {
            i10 = 0;
        }
        if ((j10 & 5) != 0) {
            a.a(this.f40583d, i13);
            TextViewBindingAdapter.setText(this.f40578a, str);
        }
        if (i12 != 0) {
            this.f40578a.setTextColor(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40584e != 0) {
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
            this.f40584e = 4L;
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

    private ItemPlayResolutionTextIconBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40584e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40582c = constraintLayout;
        constraintLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[2];
        this.f40583d = imageView;
        imageView.setTag(null);
        this.f40578a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
