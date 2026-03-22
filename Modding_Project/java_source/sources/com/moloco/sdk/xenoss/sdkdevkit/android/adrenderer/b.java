package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements g0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public String f33694a;

    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Function2<Composer, Integer, Unit> f33695a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Function2<? super Composer, ? super Integer, Unit> function2) {
            this.f33695a = function2;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(586795374, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.WatermarkImpl.ApplyWatermark.<anonymous> (Watermark.kt:47)");
            }
            this.f33695a.invoke(composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    public b(@Nullable String str) {
        this.f33694a = str;
    }

    public static final Unit b(b bVar, Function2 function2, int i10, Composer composer, int i11) {
        bVar.a(function2, composer, i10 | 1);
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public void a(@NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(412679763);
        if ((i10 & 6) == 0) {
            i11 = (startRestartGroup.changed(content) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= startRestartGroup.changed(this) ? 32 : 16;
        }
        if ((i11 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(412679763, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.WatermarkImpl.ApplyWatermark (Watermark.kt:45)");
            }
            h.e(this.f33694a, ComposableLambdaKt.composableLambda(startRestartGroup, 586795374, true, new a(content)), startRestartGroup, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return b.b(b.this, content, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0
    public void a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Bitmap a10 = h.a(this.f33694a);
        if (a10 == null) {
            return;
        }
        com.moloco.sdk.service_locator.b bVar = com.moloco.sdk.service_locator.b.f33619a;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(bVar.a().getResources(), a10);
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        bitmapDrawable.setTileModeXY(tileMode, tileMode);
        bitmapDrawable.setTargetDensity(bVar.a().getResources().getDisplayMetrics());
        view.setForeground(bitmapDrawable);
        view.setClickable(false);
        view.setFocusable(false);
    }
}
