package com.startshorts.androidplayer.databinding;

import android.content.Context;
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
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverMoreCategoryFilterBindingImpl extends ItemDiscoverMoreCategoryFilterBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40185e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40186f = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40187c;

    /* renamed from: d  reason: collision with root package name */
    private long f40188d;

    public ItemDiscoverMoreCategoryFilterBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40185e, f40186f));
    }

    private boolean b(DiscoverCategory discoverCategory, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40188d |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40188d |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable DiscoverCategory discoverCategory) {
        updateRegistration(0, discoverCategory);
        this.f40184b = discoverCategory;
        synchronized (this) {
            this.f40188d |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        boolean z10;
        Context context;
        int i10;
        long j11;
        synchronized (this) {
            j10 = this.f40188d;
            this.f40188d = 0L;
        }
        DiscoverCategory discoverCategory = this.f40184b;
        int i11 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        Drawable drawable = null;
        r10 = null;
        String str2 = null;
        if (i11 != 0) {
            if ((j10 & 5) != 0 && discoverCategory != null) {
                str2 = discoverCategory.getName();
            }
            if (discoverCategory != null) {
                z10 = discoverCategory.isSelected();
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
            if (z10) {
                context = this.f40183a.getContext();
                i10 = R$drawable.bg_discover_more_category_filter_fragment_item_selected;
            } else {
                context = this.f40183a.getContext();
                i10 = R$drawable.bg_discover_more_category_filter_fragment_item_default;
            }
            String str3 = str2;
            drawable = AppCompatResources.getDrawable(context, i10);
            str = str3;
        } else {
            str = null;
        }
        if ((7 & j10) != 0) {
            ViewBindingAdapter.setBackground(this.f40183a, drawable);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40183a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40188d != 0) {
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
            this.f40188d = 4L;
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

    private ItemDiscoverMoreCategoryFilterBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40188d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40187c = constraintLayout;
        constraintLayout.setTag(null);
        this.f40183a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
