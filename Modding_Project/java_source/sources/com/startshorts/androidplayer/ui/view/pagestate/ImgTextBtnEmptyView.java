package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImgTextBtnEmptyView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImgTextBtnEmptyView extends BaseConstraintLayout implements la.b {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f47479e = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47480b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47481c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f47482d;

    /* compiled from: ImgTextBtnEmptyView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImgTextBtnEmptyView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f47483e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Function0<Unit> function0) {
            super(0L, 1, null);
            this.f47483e = function0;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            this.f47483e.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImgTextBtnEmptyView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_empty_img_text_btn;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ImgTextEmptyView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.EMPTY;
    }

    public final void setEmptyBtnClick(@NotNull Function0<Unit> click) {
        Intrinsics.checkNotNullParameter(click, "click");
        BaseTextView baseTextView = this.f47481c;
        if (baseTextView != null) {
            baseTextView.setOnClickListener(new b(click));
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47480b = (BaseTextView) findViewById(R$id.empty_tv);
        this.f47481c = (BaseTextView) findViewById(R$id.empty_btn);
    }

    @NotNull
    public final ImgTextBtnEmptyView v(@NotNull String emptyTip) {
        Intrinsics.checkNotNullParameter(emptyTip, "emptyTip");
        if (emptyTip.length() > 0 && !Intrinsics.areEqual(emptyTip, this.f47482d)) {
            this.f47482d = emptyTip;
            BaseTextView baseTextView = this.f47480b;
            if (baseTextView != null) {
                baseTextView.setText(emptyTip);
            }
        }
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImgTextBtnEmptyView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
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
