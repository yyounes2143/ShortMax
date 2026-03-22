package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CatchExceptionLinearLayoutManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CatchExceptionLinearLayoutManager extends LinearLayoutManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f47087a = new a(null);

    /* compiled from: CatchExceptionLinearLayoutManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatchExceptionLinearLayoutManager(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(@Nullable RecyclerView.Recycler recycler, @Nullable RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("CatchExceptionLinearLayoutManager", "onLayoutChildren exception -> " + e10.getMessage());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatchExceptionLinearLayoutManager(@NotNull Context context, int i10, boolean z10) {
        super(context, i10, z10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
