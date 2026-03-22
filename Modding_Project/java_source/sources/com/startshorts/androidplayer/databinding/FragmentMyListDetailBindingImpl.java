package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public class FragmentMyListDetailBindingImpl extends FragmentMyListDetailBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39542k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f39543l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final LinearLayout f39544i;

    /* renamed from: j  reason: collision with root package name */
    private long f39545j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39543l = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.edit_iv, 3);
        sparseIntArray.put(R$id.edit_click_tv, 4);
        sparseIntArray.put(R$id.tab_view, 5);
        sparseIntArray.put(R$id.divider_line, 6);
        sparseIntArray.put(R$id.view_pager, 7);
        sparseIntArray.put(R$id.edit_viewstub, 8);
    }

    public FragmentMyListDetailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f39542k, f39543l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39545j = 0L;
        }
        if (this.f39537d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39537d.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39545j != 0) {
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
            this.f39545j = 1L;
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

    private FragmentMyListDetailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[6], (BaseTextView) objArr[4], (ImageView) objArr[3], new ViewStubProxy((ViewStub) objArr[8]), (TabView) objArr[5], (BaseTextView) objArr[2], (ConstraintLayout) objArr[1], (ViewPager2) objArr[7]);
        this.f39545j = -1L;
        this.f39537d.setContainingBinding(this);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f39544i = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
