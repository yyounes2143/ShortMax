package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.HandleReferencePoint;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
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
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.unit.Dp;
import at.n;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidCursorHandle.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidCursorHandle_androidKt {
    private static final float CursorHandleHeight;
    private static final float CursorHandleWidth;
    private static final float Sqrt2 = 1.4142135f;

    static {
        float m4049constructorimpl = Dp.m4049constructorimpl(25);
        CursorHandleHeight = m4049constructorimpl;
        CursorHandleWidth = Dp.m4049constructorimpl(Dp.m4049constructorimpl(m4049constructorimpl * 2.0f) / 2.4142137f);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: CursorHandle-ULxng0E  reason: not valid java name */
    public static final void m700CursorHandleULxng0E(final long j10, @NotNull final Modifier modifier, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        final int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Composer startRestartGroup = composer.startRestartGroup(-5185995);
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
            if (startRestartGroup.changed(modifier)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(function2)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            AndroidSelectionHandles_androidKt.m804HandlePopupULxng0E(j10, HandleReferencePoint.TopMiddle, ComposableLambdaKt.composableLambda(startRestartGroup, -1458480226, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$CursorHandle$1
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
                public final void invoke(@Nullable Composer composer2, int i15) {
                    if ((i15 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                    } else if (function2 == null) {
                        composer2.startReplaceableGroup(1275643833);
                        AndroidCursorHandle_androidKt.DefaultCursorHandle(modifier, composer2, (i11 >> 3) & 14);
                        composer2.endReplaceableGroup();
                    } else {
                        composer2.startReplaceableGroup(1275643903);
                        function2.invoke(composer2, Integer.valueOf((i11 >> 6) & 14));
                        composer2.endReplaceableGroup();
                    }
                }
            }), startRestartGroup, (i11 & 14) | TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$CursorHandle$2
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
                    AndroidCursorHandle_androidKt.m700CursorHandleULxng0E(j10, modifier, function2, composer2, i10 | 1);
                }
            });
        }
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void DefaultCursorHandle(@NotNull final Modifier modifier, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Composer startRestartGroup = composer.startRestartGroup(694251107);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(modifier)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            SpacerKt.Spacer(drawCursorHandle(SizeKt.m490sizeVpY3zN4(modifier, CursorHandleWidth, CursorHandleHeight)), startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$DefaultCursorHandle$1
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

                public final void invoke(@Nullable Composer composer2, int i13) {
                    AndroidCursorHandle_androidKt.DefaultCursorHandle(Modifier.this, composer2, i10 | 1);
                }
            });
        }
    }

    @NotNull
    public static final Modifier drawCursorHandle(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$drawCursorHandle$1
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-2126899193);
                final long m903getHandleColor0d7_KjU = ((TextSelectionColors) composer.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m903getHandleColor0d7_KjU();
                Modifier then = composed.then(DrawModifierKt.drawWithCache(Modifier.Companion, new Function1<CacheDrawScope, DrawResult>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt$drawCursorHandle$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
                        Intrinsics.checkNotNullParameter(drawWithCache, "$this$drawWithCache");
                        final float m1675getWidthimpl = Size.m1675getWidthimpl(drawWithCache.m1529getSizeNHjbRc()) / 2.0f;
                        final ImageBitmap createHandleImage = AndroidSelectionHandles_androidKt.createHandleImage(drawWithCache, m1675getWidthimpl);
                        final ColorFilter m1883tintxETnrds$default = ColorFilter.Companion.m1883tintxETnrds$default(ColorFilter.Companion, m903getHandleColor0d7_KjU, 0, 2, null);
                        return drawWithCache.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.text.AndroidCursorHandle_androidKt.drawCursorHandle.1.1.1
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
                                Intrinsics.checkNotNullParameter(onDrawWithContent, "$this$onDrawWithContent");
                                onDrawWithContent.drawContent();
                                float f10 = m1675getWidthimpl;
                                ImageBitmap imageBitmap = createHandleImage;
                                ColorFilter colorFilter = m1883tintxETnrds$default;
                                DrawContext drawContext = onDrawWithContent.getDrawContext();
                                long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
                                drawContext.getCanvas().save();
                                DrawTransform transform = drawContext.getTransform();
                                DrawTransform.translate$default(transform, f10, 0.0f, 2, null);
                                transform.mo2267rotateUv8p0NA(45.0f, Offset.Companion.m1622getZeroF1C5BW0());
                                DrawScope.m2321drawImagegbVJVH8$default(onDrawWithContent, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
                                drawContext.getCanvas().restore();
                                drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
                            }
                        });
                    }
                }));
                composer.endReplaceableGroup();
                return then;
            }
        }, 1, null);
    }

    public static final float getCursorHandleHeight() {
        return CursorHandleHeight;
    }

    public static final float getCursorHandleWidth() {
        return CursorHandleWidth;
    }
}
