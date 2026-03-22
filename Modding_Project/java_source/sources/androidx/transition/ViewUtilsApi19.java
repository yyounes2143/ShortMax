package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
class ViewUtilsApi19 {
    private static final String TAG = "ViewUtilsApi19";
    private static final int VISIBILITY_MASK = 12;
    private static boolean sSetFrameFetched = false;
    private static Method sSetFrameMethod = null;
    private static boolean sTryHiddenTransitionAlpha = true;
    private static Field sViewFlagsField;
    private static boolean sViewFlagsFieldFetched;
    private float[] mMatrixValues;

    @RequiresApi(29)
    /* loaded from: classes2.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static float getTransitionAlpha(View view) {
            float transitionAlpha;
            transitionAlpha = view.getTransitionAlpha();
            return transitionAlpha;
        }

        @DoNotInline
        static void setTransitionAlpha(View view, float f10) {
            view.setTransitionAlpha(f10);
        }
    }

    @SuppressLint({"PrivateApi", "SoonBlockedPrivateApi"})
    private void fetchSetFrame() {
        if (!sSetFrameFetched) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                sSetFrameMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e10) {
                Log.i(TAG, "Failed to retrieve setFrame method", e10);
            }
            sSetFrameFetched = true;
        }
    }

    @SuppressLint({"NewApi"})
    public float getTransitionAlpha(@NonNull View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return Api29Impl.getTransitionAlpha(view);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        int i10;
        if (matrix != null && !matrix.isIdentity()) {
            float[] fArr = this.mMatrixValues;
            if (fArr == null) {
                fArr = new float[9];
                this.mMatrixValues = fArr;
            }
            matrix.getValues(fArr);
            float f10 = fArr[3];
            float sqrt = (float) Math.sqrt(1.0f - (f10 * f10));
            if (fArr[0] < 0.0f) {
                i10 = -1;
            } else {
                i10 = 1;
            }
            float f11 = sqrt * i10;
            float degrees = (float) Math.toDegrees(Math.atan2(f10, f11));
            float f12 = fArr[0] / f11;
            float f13 = fArr[4] / f11;
            float f14 = fArr[2];
            float f15 = fArr[5];
            view.setPivotX(0.0f);
            view.setPivotY(0.0f);
            view.setTranslationX(f14);
            view.setTranslationY(f15);
            view.setRotation(degrees);
            view.setScaleX(f12);
            view.setScaleY(f13);
            return;
        }
        view.setPivotX(view.getWidth() / 2);
        view.setPivotY(view.getHeight() / 2);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setRotation(0.0f);
    }

    @SuppressLint({"BanUncheckedReflection"})
    public void setLeftTopRightBottom(@NonNull View view, int i10, int i11, int i12, int i13) {
        fetchSetFrame();
        Method method = sSetFrameMethod;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10.getCause());
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void setTransitionAlpha(@NonNull View view, float f10) {
        if (sTryHiddenTransitionAlpha) {
            try {
                Api29Impl.setTransitionAlpha(view, f10);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f10);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public void setTransitionVisibility(@NonNull View view, int i10) {
        if (!sViewFlagsFieldFetched) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                sViewFlagsField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i(TAG, "fetchViewFlagsField: ");
            }
            sViewFlagsFieldFetched = true;
        }
        Field field = sViewFlagsField;
        if (field != null) {
            try {
                sViewFlagsField.setInt(view, i10 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            transformMatrixToGlobal(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            transformMatrixToLocal(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }

    public void clearNonTransitionAlpha(@NonNull View view) {
    }

    public void saveNonTransitionAlpha(@NonNull View view) {
    }
}
