package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: SNetworkErrorView.kt */
@Metadata
/* loaded from: classes7.dex */
public class SNetworkErrorView extends BaseConstraintLayout implements la.b {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47507f = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47508b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private rj.a f47509c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f47510d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47511e;

    /* compiled from: SNetworkErrorView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SNetworkErrorView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            rj.a mOnRefreshListener = SNetworkErrorView.this.getMOnRefreshListener();
            if (mOnRefreshListener != null) {
                mOnRefreshListener.onRefresh();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SNetworkErrorView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_network_error;
    }

    @Nullable
    public final rj.a getMOnRefreshListener() {
        return this.f47509c;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SNetworkErrorView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.NETWORK_ERROR;
    }

    public final void setMOnRefreshListener(@Nullable rj.a aVar) {
        this.f47509c = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47510d = (ImageView) findViewById(R$id.error_iv);
        this.f47511e = (BaseTextView) findViewById(R$id.error_tv);
        BaseTextView baseTextView = (BaseTextView) findViewById(R$id.refresh_button);
        if (baseTextView != null) {
            baseTextView.setOnClickListener(new b());
        } else {
            baseTextView = null;
        }
        this.f47508b = baseTextView;
    }

    public final void v() {
        ImageView imageView = this.f47510d;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        BaseTextView baseTextView = this.f47511e;
        if (baseTextView != null) {
            ViewGroup.LayoutParams layoutParams = baseTextView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = -1;
            baseTextView.setLayoutParams(layoutParams2);
        }
    }

    public final void w(int i10) {
        BaseTextView baseTextView = this.f47508b;
        if (baseTextView != null) {
            b0.i(baseTextView, 0, i10, 0, 0, 13, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SNetworkErrorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
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
