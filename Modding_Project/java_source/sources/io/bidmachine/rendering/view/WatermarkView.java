package io.bidmachine.rendering.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import io.bidmachine.rendering.view.WatermarkView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.r;
import yq.n;
@Metadata
/* loaded from: classes8.dex */
public final class WatermarkView extends View {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatermarkView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setClickable(false);
        setFocusable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(WatermarkView this$0, Drawable drawable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setBackground(drawable);
    }

    public final void setWatermark(@Nullable final Drawable drawable) {
        n.b(new r() { // from class: uq.a
            @Override // yq.m
            public final void s() {
                WatermarkView.b(WatermarkView.this, drawable);
            }
        });
    }
}
