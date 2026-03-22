package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemTagFilterTabBindingImpl extends ItemTagFilterTabBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40990f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40991g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40992c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final View f40993d;

    /* renamed from: e  reason: collision with root package name */
    private long f40994e;

    public ItemTagFilterTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40990f, f40991g));
    }

    private boolean b(TagFilterTab tagFilterTab, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40994e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40994e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable TagFilterTab tagFilterTab) {
        updateRegistration(0, tagFilterTab);
        this.f40989b = tagFilterTab;
        synchronized (this) {
            this.f40994e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        boolean z10;
        int i11;
        long j11;
        synchronized (this) {
            j10 = this.f40994e;
            this.f40994e = 0L;
        }
        TagFilterTab tagFilterTab = this.f40989b;
        int i12 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        int i13 = 0;
        String str = null;
        if (i12 != 0) {
            if ((j10 & 5) != 0 && tagFilterTab != null) {
                str = tagFilterTab.getName();
            }
            if (tagFilterTab != null) {
                z10 = tagFilterTab.isSelected();
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
            BaseTextView baseTextView = this.f40988a;
            if (z10) {
                i11 = 17170443;
            } else {
                i11 = R$color.gray_40;
            }
            i10 = ViewDataBinding.getColorFromResource(baseTextView, i11);
            if (!z10) {
                i13 = 4;
            }
        } else {
            i10 = 0;
        }
        if ((j10 & 7) != 0) {
            this.f40993d.setVisibility(i13);
            this.f40988a.setTextColor(i10);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40988a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40994e != 0) {
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
            this.f40994e = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((TagFilterTab) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((TagFilterTab) obj);
            return true;
        }
        return false;
    }

    private ItemTagFilterTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40994e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40992c = constraintLayout;
        constraintLayout.setTag(null);
        View view2 = (View) objArr[2];
        this.f40993d = view2;
        view2.setTag(null);
        this.f40988a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
