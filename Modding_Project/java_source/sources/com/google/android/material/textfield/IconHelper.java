package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class IconHelper {
    private IconHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyIconTint(@NonNull TextInputLayout textInputLayout, @NonNull CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (colorStateList != null && colorStateList.isStateful()) {
                DrawableCompat.setTintList(drawable, ColorStateList.valueOf(colorStateList.getColorForState(mergeIconState(textInputLayout, checkableImageButton), colorStateList.getDefaultColor())));
            } else {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            if (mode != null) {
                DrawableCompat.setTintMode(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImageView.ScaleType convertScaleType(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                return ImageView.ScaleType.CENTER;
                            }
                            return ImageView.ScaleType.CENTER_INSIDE;
                        }
                        return ImageView.ScaleType.CENTER_CROP;
                    }
                    return ImageView.ScaleType.FIT_END;
                }
                return ImageView.ScaleType.FIT_CENTER;
            }
            return ImageView.ScaleType.FIT_START;
        }
        return ImageView.ScaleType.FIT_XY;
    }

    private static int[] mergeIconState(@NonNull TextInputLayout textInputLayout, @NonNull CheckableImageButton checkableImageButton) {
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        return copyOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void refreshIconDrawableState(@NonNull TextInputLayout textInputLayout, @NonNull CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() != null && colorStateList != null && colorStateList.isStateful()) {
            int colorForState = colorStateList.getColorForState(mergeIconState(textInputLayout, checkableImageButton), colorStateList.getDefaultColor());
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(mutate, ColorStateList.valueOf(colorForState));
            checkableImageButton.setImageDrawable(mutate);
        }
    }

    private static void setIconClickable(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean z10;
        boolean hasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z11 = false;
        int i10 = 1;
        if (onLongClickListener != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (hasOnClickListeners || z10) {
            z11 = true;
        }
        checkableImageButton.setFocusable(z11);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z10);
        if (!z11) {
            i10 = 2;
        }
        ViewCompat.setImportantForAccessibility(checkableImageButton, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIconMinSize(@NonNull CheckableImageButton checkableImageButton, @Px int i10) {
        checkableImageButton.setMinimumWidth(i10);
        checkableImageButton.setMinimumHeight(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIconOnClickListener(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        setIconClickable(checkableImageButton, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIconOnLongClickListener(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        setIconClickable(checkableImageButton, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIconScaleType(@NonNull CheckableImageButton checkableImageButton, @NonNull ImageView.ScaleType scaleType) {
        checkableImageButton.setScaleType(scaleType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setCompatRippleBackgroundIfNeeded(@NonNull CheckableImageButton checkableImageButton) {
    }
}
