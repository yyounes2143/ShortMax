package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidRenderEffect.android.kt */
@RequiresApi(31)
@Metadata
/* loaded from: classes.dex */
final class RenderEffectVerificationHelper {
    @NotNull
    public static final RenderEffectVerificationHelper INSTANCE = new RenderEffectVerificationHelper();

    private RenderEffectVerificationHelper() {
    }

    @DoNotInline
    @NotNull
    /* renamed from: createBlurEffect-8A-3gB4  reason: not valid java name */
    public final android.graphics.RenderEffect m2112createBlurEffect8A3gB4(@Nullable RenderEffect renderEffect, float f10, float f11, int i10) {
        android.graphics.RenderEffect createBlurEffect;
        android.graphics.RenderEffect createBlurEffect2;
        if (renderEffect == null) {
            createBlurEffect2 = android.graphics.RenderEffect.createBlurEffect(f10, f11, AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i10));
            Intrinsics.checkNotNullExpressionValue(createBlurEffect2, "{\n            android.gr…)\n            )\n        }");
            return createBlurEffect2;
        }
        createBlurEffect = android.graphics.RenderEffect.createBlurEffect(f10, f11, renderEffect.asAndroidRenderEffect(), AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i10));
        Intrinsics.checkNotNullExpressionValue(createBlurEffect, "{\n            android.gr…)\n            )\n        }");
        return createBlurEffect;
    }

    @DoNotInline
    @NotNull
    /* renamed from: createOffsetEffect-Uv8p0NA  reason: not valid java name */
    public final android.graphics.RenderEffect m2113createOffsetEffectUv8p0NA(@Nullable RenderEffect renderEffect, long j10) {
        android.graphics.RenderEffect createOffsetEffect;
        android.graphics.RenderEffect createOffsetEffect2;
        if (renderEffect == null) {
            createOffsetEffect2 = android.graphics.RenderEffect.createOffsetEffect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
            Intrinsics.checkNotNullExpressionValue(createOffsetEffect2, "{\n            android.gr…et.x, offset.y)\n        }");
            return createOffsetEffect2;
        }
        createOffsetEffect = android.graphics.RenderEffect.createOffsetEffect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), renderEffect.asAndroidRenderEffect());
        Intrinsics.checkNotNullExpressionValue(createOffsetEffect, "{\n            android.gr…)\n            )\n        }");
        return createOffsetEffect;
    }
}
