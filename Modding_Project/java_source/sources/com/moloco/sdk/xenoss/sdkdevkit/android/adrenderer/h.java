package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nWatermark.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Watermark.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/WatermarkKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,171:1\n1057#2,6:172\n1057#2,6:178\n1057#2,6:217\n67#3,6:184\n73#3:216\n77#3:227\n75#4:190\n76#4,11:192\n89#4:226\n76#5:191\n460#6,13:203\n473#6,3:223\n*S KotlinDebug\n*F\n+ 1 Watermark.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/WatermarkKt\n*L\n83#1:172,6\n96#1:178,6\n104#1:217,6\n93#1:184,6\n93#1:216\n93#1:227\n93#1:190\n93#1:192,11\n93#1:226\n93#1:191\n93#1:203,13\n93#1:223,3\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    @Nullable
    public static final Bitmap a(@Nullable String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    byte[] decode = Base64.decode(str, 0);
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                    if (decodeByteArray == null) {
                        MolocoLogger.error$default(MolocoLogger.INSTANCE, "BitmapCreationError", "BitmapFactory failed to decode the byte array", null, false, 12, null);
                    }
                    return decodeByteArray;
                }
            } catch (Exception e10) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, "BitmapCreationError", "Error creating bitmap from base64", e10, false, 8, null);
                return null;
            }
        }
        MolocoLogger.debug$default(MolocoLogger.INSTANCE, "BitmapCreationError", "Base64 string is null or empty", false, 4, null);
        return null;
    }

    public static final Unit b(ImageBitmap imageBitmap, DrawScope Canvas) {
        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
        float width = imageBitmap.getWidth();
        float height = imageBitmap.getHeight();
        float m1675getWidthimpl = Size.m1675getWidthimpl(Canvas.mo2336getSizeNHjbRc());
        float m1672getHeightimpl = Size.m1672getHeightimpl(Canvas.mo2336getSizeNHjbRc());
        float f10 = 0.0f;
        while (f10 < m1675getWidthimpl) {
            float f11 = 0.0f;
            while (f11 < m1672getHeightimpl) {
                DrawScope.m2321drawImagegbVJVH8$default(Canvas, imageBitmap, OffsetKt.Offset(f10, f11), 0.0f, null, null, 0, 60, null);
                f11 += height;
                f10 = f10;
            }
            f10 += width;
        }
        return Unit.f60915a;
    }

    public static final Unit c(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    public static final Unit d(String str, Function2 function2, int i10, Composer composer, int i11) {
        e(str, function2, composer, i10 | 1);
        return Unit.f60915a;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void e(@Nullable final String str, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(701452993);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(str)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(content)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(701452993, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.WatermarkComposable (Watermark.kt:79)");
            }
            startRestartGroup.startReplaceableGroup(1831107047);
            boolean changed = startRestartGroup.changed(str);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = f(str);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final ImageBitmap imageBitmap = (ImageBitmap) rememberedValue;
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1831111327);
            if (imageBitmap == null) {
                content.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
                startRestartGroup.endReplaceableGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
                if (endRestartGroup != null) {
                    endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return h.d(str, content, i10, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier.Companion companion = Modifier.Companion;
            Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null);
            startRestartGroup.startReplaceableGroup(1831116600);
            boolean changed2 = startRestartGroup.changed("Watermark Overlay");
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return h.c(r1, (SemanticsPropertyReceiver) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier semantics$default = SemanticsModifierKt.semantics$default(fillMaxSize$default, false, (Function1) rememberedValue2, 1, null);
            startRestartGroup.startReplaceableGroup(733328855);
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            at.n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(semantics$default);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            content.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
            Modifier fillMaxSize$default2 = SizeKt.fillMaxSize$default(companion, 0.0f, 1, null);
            startRestartGroup.startReplaceableGroup(602568249);
            boolean changed3 = startRestartGroup.changed(imageBitmap);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return h.b(ImageBitmap.this, (DrawScope) obj);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(fillMaxSize$default2, (Function1) rememberedValue3, startRestartGroup, 6);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 != null) {
            endRestartGroup2.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return h.g(str, content, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Nullable
    public static final ImageBitmap f(@Nullable String str) {
        Bitmap a10 = a(str);
        if (a10 != null) {
            return AndroidImageBitmap_androidKt.asImageBitmap(a10);
        }
        return null;
    }

    public static final Unit g(String str, Function2 function2, int i10, Composer composer, int i11) {
        e(str, function2, composer, i10 | 1);
        return Unit.f60915a;
    }
}
