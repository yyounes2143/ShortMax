package com.google.android.material.transition.platform;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.transition.PathMotion;
import android.transition.PatternPathMotion;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.PathParser;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
@RequiresApi(21)
/* loaded from: classes5.dex */
class TransitionUtils {
    @AttrRes
    static final int NO_ATTR_RES_ID = 0;
    static final int NO_DURATION = -1;
    private static final int PATH_TYPE_ARC = 1;
    private static final int PATH_TYPE_LINEAR = 0;
    private static final RectF transformAlphaRectF = new RectF();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface CornerSizeBinaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    private TransitionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float calculateArea(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.platform.a
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize apply(CornerSize cornerSize) {
                CornerSize createFromCornerSize;
                createFromCornerSize = RelativeCornerSize.createFromCornerSize(rectF, cornerSize);
                return createFromCornerSize;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader createColorShader(@ColorInt int i10) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i10, i10, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <T> T defaultIfNull(@Nullable T t10, @NonNull T t11) {
        if (t10 == null) {
            return t11;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View findAncestorById(View view, @IdRes int i10) {
        String resourceName = view.getResources().getResourceName(i10);
        while (view != null) {
            if (view.getId() == i10) {
                return view;
            }
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View findDescendantOrAncestorById(View view, @IdRes int i10) {
        View findViewById = view.findViewById(i10);
        if (findViewById != null) {
            return findViewById;
        }
        return findAncestorById(view, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF getLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return new RectF(i10, i11, view.getWidth() + i10, view.getHeight() + i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF getRelativeBounds(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect getRelativeBoundsRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        if (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == 0.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    static void maybeAddTransition(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemeDuration(Transition transition, Context context, @AttrRes int i10) {
        int resolveThemeDuration;
        if (i10 != 0 && transition.getDuration() == -1 && (resolveThemeDuration = MotionUtils.resolveThemeDuration(context, i10, -1)) != -1) {
            transition.setDuration(resolveThemeDuration);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemeInterpolator(Transition transition, Context context, @AttrRes int i10, TimeInterpolator timeInterpolator) {
        if (i10 != 0 && transition.getInterpolator() == null) {
            transition.setInterpolator(MotionUtils.resolveThemeInterpolator(context, i10, timeInterpolator));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeApplyThemePath(Transition transition, Context context, @AttrRes int i10) {
        PathMotion resolveThemePath;
        if (i10 != 0 && (resolveThemePath = resolveThemePath(context, i10)) != null) {
            transition.setPathMotion(resolveThemePath);
            return true;
        }
        return false;
    }

    static void maybeRemoveTransition(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    static PathMotion resolveThemePath(Context context, @AttrRes int i10) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.type;
        if (i11 == 16) {
            int i12 = typedValue.data;
            if (i12 == 0) {
                return null;
            }
            if (i12 == 1) {
                return new MaterialArcMotion();
            }
            throw new IllegalArgumentException("Invalid motion path type: " + i12);
        } else if (i11 == 3) {
            return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
        } else {
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
    }

    private static int saveLayerAlphaCompat(Canvas canvas, Rect rect, int i10) {
        RectF rectF = transformAlphaRectF;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void transform(Canvas canvas, Rect rect, float f10, float f11, float f12, int i10, CanvasCompat.CanvasOperation canvasOperation) {
        if (i10 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f10, f11);
        canvas.scale(f12, f12);
        if (i10 < 255) {
            saveLayerAlphaCompat(canvas, rect, i10);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(save);
    }

    static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        ShapeAppearanceModel shapeAppearanceModel3;
        if (isShapeAppearanceSignificant(shapeAppearanceModel, rectF)) {
            shapeAppearanceModel3 = shapeAppearanceModel;
        } else {
            shapeAppearanceModel3 = shapeAppearanceModel2;
        }
        return shapeAppearanceModel3.toBuilder().setTopLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, @FloatRange(from = 0.0d, to = 1.0d) float f13, @FloatRange(from = 0.0d, to = 1.0d) float f14) {
        return lerp(f10, f11, f12, f13, f14, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, @FloatRange(from = 0.0d, to = 1.0d) float f13, @FloatRange(from = 0.0d) float f14, boolean z10) {
        if (!z10 || (f14 >= 0.0f && f14 <= 1.0f)) {
            return f14 < f12 ? f10 : f14 > f13 ? f11 : lerp(f10, f11, (f14 - f12) / (f13 - f12));
        }
        return lerp(f10, f11, f14);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int lerp(int i10, int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        return f12 < f10 ? i10 : f12 > f11 ? i11 : (int) lerp(i10, i11, (f12 - f10) / (f11 - f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeAppearanceModel lerp(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, final RectF rectF, final RectF rectF2, @FloatRange(from = 0.0d, to = 1.0d) final float f10, @FloatRange(from = 0.0d, to = 1.0d) final float f11, @FloatRange(from = 0.0d, to = 1.0d) final float f12) {
        return f12 < f10 ? shapeAppearanceModel : f12 > f11 ? shapeAppearanceModel2 : transformCornerSizes(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator() { // from class: com.google.android.material.transition.platform.TransitionUtils.1
            @Override // com.google.android.material.transition.platform.TransitionUtils.CornerSizeBinaryOperator
            @NonNull
            public CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.lerp(cornerSize.getCornerSize(rectF), cornerSize2.getCornerSize(rectF2), f10, f11, f12));
            }
        });
    }
}
