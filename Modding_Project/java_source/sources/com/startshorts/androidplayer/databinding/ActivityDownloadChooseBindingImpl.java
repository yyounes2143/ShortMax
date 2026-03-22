package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityDownloadChooseBindingImpl extends ActivityDownloadChooseBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38217q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f38218r;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final ConstraintLayout f38219o;

    /* renamed from: p  reason: collision with root package name */
    private long f38220p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38218r = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.navigation_text, 3);
        sparseIntArray.put(R$id.ll_clarity, 4);
        sparseIntArray.put(R$id.clarity_tag, 5);
        sparseIntArray.put(R$id.clarity_tv, 6);
        sparseIntArray.put(R$id.tv_desc, 7);
        sparseIntArray.put(R$id.cl_bottom, 8);
        sparseIntArray.put(R$id.line_center, 9);
        sparseIntArray.put(R$id.tv_select_all, 10);
        sparseIntArray.put(R$id.tv_view_download, 11);
        sparseIntArray.put(R$id.tv_store_remain, 12);
        sparseIntArray.put(R$id.recycler_view, 13);
        sparseIntArray.put(R$id.page_state_view, 14);
    }

    public ActivityDownloadChooseBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f38217q, f38218r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38220p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38220p != 0) {
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
            this.f38220p = 1L;
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

    private ActivityDownloadChooseBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[8], (BaseTextView) objArr[5], (BaseTextView) objArr[6], (View) objArr[9], (LinearLayout) objArr[4], (ImageView) objArr[2], (BaseTextView) objArr[3], (StateViewGroup) objArr[14], (RecyclerView) objArr[13], (View) objArr[1], (BaseTextView) objArr[7], (BaseTextView) objArr[10], (BaseTextView) objArr[12], (BaseTextView) objArr[11]);
        this.f38220p = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38219o = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
