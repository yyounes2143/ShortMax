package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleRankingPageBindingImpl extends ItemDiscoverModuleRankingPageBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40147g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f40148h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f40149e;

    /* renamed from: f  reason: collision with root package name */
    private long f40150f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40148h = sparseIntArray;
        sparseIntArray.put(R$id.tab_host, 1);
        sparseIntArray.put(R$id.tab_view, 2);
        sparseIntArray.put(R$id.nested_scrollable_host, 3);
        sparseIntArray.put(R$id.view_pager, 4);
    }

    public ItemDiscoverModuleRankingPageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40147g, f40148h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40150f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40150f != 0) {
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
            this.f40150f = 1L;
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

    private ItemDiscoverModuleRankingPageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (NestedScrollableHost) objArr[3], (NestedScrollableHost) objArr[1], (TabView) objArr[2], (ViewPager2) objArr[4]);
        this.f40150f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40149e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
