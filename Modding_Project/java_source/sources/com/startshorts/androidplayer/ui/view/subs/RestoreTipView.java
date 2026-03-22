package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.subs.RestoreTipView;
import ef.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RestoreTipView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RestoreTipView extends BaseConstraintLayout implements a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47939b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View f47940c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f47941d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RestoreTipView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RestoreTipView restoreTipView, View view) {
        Function0<Unit> function0 = restoreTipView.f47941d;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_restore_tip;
    }

    public final void setContent(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        BaseTextView baseTextView = this.f47939b;
        if (baseTextView != null) {
            baseTextView.setText(content);
        }
    }

    @Override // ef.a
    public void setOnDismissListener(@NotNull Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        this.f47941d = onDismiss;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47939b = (BaseTextView) findViewById(R$id.content_tv);
        View findViewById = findViewById(R$id.close_iv);
        this.f47940c = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: ck.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RestoreTipView.w(RestoreTipView.this, view);
                }
            });
        }
        setBackgroundResource(R$drawable.bg_float_view);
    }
}
