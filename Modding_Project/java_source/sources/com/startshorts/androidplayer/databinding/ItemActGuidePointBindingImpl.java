package com.startshorts.androidplayer.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.act.ActGuidePoint;
import kd.c;
/* loaded from: classes6.dex */
public class ItemActGuidePointBindingImpl extends ItemActGuidePointBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39705d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f39706e = null;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final View f39707b;

    /* renamed from: c  reason: collision with root package name */
    private long f39708c;

    public ItemActGuidePointBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f39705d, f39706e));
    }

    private boolean b(ActGuidePoint actGuidePoint, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f39708c |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f39708c |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable ActGuidePoint actGuidePoint) {
        updateRegistration(0, actGuidePoint);
        this.f39704a = actGuidePoint;
        synchronized (this) {
            this.f39708c |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        boolean z10;
        int i10;
        long j11;
        synchronized (this) {
            j10 = this.f39708c;
            this.f39708c = 0L;
        }
        ActGuidePoint actGuidePoint = this.f39704a;
        int i11 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        int i12 = 0;
        if (i11 != 0) {
            if (actGuidePoint != null) {
                z10 = actGuidePoint.isSelected();
            } else {
                z10 = false;
            }
            if (i11 != 0) {
                if (z10) {
                    j11 = 16;
                } else {
                    j11 = 8;
                }
                j10 |= j11;
            }
            Context context = this.f39707b.getContext();
            if (z10) {
                i10 = R$drawable.shape_act_guide_point_selected;
            } else {
                i10 = R$drawable.shape_act_guide_point_normal;
            }
            drawable = AppCompatResources.getDrawable(context, i10);
            if (actGuidePoint != null) {
                i12 = actGuidePoint.getWidth(z10);
            }
        } else {
            drawable = null;
        }
        if ((j10 & 7) != 0) {
            ViewBindingAdapter.setBackground(this.f39707b, drawable);
            c.a(this.f39707b, i12);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39708c != 0) {
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
            this.f39708c = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((ActGuidePoint) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((ActGuidePoint) obj);
            return true;
        }
        return false;
    }

    private ItemActGuidePointBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1);
        this.f39708c = -1L;
        View view2 = (View) objArr[0];
        this.f39707b = view2;
        view2.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
