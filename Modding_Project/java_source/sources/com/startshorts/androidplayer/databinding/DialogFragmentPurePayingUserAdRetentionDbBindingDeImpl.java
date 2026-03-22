package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl extends DialogFragmentPurePayingUserAdRetentionDbBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38995i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f38996j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f38997g;

    /* renamed from: h  reason: collision with root package name */
    private long f38998h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38996j = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.watch_ad_button, 2);
        sparseIntArray.put(R$id.watch_ad_iv, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.content_tv, 5);
        sparseIntArray.put(R$id.close_iv, 6);
    }

    public DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f38995i, f38996j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38998h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38998h != 0) {
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
            this.f38998h = 1L;
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

    private DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[6], (BaseTextView) objArr[5], (CustomFrescoView) objArr[1], (BaseTextView) objArr[4], (ConstraintLayout) objArr[2], (ImageView) objArr[3]);
        this.f38998h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38997g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
