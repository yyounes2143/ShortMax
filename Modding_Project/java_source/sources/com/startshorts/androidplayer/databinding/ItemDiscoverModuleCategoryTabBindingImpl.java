package com.startshorts.androidplayer.databinding;

import android.graphics.Typeface;
import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleCategoryTabBindingImpl extends ItemDiscoverModuleCategoryTabBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40120f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40121g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40122c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final View f40123d;

    /* renamed from: e  reason: collision with root package name */
    private long f40124e;

    public ItemDiscoverModuleCategoryTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40120f, f40121g));
    }

    private boolean b(DiscoverCategory discoverCategory, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40124e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40124e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable DiscoverCategory discoverCategory) {
        updateRegistration(0, discoverCategory);
        this.f40119b = discoverCategory;
        synchronized (this) {
            this.f40124e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Typeface typeface;
        int i10;
        boolean z10;
        int i11;
        int i12;
        long j11;
        synchronized (this) {
            j10 = this.f40124e;
            this.f40124e = 0L;
        }
        DiscoverCategory discoverCategory = this.f40119b;
        int i13 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        String str = null;
        int i14 = 0;
        if (i13 != 0) {
            if (discoverCategory != null) {
                z10 = discoverCategory.isSelected();
            } else {
                z10 = false;
            }
            if (i13 != 0) {
                if (z10) {
                    j11 = 80;
                } else {
                    j11 = 40;
                }
                j10 |= j11;
            }
            if (z10) {
                i10 = 0;
            } else {
                i10 = 4;
            }
            if (discoverCategory != null) {
                typeface = discoverCategory.getDiscoverTextTypeFace(z10);
            } else {
                typeface = null;
            }
            if ((j10 & 5) != 0 && discoverCategory != null) {
                str = discoverCategory.getName();
            }
        } else {
            typeface = null;
            i10 = 0;
            z10 = false;
        }
        if ((64 & j10) != 0) {
            i11 = R$color.color_discover_fragment_category_tab_text;
        } else {
            i11 = 0;
        }
        if ((32 & j10) != 0) {
            i12 = R$color.color_discover_fragment_desc;
        } else {
            i12 = 0;
        }
        int i15 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        if (i15 != 0) {
            if (!z10) {
                i11 = i12;
            }
            i14 = getRoot().getContext().getColor(i11);
        }
        if (i15 != 0) {
            this.f40123d.setVisibility(i10);
            this.f40118a.setTextColor(i14);
            this.f40118a.setTypeface(typeface);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40118a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40124e != 0) {
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
            this.f40124e = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((DiscoverCategory) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((DiscoverCategory) obj);
            return true;
        }
        return false;
    }

    private ItemDiscoverModuleCategoryTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40124e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40122c = constraintLayout;
        constraintLayout.setTag(null);
        View view2 = (View) objArr[2];
        this.f40123d = view2;
        view2.setTag(null);
        this.f40118a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
