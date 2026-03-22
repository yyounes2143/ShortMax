package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public class ActivityRankingBindingImpl extends ActivityRankingBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38394h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f38395i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f38396f;

    /* renamed from: g  reason: collision with root package name */
    private long f38397g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38395i = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.tabView, 4);
        sparseIntArray.put(R$id.viewPager2, 5);
    }

    public ActivityRankingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f38394h, f38395i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38397g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38397g != 0) {
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
            this.f38397g = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private ActivityRankingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (TabView) objArr[4], (BaseTextView) objArr[3], (View) objArr[1], (ViewPager2) objArr[5]);
        this.f38397g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38396f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
