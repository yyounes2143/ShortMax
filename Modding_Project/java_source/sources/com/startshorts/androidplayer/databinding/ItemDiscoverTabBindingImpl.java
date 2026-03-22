package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$dimen;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kd.b;
/* loaded from: classes6.dex */
public class ItemDiscoverTabBindingImpl extends ItemDiscoverTabBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40328f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40329g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40330c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final View f40331d;

    /* renamed from: e  reason: collision with root package name */
    private long f40332e;

    public ItemDiscoverTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40328f, f40329g));
    }

    private boolean b(DiscoverTab discoverTab, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40332e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40332e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable DiscoverTab discoverTab) {
        updateRegistration(0, discoverTab);
        this.f40327b = discoverTab;
        synchronized (this) {
            this.f40332e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        float f10;
        String str;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int i13;
        int i14;
        String string;
        long j11;
        synchronized (this) {
            j10 = this.f40332e;
            this.f40332e = 0L;
        }
        DiscoverTab discoverTab = this.f40327b;
        int i15 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        String str2 = null;
        if (i15 != 0) {
            if ((j10 & 5) != 0 && discoverTab != null) {
                str2 = discoverTab.getTabDisplayName();
            }
            if (discoverTab != null) {
                z10 = discoverTab.isSelected();
            } else {
                z10 = false;
            }
            if (i15 != 0) {
                if (z10) {
                    j11 = 1360;
                } else {
                    j11 = 680;
                }
                j10 |= j11;
            }
            BaseTextView baseTextView = this.f40326a;
            if (z10) {
                i13 = 17170443;
            } else {
                i13 = R$color.home_tab_unselect;
            }
            int colorFromResource = ViewDataBinding.getColorFromResource(baseTextView, i13);
            if (z10) {
                i14 = 0;
            } else {
                i14 = 8;
            }
            if (z10) {
                string = this.f40326a.getResources().getString(R$string.typeface_semi_bold);
            } else {
                string = this.f40326a.getResources().getString(R$string.typeface_medium);
            }
            if (z10) {
                f10 = this.f40326a.getResources().getDimension(R$dimen.discover_tab_title_selected);
            } else {
                f10 = this.f40326a.getResources().getDimension(R$dimen.discover_tab_title_normal);
            }
            if (discoverTab != null) {
                i11 = colorFromResource;
                i10 = discoverTab.getPaddingTop(z10);
                str = str2;
                str2 = string;
                i12 = i14;
            } else {
                i11 = colorFromResource;
                str = str2;
                str2 = string;
                i12 = i14;
                i10 = 0;
            }
        } else {
            f10 = 0.0f;
            str = null;
            i10 = 0;
            i11 = 0;
            i12 = 0;
        }
        if ((7 & j10) != 0) {
            this.f40331d.setVisibility(i12);
            ViewBindingAdapter.setPaddingTop(this.f40326a, i10);
            this.f40326a.setTextColor(i11);
            TextViewBindingAdapter.setTextSize(this.f40326a, f10);
            b.a(this.f40326a, str2);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40326a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40332e != 0) {
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
            this.f40332e = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((DiscoverTab) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((DiscoverTab) obj);
            return true;
        }
        return false;
    }

    private ItemDiscoverTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40332e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40330c = constraintLayout;
        constraintLayout.setTag(null);
        View view2 = (View) objArr[2];
        this.f40331d = view2;
        view2.setTag(null);
        this.f40326a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
