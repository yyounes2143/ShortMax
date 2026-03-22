package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SOtherErrorMiniView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SOtherErrorMiniView extends SOtherErrorView {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f47513h = new a(null);

    /* compiled from: SOtherErrorMiniView.kt */
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
    public SOtherErrorMiniView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_other_error_mini;
    }

    @Override // com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SOtherErrorMiniView";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SOtherErrorMiniView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
