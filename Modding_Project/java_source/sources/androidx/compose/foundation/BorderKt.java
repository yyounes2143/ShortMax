package androidx.compose.foundation;

import androidx.compose.material.OutlinedTextFieldKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import at.n;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Border.kt */
@Metadata
/* loaded from: classes.dex */
public final class BorderKt {
    @NotNull
    public static final Modifier border(@NotNull Modifier modifier, @NotNull BorderStroke border, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(border, "border");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m207borderziNgDLE(modifier, border.m213getWidthD9Ej5fM(), border.getBrush(), shape);
    }

    public static /* synthetic */ Modifier border$default(Modifier modifier, BorderStroke borderStroke, Shape shape, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        return border(modifier, borderStroke, shape);
    }

    @NotNull
    /* renamed from: border-xT4_qwU  reason: not valid java name */
    public static final Modifier m205borderxT4_qwU(@NotNull Modifier border, float f10, long j10, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(border, "$this$border");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m207borderziNgDLE(border, f10, new SolidColor(j10, null), shape);
    }

    /* renamed from: border-xT4_qwU$default  reason: not valid java name */
    public static /* synthetic */ Modifier m206borderxT4_qwU$default(Modifier modifier, float f10, long j10, Shape shape, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        return m205borderxT4_qwU(modifier, f10, j10, shape);
    }

