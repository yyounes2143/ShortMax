package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SNetworkErrorMiniView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SNetworkErrorMiniView extends SNetworkErrorView {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f47506g = new a(null);

    /* compiled from: SNetworkErrorMiniView.kt */
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
    public SNetworkErrorMiniView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_network_error_mini;
    }

    @Override // com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SNetworkErrorMiniView";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SNetworkErrorMiniView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
