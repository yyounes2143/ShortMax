package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.graphics.Rect;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.ViewFlodableTextAreaBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FoldableTextArea.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFoldableTextArea.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FoldableTextArea.kt\ncom/startshorts/androidplayer/ui/view/base/FoldableTextArea\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n254#2:73\n256#2,2:74\n256#2,2:76\n256#2,2:78\n256#2,2:80\n*S KotlinDebug\n*F\n+ 1 FoldableTextArea.kt\ncom/startshorts/androidplayer/ui/view/base/FoldableTextArea\n*L\n44#1:73\n46#1:74,2\n47#1:76,2\n40#1:78,2\n42#1:80,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FoldableTextArea extends BaseBindingView<ViewFlodableTextAreaBinding> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FoldableTextArea(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void f(FoldableTextArea foldableTextArea, int i10, int i11, String str, int i12, int i13, Object obj) {
        if ((i13 & 8) != 0) {
            i12 = 0;
        }
        foldableTextArea.e(i10, i11, str, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(final FoldableTextArea foldableTextArea, final int i10, int i11, String str, final int i12) {
        Layout layout = foldableTextArea.getMBinding().f41228e.getLayout();
        if (foldableTextArea.getMBinding().f41228e.getLineCount() <= i10) {
            foldableTextArea.getMBinding().f41227d.setMInterceptParentTouchEvent(false);
            foldableTextArea.getMBinding().f41228e.setMinLines(i11);
            return;
        }
        foldableTextArea.getMBinding().f41228e.setMaxLines(i10 - 1);
        foldableTextArea.getMBinding().f41224a.setMaxLines(1);
        String substring = str.substring(layout.getLineVisibleEnd(i10 - 2));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        BaseTextView baseTextView = foldableTextArea.getMBinding().f41224a;
        baseTextView.setText(substring);
        Intrinsics.checkNotNull(baseTextView);
        baseTextView.setVisibility(0);
        TextView expandTv = foldableTextArea.getMBinding().f41225b;
        Intrinsics.checkNotNullExpressionValue(expandTv, "expandTv");
        expandTv.setVisibility(0);
        foldableTextArea.getMBinding().f41225b.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.view.base.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FoldableTextArea.h(FoldableTextArea.this, i12, i10, view);
            }
        });
        foldableTextArea.getMBinding().f41225b.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.view.base.c
            @Override // java.lang.Runnable
            public final void run() {
                FoldableTextArea.i(FoldableTextArea.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(FoldableTextArea foldableTextArea, int i10, int i11, View view) {
        BaseTextView bottomTv = foldableTextArea.getMBinding().f41224a;
        Intrinsics.checkNotNullExpressionValue(bottomTv, "bottomTv");
        if (bottomTv.getVisibility() == 0) {
            foldableTextArea.getMBinding().f41227d.getLayoutParams().height = ((foldableTextArea.getMBinding().f41228e.getMeasuredHeight() * i10) / (i11 - 1)) + 2;
            BaseTextView bottomTv2 = foldableTextArea.getMBinding().f41224a;
            Intrinsics.checkNotNullExpressionValue(bottomTv2, "bottomTv");
            bottomTv2.setVisibility(8);
            TextView expandTv = foldableTextArea.getMBinding().f41225b;
            Intrinsics.checkNotNullExpressionValue(expandTv, "expandTv");
            expandTv.setVisibility(8);
            foldableTextArea.getMBinding().f41228e.setMaxLines(Integer.MAX_VALUE);
            foldableTextArea.getMBinding().f41227d.setMInterceptParentTouchEvent(true);
        }
        foldableTextArea.getMBinding().f41227d.setLayoutParams(foldableTextArea.getMBinding().f41227d.getLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(FoldableTextArea foldableTextArea) {
        View view;
        Rect rect = new Rect();
        foldableTextArea.getMBinding().f41225b.getHitRect(rect);
        int a10 = jk.g.a(20.0f);
        rect.left -= a10;
        rect.top -= a10;
        rect.right += a10;
        rect.bottom += a10;
        TouchDelegate touchDelegate = new TouchDelegate(rect, foldableTextArea.getMBinding().f41225b);
        ViewParent parent = foldableTextArea.getMBinding().f41225b.getParent();
        if (parent instanceof View) {
            view = (View) parent;
        } else {
            view = null;
        }
        if (view != null) {
            view.setTouchDelegate(touchDelegate);
        }
    }

    public final void e(final int i10, final int i11, @NotNull final String text, final int i12) {
        Intrinsics.checkNotNullParameter(text, "text");
        BaseTextView baseTextView = getMBinding().f41228e;
        baseTextView.setText(text);
        baseTextView.setMaxLines(i10);
        baseTextView.setMinLines(i12);
        getMBinding().f41227d.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.view.base.a
            @Override // java.lang.Runnable
            public final void run() {
                FoldableTextArea.g(FoldableTextArea.this, i10, i12, text, i11);
            }
        });
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseBindingView
    public int getLayoutResource() {
        return R$layout.view_flodable_text_area;
    }
}
