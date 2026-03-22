package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidSelectionHandles.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidSelectionHandles_androidKt {
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void DefaultSelectionHandle(@NotNull final Modifier modifier, final boolean z10, @NotNull final ResolvedTextDirection direction, final boolean z11, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Composer startRestartGroup = composer.startRestartGroup(47957398);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(z10)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(direction)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(z11)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        if ((i11 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            SpacerKt.Spacer(drawSelectionHandle(SizeKt.m490sizeVpY3zN4(modifier, SelectionHandlesKt.getHandleWidth(), SelectionHandlesKt.getHandleHeight()), z10, direction, z11), startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i16) {
                    AndroidSelectionHandles_androidKt.DefaultSelectionHandle(Modifier.this, z10, direction, z11, composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: HandlePopup-ULxng0E  reason: not valid java name */
    public static final void m804HandlePopupULxng0E(final long j10, @NotNull final HandleReferencePoint handleReferencePoint, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(handleReferencePoint, "handleReferencePoint");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1409050158);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(handleReferencePoint)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(content)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            long IntOffset = IntOffsetKt.IntOffset(bt.a.c(Offset.m1606getXimpl(j10)), bt.a.c(Offset.m1607getYimpl(j10)));
            IntOffset m4158boximpl = IntOffset.m4158boximpl(IntOffset);
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(m4158boximpl) | startRestartGroup.changed(handleReferencePoint);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new HandlePositionProvider(handleReferencePoint, IntOffset, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            AndroidPopup_androidKt.Popup((HandlePositionProvider) rememberedValue, null, new PopupProperties(false, false, false, null, true, false, 15, null), content, startRestartGroup, (i11 << 3) & 7168, 2);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$HandlePopup$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i15) {
                    AndroidSelectionHandles_androidKt.m804HandlePopupULxng0E(j10, handleReferencePoint, content, composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: SelectionHandle-8fL75-g  reason: not valid java name */
    public static final void m805SelectionHandle8fL75g(final long j10, final boolean z10, @NotNull final ResolvedTextDirection direction, final boolean z11, @NotNull final Modifier modifier, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        int i11;
        HandleReferencePoint handleReferencePoint;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Composer startRestartGroup = composer.startRestartGroup(-616295642);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i17 = 4;
            } else {
                i17 = 2;
            }
            i11 = i17 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(z10)) {
                i16 = 32;
            } else {
                i16 = 16;
            }
            i11 |= i16;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(direction)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i11 |= i15;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(z11)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i11 |= i14;
        }
        if ((57344 & i10) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i11 |= i13;
        }
        if ((458752 & i10) == 0) {
            if (startRestartGroup.changed(function2)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i11 |= i12;
        }
        final int i18 = i11;
        if ((i18 & 374491) == 74898 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (isLeft(z10, direction, z11)) {
                handleReferencePoint = HandleReferencePoint.TopRight;
            } else {
                handleReferencePoint = HandleReferencePoint.TopLeft;
            }
            m804HandlePopupULxng0E(j10, handleReferencePoint, ComposableLambdaKt.composableLambda(startRestartGroup, 732099485, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$SelectionHandle$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void invoke(@Nullable Composer composer2, int i19) {
                    if ((i19 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                    } else if (function2 == null) {
                        composer2.startReplaceableGroup(386443790);
                        Modifier modifier2 = modifier;
                        Boolean valueOf = Boolean.valueOf(z10);
                        Offset m1595boximpl = Offset.m1595boximpl(j10);
                        final boolean z12 = z10;
                        final long j11 = j10;
                        composer2.startReplaceableGroup(511388516);
                        boolean changed = composer2.changed(valueOf) | composer2.changed(m1595boximpl);
                        Object rememberedValue = composer2.rememberedValue();
                        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                            rememberedValue = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$SelectionHandle$1$1$1
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.f60915a;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                                    Handle handle;
                                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                    SemanticsPropertyKey<SelectionHandleInfo> selectionHandleInfoKey = SelectionHandlesKt.getSelectionHandleInfoKey();
                                    if (z12) {
                                        handle = Handle.SelectionStart;
                                    } else {
                                        handle = Handle.SelectionEnd;
                                    }
                                    semantics.set(selectionHandleInfoKey, new SelectionHandleInfo(handle, j11, null));
                                }
                            };
                            composer2.updateRememberedValue(rememberedValue);
                        }
                        composer2.endReplaceableGroup();
                        AndroidSelectionHandles_androidKt.DefaultSelectionHandle(SemanticsModifierKt.semantics$default(modifier2, false, (Function1) rememberedValue, 1, null), z10, direction, z11, composer2, i18 & 8176);
                        composer2.endReplaceableGroup();
                    } else {
                        composer2.startReplaceableGroup(386444465);
                        function2.invoke(composer2, Integer.valueOf((i18 >> 15) & 14));
                        composer2.endReplaceableGroup();
                    }
                }
            }), startRestartGroup, (i18 & 14) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$SelectionHandle$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i19) {
                    AndroidSelectionHandles_androidKt.m805SelectionHandle8fL75g(j10, z10, direction, z11, modifier, function2, composer2, i10 | 1);
                }
            });
        }
    }

    @NotNull
    public static final ImageBitmap createHandleImage(@NotNull CacheDrawScope cacheDrawScope, float f10) {
        Intrinsics.checkNotNullParameter(cacheDrawScope, "<this>");
        int ceil = ((int) Math.ceil(f10)) * 2;
        HandleImageCache handleImageCache = HandleImageCache.INSTANCE;
        ImageBitmap imageBitmap = handleImageCache.getImageBitmap();
        Canvas canvas = handleImageCache.getCanvas();
        CanvasDrawScope canvasDrawScope = handleImageCache.getCanvasDrawScope();
        if (imageBitmap == null || canvas == null || ceil > imageBitmap.getWidth() || ceil > imageBitmap.getHeight()) {
            imageBitmap = ImageBitmapKt.m2033ImageBitmapx__hDU$default(ceil, ceil, ImageBitmapConfig.Companion.m2027getAlpha8_sVssgQ(), false, null, 24, null);
            handleImageCache.setImageBitmap(imageBitmap);
            canvas = CanvasKt.Canvas(imageBitmap);
            handleImageCache.setCanvas(canvas);
        }
        ImageBitmap imageBitmap2 = imageBitmap;
        Canvas canvas2 = canvas;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            handleImageCache.setCanvasDrawScope(canvasDrawScope);
        }
        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
        LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
        long Size = androidx.compose.ui.geometry.SizeKt.Size(imageBitmap2.getWidth(), imageBitmap2.getHeight());
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope2.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m2257component4NHjbRc = drawParams.m2257component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope2.getDrawParams();
        drawParams2.setDensity(cacheDrawScope);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas2);
        drawParams2.m2260setSizeuvyYCjk(Size);
        canvas2.save();
        DrawScope.m2331drawRectnJ9OG0$default(canvasDrawScope2, Color.Companion.m1868getBlack0d7_KjU(), 0L, canvasDrawScope2.mo2336getSizeNHjbRc(), 0.0f, null, null, BlendMode.Companion.m1759getClear0nO6VwU(), 58, null);
        DrawScope.m2331drawRectnJ9OG0$default(canvasDrawScope2, ColorKt.Color(4278190080L), Offset.Companion.m1622getZeroF1C5BW0(), androidx.compose.ui.geometry.SizeKt.Size(f10, f10), 0.0f, null, null, 0, 120, null);
        DrawScope.m2318drawCircleVaOC9Bg$default(canvasDrawScope2, ColorKt.Color(4278190080L), f10, OffsetKt.Offset(f10, f10), 0.0f, null, null, 0, 120, null);
        canvas2.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope2.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m2260setSizeuvyYCjk(m2257component4NHjbRc);
        return imageBitmap2;
    }

    @NotNull
    public static final Modifier drawSelectionHandle(@NotNull Modifier modifier, final boolean z10, @NotNull final ResolvedTextDirection direction, final boolean z11) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$drawSelectionHandle$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1538687176);
                final long m903getHandleColor0d7_KjU = ((TextSelectionColors) composer.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m903getHandleColor0d7_KjU();
                Modifier.Companion companion = Modifier.Companion;
                final boolean z12 = z10;
                final ResolvedTextDirection resolvedTextDirection = direction;
                final boolean z13 = z11;
                Modifier then = composed.then(DrawModifierKt.drawWithCache(companion, new Function1<CacheDrawScope, DrawResult>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$drawSelectionHandle$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
                        Intrinsics.checkNotNullParameter(drawWithCache, "$this$drawWithCache");
                        final ImageBitmap createHandleImage = AndroidSelectionHandles_androidKt.createHandleImage(drawWithCache, Size.m1675getWidthimpl(drawWithCache.m1529getSizeNHjbRc()) / 2.0f);
                        final ColorFilter m1883tintxETnrds$default = ColorFilter.Companion.m1883tintxETnrds$default(ColorFilter.Companion, m903getHandleColor0d7_KjU, 0, 2, null);
                        final boolean z14 = z12;
                        final ResolvedTextDirection resolvedTextDirection2 = resolvedTextDirection;
                        final boolean z15 = z13;
                        return drawWithCache.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt.drawSelectionHandle.1.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                                invoke2(contentDrawScope);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull ContentDrawScope onDrawWithContent) {
                                boolean isLeft;
                                Intrinsics.checkNotNullParameter(onDrawWithContent, "$this$onDrawWithContent");
                                onDrawWithContent.drawContent();
                                isLeft = AndroidSelectionHandles_androidKt.isLeft(z14, resolvedTextDirection2, z15);
                                if (isLeft) {
                                    ImageBitmap imageBitmap = createHandleImage;
                                    ColorFilter colorFilter = m1883tintxETnrds$default;
                                    long mo2335getCenterF1C5BW0 = onDrawWithContent.mo2335getCenterF1C5BW0();
                                    DrawContext drawContext = onDrawWithContent.getDrawContext();
                                    long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
                                    drawContext.getCanvas().save();
                                    drawContext.getTransform().mo2268scale0AR0LA0(-1.0f, 1.0f, mo2335getCenterF1C5BW0);
                                    DrawScope.m2321drawImagegbVJVH8$default(onDrawWithContent, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
                                    drawContext.getCanvas().restore();
                                    drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
                                    return;
                                }
                                DrawScope.m2321drawImagegbVJVH8$default(onDrawWithContent, createHandleImage, 0L, 0.0f, null, m1883tintxETnrds$default, 0, 46, null);
                            }
                        });
                    }
                }));
                composer.endReplaceableGroup();
                return then;
            }
        }, 1, null);
    }

    public static final boolean isHandleLtrDirection(@NotNull ResolvedTextDirection direction, boolean z10) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        if ((direction == ResolvedTextDirection.Ltr && !z10) || (direction == ResolvedTextDirection.Rtl && z10)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLeft(boolean z10, ResolvedTextDirection resolvedTextDirection, boolean z11) {
        if (z10) {
            return isHandleLtrDirection(resolvedTextDirection, z11);
        }
        if (!isHandleLtrDirection(resolvedTextDirection, z11)) {
            return true;
        }
        return false;
    }
}
