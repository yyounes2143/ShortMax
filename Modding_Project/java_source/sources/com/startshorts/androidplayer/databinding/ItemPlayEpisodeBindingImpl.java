package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.SwipingFrescoView;
import com.startshorts.androidplayer.ui.view.base.SwipingTextureView;
/* loaded from: classes6.dex */
public class ItemPlayEpisodeBindingImpl extends ItemPlayEpisodeBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40558f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40559g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final FrameLayout f40560d;

    /* renamed from: e  reason: collision with root package name */
    private long f40561e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40559g = sparseIntArray;
        sparseIntArray.put(R$id.video_render_view, 1);
        sparseIntArray.put(R$id.video_cover_iv, 2);
        sparseIntArray.put(R$id.logo_iv, 3);
    }

    public ItemPlayEpisodeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f40558f, f40559g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40561e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40561e != 0) {
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
            this.f40561e = 1L;
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

    private ItemPlayEpisodeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3], (SwipingFrescoView) objArr[2], (SwipingTextureView) objArr[1]);
        this.f40561e = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f40560d = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
