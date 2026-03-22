package com.startshorts.androidplayer.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
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
public class ItemProfileMenuNormalBindingImpl extends ItemProfileMenuNormalBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40598h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f40599i;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f40600d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ImageView f40601e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f40602f;

    /* renamed from: g  reason: collision with root package name */
    private long f40603g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40599i = sparseIntArray;
        sparseIntArray.put(R$id.profile_arrow_iv, 4);
    }

    public ItemProfileMenuNormalBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40598h, f40599i));
    }

    public void b(@Nullable ProfileMenu profileMenu) {
        this.f40597c = profileMenu;
        synchronized (this) {
            this.f40603g |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        int i10;
        Drawable drawable;
        synchronized (this) {
            j10 = this.f40603g;
            this.f40603g = 0L;
        }
        ProfileMenu profileMenu = this.f40597c;
        int i11 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        if (i11 != 0 && profileMenu != null) {
            str = profileMenu.getName();
            drawable = profileMenu.getIcon();
            i10 = profileMenu.getRedPointVisibility();
        } else {
            str = null;
            i10 = 0;
            drawable = null;
        }
        if (i11 != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f40601e, drawable);
            this.f40602f.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f40595a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40603g != 0) {
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
            this.f40603g = 2L;
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

    private ItemProfileMenuNormalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[2], (ImageView) objArr[4]);
        this.f40603g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40600d = constraintLayout;
        constraintLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.f40601e = imageView;
        imageView.setTag(null);
        ImageView imageView2 = (ImageView) objArr[3];
        this.f40602f = imageView2;
        imageView2.setTag(null);
        this.f40595a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
