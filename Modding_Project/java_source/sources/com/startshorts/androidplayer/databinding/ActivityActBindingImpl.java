package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class ActivityActBindingImpl extends ActivityActBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38144k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38145l;

    /* renamed from: j  reason: collision with root package name */
    private long f38146j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38145l = sparseIntArray;
        sparseIntArray.put(R$id.act_card_view, 1);
        sparseIntArray.put(R$id.act_webview_container, 2);
        sparseIntArray.put(R$id.toolbar_layout, 3);
        sparseIntArray.put(R$id.back_iv, 4);
        sparseIntArray.put(R$id.title_iv, 5);
        sparseIntArray.put(R$id.refresh_iv, 6);
        sparseIntArray.put(R$id.load_process_progress_bar, 7);
        sparseIntArray.put(R$id.act_webview, 8);
    }

    public ActivityActBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38144k, f38145l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38146j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38146j != 0) {
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
            this.f38146j = 1L;
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

    private ActivityActBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CardView) objArr[1], (FrameLayout) objArr[0], (WebView) objArr[8], (ConstraintLayout) objArr[2], (ImageView) objArr[4], (ProgressBar) objArr[7], (ImageView) objArr[6], (ImageView) objArr[5], (ConstraintLayout) objArr[3]);
        this.f38146j = -1L;
        this.f38136b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
