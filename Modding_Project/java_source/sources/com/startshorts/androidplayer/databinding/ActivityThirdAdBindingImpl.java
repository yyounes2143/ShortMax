package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class ActivityThirdAdBindingImpl extends ActivityThirdAdBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38556i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f38557j;

    /* renamed from: h  reason: collision with root package name */
    private long f38558h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38557j = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_layout, 1);
        sparseIntArray.put(R$id.back_iv, 2);
        sparseIntArray.put(R$id.title_iv, 3);
        sparseIntArray.put(R$id.refresh_iv, 4);
        sparseIntArray.put(R$id.load_process_progress_bar, 5);
        sparseIntArray.put(R$id.third_ad_webview, 6);
    }

    public ActivityThirdAdBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f38556i, f38557j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38558h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38558h != 0) {
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
            this.f38558h = 1L;
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

    private ActivityThirdAdBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (ConstraintLayout) objArr[0], (ProgressBar) objArr[5], (ImageView) objArr[4], (WebView) objArr[6], (ImageView) objArr[3], (ConstraintLayout) objArr[1]);
        this.f38558h = -1L;
        this.f38550b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
