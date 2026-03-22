package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import la.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SEmptyView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SEmptyView extends BaseConstraintLayout implements b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f47499d = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47500b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f47501c;

    /* compiled from: SEmptyView.kt */
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
    public SEmptyView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_empty;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SEmptyView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.EMPTY;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47500b = (BaseTextView) findViewById(R$id.empty_tv);
    }

    @NotNull
    public final SEmptyView v(@NotNull String emptyTip) {
        Intrinsics.checkNotNullParameter(emptyTip, "emptyTip");
        if (emptyTip.length() > 0 && !Intrinsics.areEqual(emptyTip, this.f47501c)) {
            this.f47501c = emptyTip;
            BaseTextView baseTextView = this.f47500b;
            if (baseTextView != null) {
                baseTextView.setText(emptyTip);
            }
        }
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SEmptyView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // la.b
    public void b() {
    }

    @Override // la.b
    public void d() {
    }

    @Override // la.b
    public void onPause() {
    }

    @Override // la.b
    public void onResume() {
    }
}
