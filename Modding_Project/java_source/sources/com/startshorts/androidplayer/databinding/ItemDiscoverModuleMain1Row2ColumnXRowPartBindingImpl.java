package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl extends ItemDiscoverModuleMain1Row2ColumnXRowPartBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40139d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40140e;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final NestedScrollableHost f40141b;

    /* renamed from: c  reason: collision with root package name */
    private long f40142c;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40140e = sparseIntArray;
        sparseIntArray.put(R$id.double_row_rv, 1);
    }

    public ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40139d, f40140e));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40142c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40142c != 0) {
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
            this.f40142c = 1L;
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

    private ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1]);
        this.f40142c = -1L;
        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) objArr[0];
        this.f40141b = nestedScrollableHost;
        nestedScrollableHost.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
