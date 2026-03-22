package com.startshorts.androidplayer.ui.view.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import la.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImgTextEmptyView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImgTextEmptyView extends BaseConstraintLayout implements b {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47484b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f47485c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImgTextEmptyView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_empty_img_text;
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

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47484b = (BaseTextView) findViewById(R$id.empty_tv);
    }

    @NotNull
    public final ImgTextEmptyView v(@NotNull String emptyTip) {
        Intrinsics.checkNotNullParameter(emptyTip, "emptyTip");
        if (emptyTip.length() > 0 && !Intrinsics.areEqual(emptyTip, this.f47485c)) {
            this.f47485c = emptyTip;
            BaseTextView baseTextView = this.f47484b;
            if (baseTextView != null) {
                baseTextView.setText(emptyTip);
            }
        }
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImgTextEmptyView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
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
