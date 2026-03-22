package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: SOtherErrorView.kt */
@Metadata
/* loaded from: classes7.dex */
public class SOtherErrorView extends BaseConstraintLayout implements la.b {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f47514g = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47515b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47516c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private TextView f47517d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f47518e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private rj.a f47519f;

    /* compiled from: SOtherErrorView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SOtherErrorView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            rj.a mOnRefreshListener = SOtherErrorView.this.getMOnRefreshListener();
            if (mOnRefreshListener != null) {
                mOnRefreshListener.onRefresh();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SOtherErrorView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_other_error;
    }

    @Nullable
    public final rj.a getMOnRefreshListener() {
        return this.f47519f;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SOtherErrorView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.OTHER_ERROR;
    }

    public final void setMOnRefreshListener(@Nullable rj.a aVar) {
        this.f47519f = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47515b = (ImageView) findViewById(R$id.error_iv);
        this.f47516c = (TextView) findViewById(R$id.error_tv);
        TextView textView = (TextView) findViewById(R$id.refresh_button);
        if (textView != null) {
            textView.setOnClickListener(new b());
        } else {
            textView = null;
        }
        this.f47517d = textView;
    }

    public final void v() {
        ImageView imageView = this.f47515b;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        TextView textView = this.f47516c;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = -1;
            textView.setLayoutParams(layoutParams2);
        }
    }

    @NotNull
    public final SOtherErrorView w(@NotNull String errTip) {
        Intrinsics.checkNotNullParameter(errTip, "errTip");
        if (errTip.length() > 0 && !Intrinsics.areEqual(errTip, this.f47518e)) {
            this.f47518e = errTip;
            TextView textView = this.f47516c;
            if (textView != null) {
                textView.setText(errTip);
            }
        }
        return this;
    }

    public final void x(int i10) {
        TextView textView = this.f47517d;
        if (textView != null) {
            b0.i(textView, 0, i10, 0, 0, 13, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SOtherErrorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
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
