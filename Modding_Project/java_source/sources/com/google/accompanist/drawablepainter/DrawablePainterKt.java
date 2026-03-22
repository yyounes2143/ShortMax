package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawablePainter.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DrawablePainterKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final i f16927a = c.a(LazyThreadSafetyMode.NONE, new Function0<Handler>() { // from class: com.google.accompanist.drawablepainter.DrawablePainterKt$MAIN_HANDLER$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(Drawable drawable) {
        if (drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0) {
            return SizeKt.Size(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler d() {
        return (Handler) f16927a.getValue();
    }
}
