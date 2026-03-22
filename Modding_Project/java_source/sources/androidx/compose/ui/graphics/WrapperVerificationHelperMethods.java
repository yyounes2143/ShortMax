package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPaint.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
public final class WrapperVerificationHelperMethods {
    @NotNull
    public static final WrapperVerificationHelperMethods INSTANCE = new WrapperVerificationHelperMethods();

    private WrapperVerificationHelperMethods() {
    }

    @DoNotInline
    /* renamed from: setBlendMode-GB0RdKg  reason: not valid java name */
    public final void m2196setBlendModeGB0RdKg(@NotNull android.graphics.Paint paint, int i10) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setBlendMode(AndroidBlendMode_androidKt.m1698toAndroidBlendModes9anfk8(i10));
    }
}
