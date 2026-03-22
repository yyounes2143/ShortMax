package com.startshorts.androidplayer.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemProfileMenuRewardsBindingImpl extends ItemProfileMenuRewardsBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40609i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40610j;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f40611f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ImageView f40612g;

    /* renamed from: h  reason: collision with root package name */
    private long f40613h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40610j = sparseIntArray;
        sparseIntArray.put(R$id.tip_layout, 3);
        sparseIntArray.put(R$id.tip2_tv, 4);
        sparseIntArray.put(R$id.iv_arrow, 5);
    }

    public ItemProfileMenuRewardsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f40609i, f40610j));
    }

    public void b(@Nullable ProfileMenu profileMenu) {
        this.f40608e = profileMenu;
        synchronized (this) {
            this.f40613h |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        Drawable drawable;
        synchronized (this) {
            j10 = this.f40613h;
            this.f40613h = 0L;
        }
        ProfileMenu profileMenu = this.f40608e;
        int i10 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        if (i10 != 0 && profileMenu != null) {
            str = profileMenu.getName();
            drawable = profileMenu.getIcon();
        } else {
            str = null;
            drawable = null;
        }
        if (i10 != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f40612g, drawable);
            TextViewBindingAdapter.setText(this.f40605b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40613h != 0) {
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
            this.f40613h = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            b((ProfileMenu) obj);
            return true;
        }
        return false;
    }

    private ItemProfileMenuRewardsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[5], (BaseTextView) objArr[2], (BaseTextView) objArr[4], (FrameLayout) objArr[3]);
        this.f40613h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40611f = constraintLayout;
        constraintLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.f40612g = imageView;
        imageView.setTag(null);
        this.f40605b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
