package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseRecyclerView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BaseRecyclerView extends RecyclerView {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f47084b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Parcelable f47085a;

    /* compiled from: BaseRecyclerView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseRecyclerView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void a() {
        Parcelable parcelable;
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        if ((getLayoutManager() instanceof StaggeredGridLayoutManager) && (parcelable = this.f47085a) != null) {
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            } else {
                staggeredGridLayoutManager = null;
            }
            if (staggeredGridLayoutManager != null) {
                staggeredGridLayoutManager.onRestoreInstanceState(parcelable);
            }
            this.f47085a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        a();
        super.onAttachedToWindow();
        Logger.f41511a.h("BaseRecyclerView", "onAttachedToWindow");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        if (getLayoutManager() instanceof StaggeredGridLayoutManager) {
            RecyclerView.LayoutManager layoutManager = getLayoutManager();
            Parcelable parcelable = null;
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            } else {
                staggeredGridLayoutManager = null;
            }
            if (staggeredGridLayoutManager != null) {
                parcelable = staggeredGridLayoutManager.onSaveInstanceState();
            }
            this.f47085a = parcelable;
        }
        super.onDetachedFromWindow();
        Logger.f41511a.h("BaseRecyclerView", "onDetachedFromWindow");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseRecyclerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