    @NotNull
    /* renamed from: border-ziNgDLE  reason: not valid java name */
    public static final Modifier m207borderziNgDLE(@NotNull Modifier border, final float f10, @NotNull final Brush brush, @NotNull final Shape shape) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(border, "$this$border");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName(OutlinedTextFieldKt.BorderId);
                    inspectorInfo.getProperties().set("width", Dp.m4047boximpl(f10));
                    if (brush instanceof SolidColor) {
                        inspectorInfo.getProperties().set("color", Color.m1832boximpl(((SolidColor) brush).m2128getValue0d7_KjU()));
                        inspectorInfo.setValue(Color.m1832boximpl(((SolidColor) brush).m2128getValue0d7_KjU()));
                    } else {
                        inspectorInfo.getProperties().set("brush", brush);
                    }
                    inspectorInfo.getProperties().set("shape", shape);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(border, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.BorderKt$border$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1498088849);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Ref();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final Ref ref = (Ref) rememberedValue;
                Modifier.Companion companion = Modifier.Companion;
                final float f11 = f10;
                final Shape shape2 = shape;
                final Brush brush2 = brush;
                Modifier then = composed.then(DrawModifierKt.drawWithCache(companion, new Function1<CacheDrawScope, DrawResult>() { // from class: androidx.compose.foundation.BorderKt$border$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DrawResult invoke(@NotNull CacheDrawScope drawWithCache) {
                        DrawResult drawContentWithoutBorder;
                        DrawResult m208drawRectBorderNsqcLGU;
                        DrawResult m209drawRoundRectBorderSYlcjDY;
                        DrawResult drawGenericBorder;
                        Intrinsics.checkNotNullParameter(drawWithCache, "$this$drawWithCache");
                        if (drawWithCache.mo342toPx0680j_4(f11) < 0.0f || Size.m1674getMinDimensionimpl(drawWithCache.m1529getSizeNHjbRc()) <= 0.0f) {
                            drawContentWithoutBorder = BorderKt.drawContentWithoutBorder(drawWithCache);
                            return drawContentWithoutBorder;
                        }
                        float f12 = 2;
                        float min = Math.min(Dp.m4054equalsimpl0(f11, Dp.Companion.m4067getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil(drawWithCache.mo342toPx0680j_4(f11)), (float) Math.ceil(Size.m1674getMinDimensionimpl(drawWithCache.m1529getSizeNHjbRc()) / f12));
                        float f13 = min / f12;
                        long Offset = OffsetKt.Offset(f13, f13);
                        long Size = SizeKt.Size(Size.m1675getWidthimpl(drawWithCache.m1529getSizeNHjbRc()) - min, Size.m1672getHeightimpl(drawWithCache.m1529getSizeNHjbRc()) - min);
                        boolean z10 = f12 * min > Size.m1674getMinDimensionimpl(drawWithCache.m1529getSizeNHjbRc());
                        Outline mo235createOutlinePq9zytI = shape2.mo235createOutlinePq9zytI(drawWithCache.m1529getSizeNHjbRc(), drawWithCache.getLayoutDirection(), drawWithCache);
                        if (mo235createOutlinePq9zytI instanceof Outline.Generic) {
                            drawGenericBorder = BorderKt.drawGenericBorder(drawWithCache, ref, brush2, (Outline.Generic) mo235createOutlinePq9zytI, z10, min);
                            return drawGenericBorder;
                        } else if (mo235createOutlinePq9zytI instanceof Outline.Rounded) {
                            m209drawRoundRectBorderSYlcjDY = BorderKt.m209drawRoundRectBorderSYlcjDY(drawWithCache, ref, brush2, (Outline.Rounded) mo235createOutlinePq9zytI, Offset, Size, z10, min);
                            return m209drawRoundRectBorderSYlcjDY;
                        } else if (mo235createOutlinePq9zytI instanceof Outline.Rectangle) {
                            m208drawRectBorderNsqcLGU = BorderKt.m208drawRectBorderNsqcLGU(drawWithCache, brush2, Offset, Size, z10, min);
                            return m208drawRectBorderNsqcLGU;
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    }
                }));
                composer.endReplaceableGroup();
                return then;
            }
        });
    }

    private static final RoundRect createInsetRoundedRect(float f10, RoundRect roundRect) {
        return new RoundRect(f10, f10, roundRect.getWidth() - f10, roundRect.getHeight() - f10, m210shrinkKibmq7A(roundRect.m1656getTopLeftCornerRadiuskKHJgLs(), f10), m210shrinkKibmq7A(roundRect.m1657getTopRightCornerRadiuskKHJgLs(), f10), m210shrinkKibmq7A(roundRect.m1655getBottomRightCornerRadiuskKHJgLs(), f10), m210shrinkKibmq7A(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs(), f10), null);
    }

    private static final Path createRoundRectPath(Path path, RoundRect roundRect, float f10, boolean z10) {
        path.reset();
        path.addRoundRect(roundRect);
        if (!z10) {
            Path Path = AndroidPath_androidKt.Path();
            Path.addRoundRect(createInsetRoundedRect(f10, roundRect));
            path.mo1739opN5in7k0(path, Path, PathOperation.Companion.m2094getDifferenceb3I0S0c());
        }
        return path;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawContentWithoutBorder(CacheDrawScope cacheDrawScope) {
        return cacheDrawScope.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawContentWithoutBorder$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ContentDrawScope onDrawWithContent) {
                Intrinsics.checkNotNullParameter(onDrawWithContent, "$this$onDrawWithContent");
                onDrawWithContent.drawContent();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b7, code lost:
        if (androidx.compose.ui.graphics.ImageBitmapConfig.m2022equalsimpl(r13, r3) != false) goto L35;
     */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [T, androidx.compose.ui.graphics.ImageBitmap] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.draw.DrawResult drawGenericBorder(androidx.compose.ui.draw.CacheDrawScope r42, androidx.compose.ui.node.Ref<androidx.compose.foundation.BorderCache> r43, final androidx.compose.ui.graphics.Brush r44, final androidx.compose.ui.graphics.Outline.Generic r45, boolean r46, float r47) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BorderKt.drawGenericBorder(androidx.compose.ui.draw.CacheDrawScope, androidx.compose.ui.node.Ref, androidx.compose.ui.graphics.Brush, androidx.compose.ui.graphics.Outline$Generic, boolean, float):androidx.compose.ui.draw.DrawResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawRectBorder-NsqcLGU  reason: not valid java name */
    public static final DrawResult m208drawRectBorderNsqcLGU(CacheDrawScope cacheDrawScope, final Brush brush, long j10, long j11, boolean z10, float f10) {
        final long j12;
        final long j13;
        final DrawStyle stroke;
        if (z10) {
            j12 = Offset.Companion.m1622getZeroF1C5BW0();
        } else {
            j12 = j10;
        }
        if (z10) {
            j13 = cacheDrawScope.m1529getSizeNHjbRc();
        } else {
            j13 = j11;
        }
        if (z10) {
            stroke = Fill.INSTANCE;
        } else {
            stroke = new Stroke(f10, 0.0f, 0, 0, null, 30, null);
        }
        return cacheDrawScope.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawRectBorder$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                DrawScope.m2330drawRectAsUm42w$default(onDrawWithContent, Brush.this, j12, j13, 0.0f, stroke, null, 0, 104, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawRoundRectBorder-SYlcjDY  reason: not valid java name */
    public static final DrawResult m209drawRoundRectBorderSYlcjDY(CacheDrawScope cacheDrawScope, Ref<BorderCache> ref, final Brush brush, Outline.Rounded rounded, final long j10, final long j11, final boolean z10, final float f10) {
        if (RoundRectKt.isSimple(rounded.getRoundRect())) {
            final long m1656getTopLeftCornerRadiuskKHJgLs = rounded.getRoundRect().m1656getTopLeftCornerRadiuskKHJgLs();
            final float f11 = f10 / 2;
            final Stroke stroke = new Stroke(f10, 0.0f, 0, 0, null, 30, null);
            return cacheDrawScope.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawRoundRectBorder$1
                /* JADX INFO: Access modifiers changed from: package-private */
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
                    long m210shrinkKibmq7A;
                    Intrinsics.checkNotNullParameter(onDrawWithContent, "$this$onDrawWithContent");
                    onDrawWithContent.drawContent();
                    if (z10) {
                        DrawScope.m2332drawRoundRectZuiqVtQ$default(onDrawWithContent, brush, 0L, 0L, m1656getTopLeftCornerRadiuskKHJgLs, 0.0f, null, null, 0, 246, null);
                        return;
                    }
                    float m1581getXimpl = CornerRadius.m1581getXimpl(m1656getTopLeftCornerRadiuskKHJgLs);
                    float f12 = f11;
                    if (m1581getXimpl < f12) {
                        float f13 = f10;
                        float m1675getWidthimpl = Size.m1675getWidthimpl(onDrawWithContent.mo2336getSizeNHjbRc()) - f10;
                        float m1672getHeightimpl = Size.m1672getHeightimpl(onDrawWithContent.mo2336getSizeNHjbRc()) - f10;
                        int m1830getDifferencertfAjoo = ClipOp.Companion.m1830getDifferencertfAjoo();
                        Brush brush2 = brush;
                        long j12 = m1656getTopLeftCornerRadiuskKHJgLs;
                        DrawContext drawContext = onDrawWithContent.getDrawContext();
                        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
                        drawContext.getCanvas().save();
                        drawContext.getTransform().mo2264clipRectN_I0leg(f13, f13, m1675getWidthimpl, m1672getHeightimpl, m1830getDifferencertfAjoo);
                        DrawScope.m2332drawRoundRectZuiqVtQ$default(onDrawWithContent, brush2, 0L, 0L, j12, 0.0f, null, null, 0, 246, null);
                        drawContext.getCanvas().restore();
                        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
                        return;
                    }
                    Brush brush3 = brush;
                    long j13 = j10;
                    long j14 = j11;
                    m210shrinkKibmq7A = BorderKt.m210shrinkKibmq7A(m1656getTopLeftCornerRadiuskKHJgLs, f12);
                    DrawScope.m2332drawRoundRectZuiqVtQ$default(onDrawWithContent, brush3, j13, j14, m210shrinkKibmq7A, 0.0f, stroke, null, 0, 208, null);
                }
            });
        }
        final Path createRoundRectPath = createRoundRectPath(obtain(ref).obtainPath(), rounded.getRoundRect(), f10, z10);
        return cacheDrawScope.onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.BorderKt$drawRoundRectBorder$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
                DrawScope.m2326drawPathGBMwjPU$default(onDrawWithContent, Path.this, brush, 0.0f, null, null, 0, 60, null);
            }
        });
    }

    private static final BorderCache obtain(Ref<BorderCache> ref) {
        BorderCache value = ref.getValue();
        if (value == null) {
            BorderCache borderCache = new BorderCache(null, null, null, null, 15, null);
            ref.setValue(borderCache);
            return borderCache;
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shrink-Kibmq7A  reason: not valid java name */
    public static final long m210shrinkKibmq7A(long j10, float f10) {
        return CornerRadiusKt.CornerRadius(Math.max(0.0f, CornerRadius.m1581getXimpl(j10) - f10), Math.max(0.0f, CornerRadius.m1582getYimpl(j10) - f10));
    }
}
