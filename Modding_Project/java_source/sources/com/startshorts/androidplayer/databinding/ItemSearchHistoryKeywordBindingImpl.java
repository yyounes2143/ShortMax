package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemSearchHistoryKeywordBindingImpl extends ItemSearchHistoryKeywordBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40773d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40774e;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final ConstraintLayout f40775b;

    /* renamed from: c  reason: collision with root package name */
    private long f40776c;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40774e = sparseIntArray;
        sparseIntArray.put(R$id.title_tv, 1);
    }

    public ItemSearchHistoryKeywordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40773d, f40774e));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40776c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40776c != 0) {
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
            this.f40776c = 1L;
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

    private ItemSearchHistoryKeywordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[1]);
        this.f40776c = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40775b = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
