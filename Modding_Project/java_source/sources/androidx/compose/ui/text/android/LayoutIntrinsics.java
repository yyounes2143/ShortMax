package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutIntrinsics.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class LayoutIntrinsics {
    @NotNull
    private final i boringMetrics$delegate;
    @NotNull
    private final i maxIntrinsicWidth$delegate;
    @NotNull
    private final i minIntrinsicWidth$delegate;

    public LayoutIntrinsics(@NotNull final CharSequence charSequence, @NotNull final TextPaint textPaint, final int i10) {
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.boringMetrics$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<BoringLayout.Metrics>() { // from class: androidx.compose.ui.text.android.LayoutIntrinsics$boringMetrics$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final BoringLayout.Metrics invoke() {
                return BoringLayoutFactory.INSTANCE.measure(charSequence, textPaint, TextLayoutKt.getTextDirectionHeuristic(i10));
            }
        });
        this.minIntrinsicWidth$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.android.LayoutIntrinsics$minIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(LayoutIntrinsicsKt.minIntrinsicWidth(charSequence, textPaint));
            }
        });
        this.maxIntrinsicWidth$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.android.LayoutIntrinsics$maxIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                float desiredWidth;
                boolean shouldIncreaseMaxIntrinsic;
                BoringLayout.Metrics boringMetrics = LayoutIntrinsics.this.getBoringMetrics();
                if (boringMetrics != null) {
                    desiredWidth = boringMetrics.width;
                } else {
                    CharSequence charSequence2 = charSequence;
                    desiredWidth = Layout.getDesiredWidth(charSequence2, 0, charSequence2.length(), textPaint);
                }
                shouldIncreaseMaxIntrinsic = LayoutIntrinsicsKt.shouldIncreaseMaxIntrinsic(desiredWidth, charSequence, textPaint);
                if (shouldIncreaseMaxIntrinsic) {
                    desiredWidth += 0.5f;
                }
                return Float.valueOf(desiredWidth);
            }
        });
    }

    @Nullable
    public final BoringLayout.Metrics getBoringMetrics() {
        return (BoringLayout.Metrics) this.boringMetrics$delegate.getValue();
    }

    public final float getMaxIntrinsicWidth() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    public final float getMinIntrinsicWidth() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }
}
