package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    private boolean mAsyncFontPending;
    @NonNull
    private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableStartTint;
    private TintInfo mDrawableTint;
    private TintInfo mDrawableTopTint;
    private Typeface mFontTypeface;
    @NonNull
    private final TextView mView;
    private int mStyle = 0;
    private int mFontWeight = -1;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static LocaleList forLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }

        @DoNotInline
        static void setTextLocales(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static int getAutoSizeStepGranularity(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        @DoNotInline
        static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        @DoNotInline
        static boolean setFontVariationSettings(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static Typeface create(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        }
    }

    private static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i10) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i10);
        if (tintList != null) {
            TintInfo tintInfo = new TintInfo();
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = tintList;
            return tintInfo;
        }
        return null;
    }

    private void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
                Drawable drawable7 = compoundDrawablesRelative[0];
                if (drawable7 == null && compoundDrawablesRelative[2] == null) {
                    Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
                    TextView textView = this.mView;
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                    return;
                }
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative[1];
                }
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative[3];
                }
                this.mView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative[2], drawable4);
                return;
            }
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.mView.getCompoundDrawablesRelative();
        if (drawable5 == null) {
            drawable5 = compoundDrawablesRelative2[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawablesRelative2[1];
        }
        if (drawable6 == null) {
            drawable6 = compoundDrawablesRelative2[2];
        }
        TextView textView2 = this.mView;
        if (drawable4 == null) {
            drawable4 = compoundDrawablesRelative2[3];
        }
        textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
    }

    private void setCompoundTints() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void setTextSizeInternal(int i10, float f10) {
        this.mAutoSizeTextHelper.setTextSizeInternal(i10, f10);
    }

    private void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        int i10;
        String string;
        boolean z10;
        boolean z11;
        this.mStyle = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            int i12 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = i12;
            if (i12 != -1) {
                this.mStyle &= 2;
            }
        }
        boolean z12 = true;
        if (!tintTypedArray.hasValue(R.styleable.TextAppearance_android_fontFamily) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            if (tintTypedArray.hasValue(R.styleable.TextAppearance_android_typeface)) {
                this.mAsyncFontPending = false;
                int i13 = tintTypedArray.getInt(R.styleable.TextAppearance_android_typeface, 1);
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 == 3) {
                            this.mFontTypeface = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                }
                this.mFontTypeface = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.mFontTypeface = null;
        if (tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            i10 = R.styleable.TextAppearance_fontFamily;
        } else {
            i10 = R.styleable.TextAppearance_android_fontFamily;
        }
        final int i14 = this.mFontWeight;
        final int i15 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i10, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public void onFontRetrieved(@NonNull Typeface typeface) {
                        int i16;
                        boolean z13;
                        if (Build.VERSION.SDK_INT >= 28 && (i16 = i14) != -1) {
                            if ((i15 & 2) != 0) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            typeface = Api28Impl.create(typeface, i16, z13);
                        }
                        AppCompatTextHelper.this.onAsyncTypefaceReceived(weakReference, typeface);
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public void onFontRetrievalFailed(int i16) {
                    }
                });
                if (font != null) {
                    if (i11 >= 28 && this.mFontWeight != -1) {
                        Typeface create = Typeface.create(font, 0);
                        int i16 = this.mFontWeight;
                        if ((this.mStyle & 2) != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.mFontTypeface = Api28Impl.create(create, i16, z11);
                    } else {
                        this.mFontTypeface = font;
                    }
                }
                if (this.mFontTypeface == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.mAsyncFontPending = z10;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface == null && (string = tintTypedArray.getString(i10)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i17 = this.mFontWeight;
                if ((this.mStyle & 2) == 0) {
                    z12 = false;
                }
                this.mFontTypeface = Api28Impl.create(create2, i17, z12);
                return;
            }
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint != null || this.mDrawableEndTint != null) {
            Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
            applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
            applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAutoSizeMaxTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAutoSizeMinTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAutoSizeStepGranularity() {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList getCompoundDrawableTintList() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PorterDuff.Mode getCompoundDrawableTintMode() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isAutoSizeEnabled() {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromAttributes(@androidx.annotation.Nullable android.util.AttributeSet r17, int r18) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    void onAsyncTypefaceReceived(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    final int i10 = this.mStyle;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i10);
                        }
                    });
                    return;
                }
                textView.setTypeface(typeface, this.mStyle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (!ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
            autoSizeText();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSetCompoundDrawables() {
        applyCompoundDrawablesTints();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSetTextAppearance(Context context, int i10) {
        String string;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i10, R.styleable.TextAppearance);
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_textAllCaps)) {
            setAllCaps(obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes);
        if (i11 >= 26 && obtainStyledAttributes.hasValue(R.styleable.TextAppearance_fontVariationSettings) && (string = obtainStyledAttributes.getString(R.styleable.TextAppearance_fontVariationSettings)) != null) {
            Api26Impl.setFontVariationSettings(this.mView, string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void populateSurroundingTextIfNeeded(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT < 30 && inputConnection != null) {
            EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAllCaps(boolean z10) {
        this.mView.setAllCaps(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i10) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCompoundDrawableTintList(@Nullable ColorStateList colorStateList) {
        boolean z10;
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        if (colorStateList != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        tintInfo.mHasTintList = z10;
        setCompoundTints();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCompoundDrawableTintMode(@Nullable PorterDuff.Mode mode) {
        boolean z10;
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        if (mode != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        tintInfo.mHasTintMode = z10;
        setCompoundTints();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setTextSize(int i10, float f10) {
        if (!ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE && !isAutoSizeEnabled()) {
            setTextSizeInternal(i10, f10);
        }
    }
}
