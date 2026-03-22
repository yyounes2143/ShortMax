package androidx.compose.ui.graphics.vector.compat;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: XmlVectorParser.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class XmlVectorParser_androidKt {
    private static final int FILL_TYPE_WINDING = 0;
    private static final int LINECAP_BUTT = 0;
    private static final int LINECAP_ROUND = 1;
    private static final int LINECAP_SQUARE = 2;
    private static final int LINEJOIN_BEVEL = 2;
    private static final int LINEJOIN_MITER = 0;
    private static final int LINEJOIN_ROUND = 1;
    @NotNull
    private static final String SHAPE_CLIP_PATH = "clip-path";
    @NotNull
    private static final String SHAPE_GROUP = "group";
    @NotNull
    private static final String SHAPE_PATH = "path";

    @NotNull
    public static final ImageVector.Builder createVectorImageBuilder(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs) {
        long m1878getUnspecified0d7_KjU;
        int m1784getSrcIn0nO6VwU;
        Intrinsics.checkNotNullParameter(androidVectorParser, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray obtainAttributes = androidVectorParser.obtainAttributes(res, theme, attrs, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY());
        boolean namedBoolean = androidVectorParser.getNamedBoolean(obtainAttributes, "autoMirrored", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_AUTO_MIRRORED(), false);
        float namedFloat = androidVectorParser.getNamedFloat(obtainAttributes, "viewportWidth", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_WIDTH(), 0.0f);
        float namedFloat2 = androidVectorParser.getNamedFloat(obtainAttributes, "viewportHeight", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_VIEWPORT_HEIGHT(), 0.0f);
        if (namedFloat > 0.0f) {
            if (namedFloat2 > 0.0f) {
                float dimension = androidVectorParser.getDimension(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_WIDTH(), 0.0f);
                float dimension2 = androidVectorParser.getDimension(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_HEIGHT(), 0.0f);
                if (obtainAttributes.hasValue(androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_TINT())) {
                    TypedValue typedValue = new TypedValue();
                    obtainAttributes.getValue(androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_TINT(), typedValue);
                    if (typedValue.type == 2) {
                        m1878getUnspecified0d7_KjU = Color.Companion.m1878getUnspecified0d7_KjU();
                    } else {
                        ColorStateList namedColorStateList = androidVectorParser.getNamedColorStateList(obtainAttributes, theme, "tint", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_TINT());
                        if (namedColorStateList != null) {
                            m1878getUnspecified0d7_KjU = ColorKt.Color(namedColorStateList.getDefaultColor());
                        } else {
                            m1878getUnspecified0d7_KjU = Color.Companion.m1878getUnspecified0d7_KjU();
                        }
                    }
                } else {
                    m1878getUnspecified0d7_KjU = Color.Companion.m1878getUnspecified0d7_KjU();
                }
                long j10 = m1878getUnspecified0d7_KjU;
                int i10 = androidVectorParser.getInt(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_TINT_MODE(), -1);
                if (i10 != -1) {
                    if (i10 != 3) {
                        if (i10 != 5) {
                            if (i10 != 9) {
                                switch (i10) {
                                    case 14:
                                        m1784getSrcIn0nO6VwU = BlendMode.Companion.m1775getModulate0nO6VwU();
                                        break;
                                    case 15:
                                        m1784getSrcIn0nO6VwU = BlendMode.Companion.m1780getScreen0nO6VwU();
                                        break;
                                    case 16:
                                        m1784getSrcIn0nO6VwU = BlendMode.Companion.m1778getPlus0nO6VwU();
                                        break;
                                    default:
                                        m1784getSrcIn0nO6VwU = BlendMode.Companion.m1784getSrcIn0nO6VwU();
                                        break;
                                }
                            } else {
                                m1784getSrcIn0nO6VwU = BlendMode.Companion.m1783getSrcAtop0nO6VwU();
                            }
                        } else {
                            m1784getSrcIn0nO6VwU = BlendMode.Companion.m1784getSrcIn0nO6VwU();
                        }
                    } else {
                        m1784getSrcIn0nO6VwU = BlendMode.Companion.m1786getSrcOver0nO6VwU();
                    }
                } else {
                    m1784getSrcIn0nO6VwU = BlendMode.Companion.m1784getSrcIn0nO6VwU();
                }
                int i11 = m1784getSrcIn0nO6VwU;
                float m4049constructorimpl = Dp.m4049constructorimpl(dimension / res.getDisplayMetrics().density);
                float m4049constructorimpl2 = Dp.m4049constructorimpl(dimension2 / res.getDisplayMetrics().density);
                obtainAttributes.recycle();
                return new ImageVector.Builder(null, m4049constructorimpl, m4049constructorimpl2, namedFloat, namedFloat2, j10, i11, namedBoolean, 1, null);
            }
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<VectorGraphic> tag requires viewportHeight > 0");
        }
        throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<VectorGraphic> tag requires viewportWidth > 0");
    }

    /* renamed from: getStrokeLineCap-CSYIeUk  reason: not valid java name */
    private static final int m2450getStrokeLineCapCSYIeUk(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return StrokeCap.Companion.m2148getSquareKaPHkGw();
                }
                return i11;
            }
            return StrokeCap.Companion.m2147getRoundKaPHkGw();
        }
        return StrokeCap.Companion.m2146getButtKaPHkGw();
    }

    /* renamed from: getStrokeLineCap-CSYIeUk$default  reason: not valid java name */
    static /* synthetic */ int m2451getStrokeLineCapCSYIeUk$default(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = StrokeCap.Companion.m2146getButtKaPHkGw();
        }
        return m2450getStrokeLineCapCSYIeUk(i10, i11);
    }

    /* renamed from: getStrokeLineJoin-kLtJ_vA  reason: not valid java name */
    private static final int m2452getStrokeLineJoinkLtJ_vA(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return StrokeJoin.Companion.m2156getBevelLxFBmk8();
                }
                return i11;
            }
            return StrokeJoin.Companion.m2158getRoundLxFBmk8();
        }
        return StrokeJoin.Companion.m2157getMiterLxFBmk8();
    }

    /* renamed from: getStrokeLineJoin-kLtJ_vA$default  reason: not valid java name */
    static /* synthetic */ int m2453getStrokeLineJoinkLtJ_vA$default(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = StrokeJoin.Companion.m2157getMiterLxFBmk8();
        }
        return m2452getStrokeLineJoinkLtJ_vA(i10, i11);
    }

    public static final boolean isAtEnd(@NotNull XmlPullParser xmlPullParser) {
        Intrinsics.checkNotNullParameter(xmlPullParser, "<this>");
        if (xmlPullParser.getEventType() == 1) {
            return true;
        }
        if (xmlPullParser.getDepth() < 1 && xmlPullParser.getEventType() == 3) {
            return true;
        }
        return false;
    }

    private static final Brush obtainBrushFromComplexColor(ComplexColorCompat complexColorCompat) {
        if (!complexColorCompat.willDraw()) {
            return null;
        }
        Shader shader = complexColorCompat.getShader();
        if (shader != null) {
            return BrushKt.ShaderBrush(shader);
        }
        return new SolidColor(ColorKt.Color(complexColorCompat.getColor()), null);
    }

    public static final void parseClipPath(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) {
        Intrinsics.checkNotNullParameter(androidVectorParser, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray obtainAttributes = androidVectorParser.obtainAttributes(res, theme, attrs, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH());
        String string = androidVectorParser.getString(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_NAME());
        if (string == null) {
            string = "";
        }
        List<PathNode> addPathNodes = VectorKt.addPathNodes(androidVectorParser.getString(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_CLIP_PATH_PATH_DATA()));
        obtainAttributes.recycle();
        ImageVector.Builder.addGroup$default(builder, string, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, addPathNodes, 254, null);
    }

    public static final int parseCurrentVectorNode(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @NotNull AttributeSet attrs, @Nullable Resources.Theme theme, @NotNull ImageVector.Builder builder, int i10) {
        Intrinsics.checkNotNullParameter(androidVectorParser, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(builder, "builder");
        int eventType = androidVectorParser.getXmlParser().getEventType();
        if (eventType != 2) {
            if (eventType == 3 && Intrinsics.areEqual("group", androidVectorParser.getXmlParser().getName())) {
                int i11 = i10 + 1;
                for (int i12 = 0; i12 < i11; i12++) {
                    builder.clearGroup();
                }
                return 0;
            }
            return i10;
        }
        String name = androidVectorParser.getXmlParser().getName();
        if (name != null) {
            int hashCode = name.hashCode();
            if (hashCode != -1649314686) {
                if (hashCode != 3433509) {
                    if (hashCode == 98629247 && name.equals("group")) {
                        parseGroup(androidVectorParser, res, theme, attrs, builder);
                        return i10;
                    }
                    return i10;
                } else if (name.equals("path")) {
                    parsePath(androidVectorParser, res, theme, attrs, builder);
                    return i10;
                } else {
                    return i10;
                }
            } else if (name.equals(SHAPE_CLIP_PATH)) {
                parseClipPath(androidVectorParser, res, theme, attrs, builder);
                return i10 + 1;
            } else {
                return i10;
            }
        }
        return i10;
    }

    public static /* synthetic */ int parseCurrentVectorNode$default(AndroidVectorParser androidVectorParser, Resources resources, AttributeSet attributeSet, Resources.Theme theme, ImageVector.Builder builder, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            theme = null;
        }
        return parseCurrentVectorNode(androidVectorParser, resources, attributeSet, theme, builder, i10);
    }

    public static final void parseGroup(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) {
        Intrinsics.checkNotNullParameter(androidVectorParser, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray obtainAttributes = androidVectorParser.obtainAttributes(res, theme, attrs, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP());
        float namedFloat = androidVectorParser.getNamedFloat(obtainAttributes, "rotation", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_ROTATION(), 0.0f);
        float f10 = androidVectorParser.getFloat(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_X(), 0.0f);
        float f11 = androidVectorParser.getFloat(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_PIVOT_Y(), 0.0f);
        float namedFloat2 = androidVectorParser.getNamedFloat(obtainAttributes, "scaleX", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_X(), 1.0f);
        float namedFloat3 = androidVectorParser.getNamedFloat(obtainAttributes, "scaleY", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_SCALE_Y(), 1.0f);
        float namedFloat4 = androidVectorParser.getNamedFloat(obtainAttributes, "translateX", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_X(), 0.0f);
        float namedFloat5 = androidVectorParser.getNamedFloat(obtainAttributes, "translateY", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_TRANSLATE_Y(), 0.0f);
        String string = androidVectorParser.getString(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_GROUP_NAME());
        if (string == null) {
            string = "";
        }
        obtainAttributes.recycle();
        builder.addGroup(string, namedFloat, f10, f11, namedFloat2, namedFloat3, namedFloat4, namedFloat5, VectorKt.getEmptyPath());
    }

    public static final void parsePath(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) throws IllegalArgumentException {
        int m2085getEvenOddRgk1Os;
        Intrinsics.checkNotNullParameter(androidVectorParser, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray obtainAttributes = androidVectorParser.obtainAttributes(res, theme, attrs, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH());
        if (TypedArrayUtils.hasAttribute(androidVectorParser.getXmlParser(), "pathData")) {
            String string = androidVectorParser.getString(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_NAME());
            if (string == null) {
                string = "";
            }
            String str = string;
            List<PathNode> addPathNodes = VectorKt.addPathNodes(androidVectorParser.getString(obtainAttributes, androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_PATH_DATA()));
            ComplexColorCompat namedComplexColor = androidVectorParser.getNamedComplexColor(obtainAttributes, theme, "fillColor", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_COLOR(), 0);
            float namedFloat = androidVectorParser.getNamedFloat(obtainAttributes, "fillAlpha", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_FILL_ALPHA(), 1.0f);
            int m2450getStrokeLineCapCSYIeUk = m2450getStrokeLineCapCSYIeUk(androidVectorParser.getNamedInt(obtainAttributes, "strokeLineCap", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_CAP(), -1), StrokeCap.Companion.m2146getButtKaPHkGw());
            int m2452getStrokeLineJoinkLtJ_vA = m2452getStrokeLineJoinkLtJ_vA(androidVectorParser.getNamedInt(obtainAttributes, "strokeLineJoin", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_LINE_JOIN(), -1), StrokeJoin.Companion.m2156getBevelLxFBmk8());
            float namedFloat2 = androidVectorParser.getNamedFloat(obtainAttributes, "strokeMiterLimit", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_MITER_LIMIT(), 1.0f);
            ComplexColorCompat namedComplexColor2 = androidVectorParser.getNamedComplexColor(obtainAttributes, theme, "strokeColor", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_COLOR(), 0);
            float namedFloat3 = androidVectorParser.getNamedFloat(obtainAttributes, "strokeAlpha", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_ALPHA(), 1.0f);
            float namedFloat4 = androidVectorParser.getNamedFloat(obtainAttributes, "strokeWidth", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_STROKE_WIDTH(), 1.0f);
            float namedFloat5 = androidVectorParser.getNamedFloat(obtainAttributes, "trimPathEnd", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_END(), 1.0f);
            float namedFloat6 = androidVectorParser.getNamedFloat(obtainAttributes, "trimPathOffset", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_OFFSET(), 0.0f);
            float namedFloat7 = androidVectorParser.getNamedFloat(obtainAttributes, "trimPathStart", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_START(), 0.0f);
            int namedInt = androidVectorParser.getNamedInt(obtainAttributes, "fillType", androidVectorResources.getSTYLEABLE_VECTOR_DRAWABLE_PATH_TRIM_PATH_FILLTYPE(), FILL_TYPE_WINDING);
            obtainAttributes.recycle();
            Brush obtainBrushFromComplexColor = obtainBrushFromComplexColor(namedComplexColor);
            Brush obtainBrushFromComplexColor2 = obtainBrushFromComplexColor(namedComplexColor2);
            PathFillType.Companion companion = PathFillType.Companion;
            if (namedInt == 0) {
                m2085getEvenOddRgk1Os = companion.m2086getNonZeroRgk1Os();
            } else {
                m2085getEvenOddRgk1Os = companion.m2085getEvenOddRgk1Os();
            }
            builder.m2418addPathoIyEayM(addPathNodes, m2085getEvenOddRgk1Os, str, obtainBrushFromComplexColor, namedFloat, obtainBrushFromComplexColor2, namedFloat3, namedFloat4, m2450getStrokeLineCapCSYIeUk, m2452getStrokeLineJoinkLtJ_vA, namedFloat2, namedFloat7, namedFloat5, namedFloat6);
            return;
        }
        throw new IllegalArgumentException("No path data available");
    }

    @NotNull
    public static final XmlPullParser seekToStartTag(@NotNull XmlPullParser xmlPullParser) throws XmlPullParserException {
        Intrinsics.checkNotNullParameter(xmlPullParser, "<this>");
        int next = xmlPullParser.next();
        while (next != 2 && next != 1) {
            next = xmlPullParser.next();
        }
        if (next == 2) {
            return xmlPullParser;
        }
        throw new XmlPullParserException("No start tag found");
    }
}
