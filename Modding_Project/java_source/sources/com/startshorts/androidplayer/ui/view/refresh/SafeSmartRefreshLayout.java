package com.startshorts.androidplayer.ui.view.refresh;

import android.content.Context;
import android.util.AttributeSet;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeSmartRefreshLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SafeSmartRefreshLayout extends SmartRefreshLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SafeSmartRefreshLayout(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        try {
            super.onLayout(z10, i10, i11, i12, i13);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public /* synthetic */ SafeSmartRefreshLayout(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeSmartRefreshLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
