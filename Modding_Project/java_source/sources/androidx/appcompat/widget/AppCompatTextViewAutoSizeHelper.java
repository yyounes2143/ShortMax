package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextViewAutoSizeHelper {
    private static final int DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX = 1;
    private static final int DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP = 112;
    private static final int DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP = 12;
    private static final String TAG = "ACTVAutoSizeHelper";
    static final float UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE = -1.0f;
    private static final int VERY_WIDE = 1048576;
    private final Context mContext;
    private final Impl mImpl;
    private TextPaint mTempTextPaint;
    @NonNull
    private final TextView mTextView;
    private static final RectF TEMP_RECTF = new RectF();
    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Method> sTextViewMethodByNameCache = new ConcurrentHashMap<>();
    private int mAutoSizeTextType = 0;
    private boolean mNeedsAutoSizeText = false;
    private float mAutoSizeStepGranularityInPx = -1.0f;
    private float mAutoSizeMinTextSizeInPx = -1.0f;
    private float mAutoSizeMaxTextSizeInPx = -1.0f;
    private int[] mAutoSizeTextSizesInPx = new int[0];
    private boolean mHasPresetAutoSizeValues = false;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static final class Api23Impl {
        private Api23Impl() {
        }

        @NonNull
        @DoNotInline
        static StaticLayout createStaticLayoutForMeasuring(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i10, int i11, @NonNull TextView textView, @NonNull TextPaint textPaint, @NonNull Impl impl) {
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                impl.computeAndSetTextDirection(obtain, textView);
            } catch (ClassCastException unused) {
                Log.w(AppCompatTextViewAutoSizeHelper.TAG, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return obtain.build();
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Impl23 extends Impl {
        Impl23() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) AppCompatTextViewAutoSizeHelper.invokeAndReturnWithDefault(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class Impl29 extends Impl23 {
        Impl29() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl23, androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
            TextDirectionHeuristic textDirectionHeuristic;
            textDirectionHeuristic = textView.getTextDirectionHeuristic();
            builder.setTextDirection(textDirectionHeuristic);
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        boolean isHorizontallyScrollable(TextView textView) {
            boolean isHorizontallyScrollable;
            isHorizontallyScrollable = textView.isHorizontallyScrollable();
            return isHorizontallyScrollable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextViewAutoSizeHelper(@NonNull TextView textView) {
        this.mTextView = textView;
        this.mContext = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.mImpl = new Impl29();
        } else {
            this.mImpl = new Impl23();
        }
    }

    private int[] cleanupAutoSizePresetSizes(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    private void clearAutoSizeConfiguration() {
        this.mAutoSizeTextType = 0;
        this.mAutoSizeMinTextSizeInPx = -1.0f;
        this.mAutoSizeMaxTextSizeInPx = -1.0f;
        this.mAutoSizeStepGranularityInPx = -1.0f;
        this.mAutoSizeTextSizesInPx = new int[0];
        this.mNeedsAutoSizeText = false;
    }

    private int findLargestTextSizeWhichFits(RectF rectF) {
        int length = this.mAutoSizeTextSizesInPx.length;
        if (length != 0) {
            int i10 = 1;
            int i11 = length - 1;
            int i12 = 0;
            while (i10 <= i11) {
                int i13 = (i10 + i11) / 2;
                if (suggestedSizeFitsInSpace(this.mAutoSizeTextSizesInPx[i13], rectF)) {
                    int i14 = i13 + 1;
                    i12 = i10;
                    i10 = i14;
                } else {
                    i12 = i13 - 1;
                    i11 = i12;
                }
            }
            return this.mAutoSizeTextSizesInPx[i12];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    @Nullable
    private static Method getTextViewMethod(@NonNull String str) {
        try {
            Method method = sTextViewMethodByNameCache.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                sTextViewMethodByNameCache.put(str, method);
            }
            return method;
        } catch (Exception e10) {
            Log.w(TAG, "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    static <T> T invokeAndReturnWithDefault(@NonNull Object obj, @NonNull String str, @NonNull T t10) {
        try {
            return (T) getTextViewMethod(str).invoke(obj, new Object[0]);
        } catch (Exception e10) {
            Log.w(TAG, "Failed to invoke TextView#" + str + "() method", e10);
            return t10;
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    private void setRawTextSize(float f10) {
        if (f10 != this.mTextView.getPaint().getTextSize()) {
            this.mTextView.getPaint().setTextSize(f10);
            boolean isInLayout = this.mTextView.isInLayout();
            if (this.mTextView.getLayout() != null) {
                this.mNeedsAutoSizeText = false;
                try {
                    Method textViewMethod = getTextViewMethod("nullLayouts");
                    if (textViewMethod != null) {
                        textViewMethod.invoke(this.mTextView, new Object[0]);
                    }
                } catch (Exception e10) {
                    Log.w(TAG, "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (!isInLayout) {
                    this.mTextView.requestLayout();
                } else {
                    this.mTextView.forceLayout();
                }
                this.mTextView.invalidate();
            }
        }
    }

    private boolean setupAutoSizeText() {
        if (supportsAutoSizeText() && this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues || this.mAutoSizeTextSizesInPx.length == 0) {
                int floor = ((int) Math.floor((this.mAutoSizeMaxTextSizeInPx - this.mAutoSizeMinTextSizeInPx) / this.mAutoSizeStepGranularityInPx)) + 1;
                int[] iArr = new int[floor];
                for (int i10 = 0; i10 < floor; i10++) {
                    iArr[i10] = Math.round(this.mAutoSizeMinTextSizeInPx + (i10 * this.mAutoSizeStepGranularityInPx));
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            }
            this.mNeedsAutoSizeText = true;
        } else {
            this.mNeedsAutoSizeText = false;
        }
        return this.mNeedsAutoSizeText;
    }

    private void setupAutoSizeUniformPresetSizes(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            setupAutoSizeUniformPresetSizesConfiguration();
        }
    }

    private boolean setupAutoSizeUniformPresetSizesConfiguration() {
        int[] iArr;
        int length;
        boolean z10;
        if (this.mAutoSizeTextSizesInPx.length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.mHasPresetAutoSizeValues = z10;
        if (z10) {
            this.mAutoSizeTextType = 1;
            this.mAutoSizeMinTextSizeInPx = iArr[0];
            this.mAutoSizeMaxTextSizeInPx = iArr[length - 1];
            this.mAutoSizeStepGranularityInPx = -1.0f;
        }
        return z10;
    }

    private boolean suggestedSizeFitsInSpace(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.mTextView.getText();
        TransformationMethod transformationMethod = this.mTextView.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.mTextView)) != null) {
            text = transformation;
        }
        int maxLines = this.mTextView.getMaxLines();
        initTempTextPaint(i10);
        StaticLayout createLayout = createLayout(text, (Layout.Alignment) invokeAndReturnWithDefault(this.mTextView, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        if ((maxLines != -1 && (createLayout.getLineCount() > maxLines || createLayout.getLineEnd(createLayout.getLineCount() - 1) != text.length())) || createLayout.getHeight() > rectF.bottom) {
            return false;
        }
        return true;
    }

    private boolean supportsAutoSizeText() {
        return !(this.mTextView instanceof AppCompatEditText);
    }

    private void validateAndSetAutoSizeTextTypeUniformConfiguration(float f10, float f11, float f12) throws IllegalArgumentException {
        if (f10 > 0.0f) {
            if (f11 > f10) {
                if (f12 > 0.0f) {
                    this.mAutoSizeTextType = 1;
                    this.mAutoSizeMinTextSizeInPx = f10;
                    this.mAutoSizeMaxTextSizeInPx = f11;
                    this.mAutoSizeStepGranularityInPx = f12;
                    this.mHasPresetAutoSizeValues = false;
                    return;
                }
                throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
            }
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void autoSizeText() {
        int measuredWidth;
        if (!isAutoSizeEnabled()) {
            return;
        }
        if (this.mNeedsAutoSizeText) {
            if (this.mTextView.getMeasuredHeight() > 0 && this.mTextView.getMeasuredWidth() > 0) {
                if (this.mImpl.isHorizontallyScrollable(this.mTextView)) {
                    measuredWidth = 1048576;
                } else {
                    measuredWidth = (this.mTextView.getMeasuredWidth() - this.mTextView.getTotalPaddingLeft()) - this.mTextView.getTotalPaddingRight();
                }
                int height = (this.mTextView.getHeight() - this.mTextView.getCompoundPaddingBottom()) - this.mTextView.getCompoundPaddingTop();
                if (measuredWidth > 0 && height > 0) {
                    RectF rectF = TEMP_RECTF;
                    synchronized (rectF) {
                        try {
                            rectF.setEmpty();
                            rectF.right = measuredWidth;
                            rectF.bottom = height;
                            float findLargestTextSizeWhichFits = findLargestTextSizeWhichFits(rectF);
                            if (findLargestTextSizeWhichFits != this.mTextView.getTextSize()) {
                                setTextSizeInternal(0, findLargestTextSizeWhichFits);
                            }
                        } finally {
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.mNeedsAutoSizeText = true;
    }

    @NonNull
    @VisibleForTesting
    StaticLayout createLayout(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i10, int i11) {
        return Api23Impl.createStaticLayoutForMeasuring(charSequence, alignment, i10, i11, this.mTextView, this.mTempTextPaint, this.mImpl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        return Math.round(this.mAutoSizeMaxTextSizeInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        return Math.round(this.mAutoSizeMinTextSizeInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        return Math.round(this.mAutoSizeStepGranularityInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextSizesInPx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        return this.mAutoSizeTextType;
    }

    @VisibleForTesting
    void initTempTextPaint(int i10) {
        TextPaint textPaint = this.mTempTextPaint;
        if (textPaint == null) {
            this.mTempTextPaint = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.mTempTextPaint.set(this.mTextView.getPaint());
        this.mTempTextPaint.setTextSize(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isAutoSizeEnabled() {
        if (supportsAutoSizeText() && this.mAutoSizeTextType != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(@Nullable AttributeSet attributeSet, int i10) {
        float f10;
        float f11;
        float f12;
        int resourceId;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i10, 0);
        TextView textView = this.mTextView;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R.styleable.AppCompatTextView, attributeSet, obtainStyledAttributes, i10, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.mAutoSizeTextType = obtainStyledAttributes.getInt(R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeStepGranularity)) {
            f10 = obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f);
        } else {
            f10 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMinTextSize)) {
            f11 = obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f);
        } else {
            f11 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizeMaxTextSize)) {
            f12 = obtainStyledAttributes.getDimension(R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f);
        } else {
            f12 = -1.0f;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            setupAutoSizeUniformPresetSizes(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (supportsAutoSizeText()) {
            if (this.mAutoSizeTextType == 1) {
                if (!this.mHasPresetAutoSizeValues) {
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    if (f11 == -1.0f) {
                        f11 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (f12 == -1.0f) {
                        f12 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (f10 == -1.0f) {
                        f10 = 1.0f;
                    }
                    validateAndSetAutoSizeTextTypeUniformConfiguration(f11, f12, f10);
                }
                setupAutoSizeText();
                return;
            }
            return;
        }
        this.mAutoSizeTextType = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i10) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i10 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArr2[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr2);
                if (!setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.mHasPresetAutoSizeValues = false;
            }
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (supportsAutoSizeText()) {
            if (i10 != 0) {
                if (i10 == 1) {
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (setupAutoSizeText()) {
                        autoSizeText();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
            }
            clearAutoSizeConfiguration();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setTextSizeInternal(int i10, float f10) {
        Resources resources;
        Context context = this.mContext;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        setRawTextSize(TypedValue.applyDimension(i10, f10, resources.getDisplayMetrics()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {
        Impl() {
        }

        boolean isHorizontallyScrollable(TextView textView) {
            return ((Boolean) AppCompatTextViewAutoSizeHelper.invokeAndReturnWithDefault(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }

        void computeAndSetTextDirection(StaticLayout.Builder builder, TextView textView) {
        }
    }
}
