package com.startshorts.androidplayer.databinding;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleRankingTabBindingImpl extends ItemDiscoverModuleRankingTabBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40153e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40154f = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40155c;

    /* renamed from: d  reason: collision with root package name */
    private long f40156d;

    public ItemDiscoverModuleRankingTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40153e, f40154f));
    }

    private boolean b(DiscoverRanking discoverRanking, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40156d |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40156d |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable DiscoverRanking discoverRanking) {
        updateRegistration(0, discoverRanking);
        this.f40152b = discoverRanking;
        synchronized (this) {
            this.f40156d |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        String str;
        Typeface typeface;
        int i10;
        int i11;
        Drawable drawable;
        long j11;
        synchronized (this) {
            j10 = this.f40156d;
            this.f40156d = 0L;
        }
        DiscoverRanking discoverRanking = this.f40152b;
        int i12 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        int i13 = 0;
        Drawable drawable2 = null;
        r12 = null;
        String str2 = null;
        if (i12 != 0) {
            if (discoverRanking != null) {
                z10 = discoverRanking.isSelected();
            } else {
                z10 = false;
            }
            if (i12 != 0) {
                if (z10) {
                    j11 = 80;
                } else {
                    j11 = 40;
                }
                j10 |= j11;
            }
            if (z10) {
                drawable = AppCompatResources.getDrawable(this.f40151a.getContext(), R$drawable.tab_indicator);
            } else {
                drawable = null;
            }
            if (discoverRanking != null) {
                typeface = discoverRanking.getDiscoverTextTypeFace(z10);
            } else {
                typeface = null;
            }
            if ((j10 & 5) != 0 && discoverRanking != null) {
                str2 = discoverRanking.getName();
            }
            str = str2;
            drawable2 = drawable;
        } else {
            z10 = false;
            str = null;
            typeface = null;
        }
        if ((32 & j10) != 0) {
            i10 = R$color.color_common_white;
        } else {
            i10 = 0;
        }
        if ((64 & j10) != 0) {
            i11 = R$color.color_common_black;
        } else {
            i11 = 0;
        }
        int i14 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        if (i14 != 0) {
            if (z10) {
                i10 = i11;
            }
            i13 = getRoot().getContext().getColor(i10);
        }
        if (i14 != 0) {
            ViewBindingAdapter.setBackground(this.f40151a, drawable2);
            this.f40151a.setTextColor(i13);
            this.f40151a.setTypeface(typeface);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40151a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40156d != 0) {
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
            this.f40156d = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((DiscoverRanking) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((DiscoverRanking) obj);
            return true;
        }
        return false;
    }

    private ItemDiscoverModuleRankingTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40156d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40155c = constraintLayout;
        constraintLayout.setTag(null);
        this.f40151a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
