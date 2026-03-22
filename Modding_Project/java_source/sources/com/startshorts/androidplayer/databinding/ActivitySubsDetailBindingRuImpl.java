package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
/* loaded from: classes6.dex */
public class ActivitySubsDetailBindingRuImpl extends ActivitySubsDetailBinding {
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38536v = null;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private static final SparseIntArray f38537w;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    private final NestedScrollView f38538t;

    /* renamed from: u  reason: collision with root package name */
    private long f38539u;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38537w = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.title_tv_repetition, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.desc_tv, 5);
        sparseIntArray.put(R$id.flag_iv, 6);
        sparseIntArray.put(R$id.content_bg_view, 7);
        sparseIntArray.put(R$id.subs_type_view, 8);
        sparseIntArray.put(R$id.page_state_view, 9);
        sparseIntArray.put(R$id.privilege_title_tv, 10);
        sparseIntArray.put(R$id.recycler_view, 11);
        sparseIntArray.put(R$id.desc_title_tv, 12);
        sparseIntArray.put(R$id.desc_content_tv, 13);
        sparseIntArray.put(R$id.privacy_agreement_tv, 14);
        sparseIntArray.put(R$id.divider_line_1, 15);
        sparseIntArray.put(R$id.user_agreement_tv, 16);
        sparseIntArray.put(R$id.divider_line_2, 17);
        sparseIntArray.put(R$id.restore_tv, 18);
    }

    public ActivitySubsDetailBindingRuImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f38536v, f38537w));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38539u = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38539u != 0) {
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
            this.f38539u = 1L;
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

    private ActivitySubsDetailBindingRuImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[7], (BaseTextView) objArr[13], (BaseTextView) objArr[12], (BaseTextView) objArr[5], (View) objArr[15], (View) objArr[17], (ImageView) objArr[6], (ImageView) objArr[2], (StateViewGroup) objArr[9], (BaseTextView) objArr[14], (BaseTextView) objArr[10], (RecyclerView) objArr[11], (BaseTextView) objArr[18], (SubsTypeView) objArr[8], (GradientTextView) objArr[4], (BaseTextView) objArr[3], (View) objArr[1], null, (BaseTextView) objArr[16]);
        this.f38539u = -1L;
        NestedScrollView nestedScrollView = (NestedScrollView) objArr[0];
        this.f38538t = nestedScrollView;
        nestedScrollView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
