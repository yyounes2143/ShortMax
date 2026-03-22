package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class BadgeState {
    private static final String BADGE_RESOURCE_TAG = "badge";
    final float badgeHeight;
    final float badgeRadius;
    final float badgeWidth;
    final float badgeWithTextHeight;
    final float badgeWithTextRadius;
    final float badgeWithTextWidth;
    private final State currentState;
    final int horizontalInset;
    final int horizontalInsetWithText;
    int offsetAlignmentMode;
    private final State overridingState;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadgeState(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12, @Nullable State state) {
        CharSequence charSequence;
        int i13;
        int i14;
        int i15;
        int i16;
        int intValue;
        int intValue2;
        int intValue3;
        int intValue4;
        int intValue5;
        int intValue6;
        int intValue7;
        int intValue8;
        int intValue9;
        int intValue10;
        int intValue11;
        int intValue12;
        int intValue13;
        int intValue14;
        boolean booleanValue;
        State state2 = new State();
        this.currentState = state2;
        state = state == null ? new State() : state;
        if (i10 != 0) {
            state.badgeResId = i10;
        }
        TypedArray generateTypedArray = generateTypedArray(context, state.badgeResId, i11, i12);
        Resources resources = context.getResources();
        this.badgeRadius = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeRadius, -1);
        this.horizontalInset = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.horizontalInsetWithText = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.badgeWithTextRadius = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, -1);
        this.badgeWidth = generateTypedArray.getDimension(R.styleable.Badge_badgeWidth, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextWidth = generateTypedArray.getDimension(R.styleable.Badge_badgeWithTextWidth, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.badgeHeight = generateTypedArray.getDimension(R.styleable.Badge_badgeHeight, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextHeight = generateTypedArray.getDimension(R.styleable.Badge_badgeWithTextHeight, resources.getDimension(R.dimen.m3_badge_with_text_size));
        boolean z10 = true;
        this.offsetAlignmentMode = generateTypedArray.getInt(R.styleable.Badge_offsetAlignmentMode, 1);
        state2.alpha = state.alpha == -2 ? 255 : state.alpha;
        if (state.number != -2) {
            state2.number = state.number;
        } else if (generateTypedArray.hasValue(R.styleable.Badge_number)) {
            state2.number = generateTypedArray.getInt(R.styleable.Badge_number, 0);
        } else {
            state2.number = -1;
        }
        if (state.text != null) {
            state2.text = state.text;
        } else if (generateTypedArray.hasValue(R.styleable.Badge_badgeText)) {
            state2.text = generateTypedArray.getString(R.styleable.Badge_badgeText);
        }
        state2.contentDescriptionForText = state.contentDescriptionForText;
        if (state.contentDescriptionNumberless != null) {
            charSequence = state.contentDescriptionNumberless;
        } else {
            charSequence = context.getString(R.string.mtrl_badge_numberless_content_description);
        }
        state2.contentDescriptionNumberless = charSequence;
        if (state.contentDescriptionQuantityStrings != 0) {
            i13 = state.contentDescriptionQuantityStrings;
        } else {
            i13 = R.plurals.mtrl_badge_content_description;
        }
        state2.contentDescriptionQuantityStrings = i13;
        if (state.contentDescriptionExceedsMaxBadgeNumberRes != 0) {
            i14 = state.contentDescriptionExceedsMaxBadgeNumberRes;
        } else {
            i14 = R.string.mtrl_exceed_max_badge_number_content_description;
        }
        state2.contentDescriptionExceedsMaxBadgeNumberRes = i14;
        if (state.isVisible != null && !state.isVisible.booleanValue()) {
            z10 = false;
        }
        state2.isVisible = Boolean.valueOf(z10);
        if (state.maxCharacterCount != -2) {
            i15 = state.maxCharacterCount;
        } else {
            i15 = generateTypedArray.getInt(R.styleable.Badge_maxCharacterCount, -2);
        }
        state2.maxCharacterCount = i15;
        if (state.maxNumber != -2) {
            i16 = state.maxNumber;
        } else {
            i16 = generateTypedArray.getInt(R.styleable.Badge_maxNumber, -2);
        }
        state2.maxNumber = i16;
        if (state.badgeShapeAppearanceResId != null) {
            intValue = state.badgeShapeAppearanceResId.intValue();
        } else {
            intValue = generateTypedArray.getResourceId(R.styleable.Badge_badgeShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        }
        state2.badgeShapeAppearanceResId = Integer.valueOf(intValue);
        if (state.badgeShapeAppearanceOverlayResId != null) {
            intValue2 = state.badgeShapeAppearanceOverlayResId.intValue();
        } else {
            intValue2 = generateTypedArray.getResourceId(R.styleable.Badge_badgeShapeAppearanceOverlay, 0);
        }
        state2.badgeShapeAppearanceOverlayResId = Integer.valueOf(intValue2);
        if (state.badgeWithTextShapeAppearanceResId != null) {
            intValue3 = state.badgeWithTextShapeAppearanceResId.intValue();
        } else {
            intValue3 = generateTypedArray.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        }
        state2.badgeWithTextShapeAppearanceResId = Integer.valueOf(intValue3);
        if (state.badgeWithTextShapeAppearanceOverlayResId != null) {
            intValue4 = state.badgeWithTextShapeAppearanceOverlayResId.intValue();
        } else {
            intValue4 = generateTypedArray.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0);
        }
        state2.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(intValue4);
        if (state.backgroundColor != null) {
            intValue5 = state.backgroundColor.intValue();
        } else {
            intValue5 = readColorFromAttributes(context, generateTypedArray, R.styleable.Badge_backgroundColor);
        }
        state2.backgroundColor = Integer.valueOf(intValue5);
        if (state.badgeTextAppearanceResId != null) {
            intValue6 = state.badgeTextAppearanceResId.intValue();
        } else {
            intValue6 = generateTypedArray.getResourceId(R.styleable.Badge_badgeTextAppearance, R.style.TextAppearance_MaterialComponents_Badge);
        }
        state2.badgeTextAppearanceResId = Integer.valueOf(intValue6);
        if (state.badgeTextColor != null) {
            state2.badgeTextColor = state.badgeTextColor;
        } else if (generateTypedArray.hasValue(R.styleable.Badge_badgeTextColor)) {
            state2.badgeTextColor = Integer.valueOf(readColorFromAttributes(context, generateTypedArray, R.styleable.Badge_badgeTextColor));
        } else {
            state2.badgeTextColor = Integer.valueOf(new TextAppearance(context, state2.badgeTextAppearanceResId.intValue()).getTextColor().getDefaultColor());
        }
        if (state.badgeGravity != null) {
            intValue7 = state.badgeGravity.intValue();
        } else {
            intValue7 = generateTypedArray.getInt(R.styleable.Badge_badgeGravity, 8388661);
        }
        state2.badgeGravity = Integer.valueOf(intValue7);
        if (state.badgeHorizontalPadding != null) {
            intValue8 = state.badgeHorizontalPadding.intValue();
        } else {
            intValue8 = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        }
        state2.badgeHorizontalPadding = Integer.valueOf(intValue8);
        if (state.badgeVerticalPadding != null) {
            intValue9 = state.badgeVerticalPadding.intValue();
        } else {
            intValue9 = generateTypedArray.getDimensionPixelSize(R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding));
        }
        state2.badgeVerticalPadding = Integer.valueOf(intValue9);
        if (state.horizontalOffsetWithoutText != null) {
            intValue10 = state.horizontalOffsetWithoutText.intValue();
        } else {
            intValue10 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0);
        }
        state2.horizontalOffsetWithoutText = Integer.valueOf(intValue10);
        if (state.verticalOffsetWithoutText != null) {
            intValue11 = state.verticalOffsetWithoutText.intValue();
        } else {
            intValue11 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0);
        }
        state2.verticalOffsetWithoutText = Integer.valueOf(intValue11);
        if (state.horizontalOffsetWithText != null) {
            intValue12 = state.horizontalOffsetWithText.intValue();
        } else {
            intValue12 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state2.horizontalOffsetWithoutText.intValue());
        }
        state2.horizontalOffsetWithText = Integer.valueOf(intValue12);
        if (state.verticalOffsetWithText != null) {
            intValue13 = state.verticalOffsetWithText.intValue();
        } else {
            intValue13 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state2.verticalOffsetWithoutText.intValue());
        }
        state2.verticalOffsetWithText = Integer.valueOf(intValue13);
        if (state.largeFontVerticalOffsetAdjustment != null) {
            intValue14 = state.largeFontVerticalOffsetAdjustment.intValue();
        } else {
            intValue14 = generateTypedArray.getDimensionPixelOffset(R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0);
        }
        state2.largeFontVerticalOffsetAdjustment = Integer.valueOf(intValue14);
        state2.additionalHorizontalOffset = Integer.valueOf(state.additionalHorizontalOffset == null ? 0 : state.additionalHorizontalOffset.intValue());
        state2.additionalVerticalOffset = Integer.valueOf(state.additionalVerticalOffset == null ? 0 : state.additionalVerticalOffset.intValue());
        if (state.autoAdjustToWithinGrandparentBounds != null) {
            booleanValue = state.autoAdjustToWithinGrandparentBounds.booleanValue();
        } else {
            booleanValue = generateTypedArray.getBoolean(R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false);
        }
        state2.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(booleanValue);
        generateTypedArray.recycle();
        if (state.numberLocale == null) {
            state2.numberLocale = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            state2.numberLocale = state.numberLocale;
        }
        this.overridingState = state;
    }

    private TypedArray generateTypedArray(Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12) {
        AttributeSet attributeSet;
        int i13;
        int i14;
        if (i10 != 0) {
            AttributeSet parseDrawableXml = DrawableUtils.parseDrawableXml(context, i10, BADGE_RESOURCE_TAG);
            i13 = parseDrawableXml.getStyleAttribute();
            attributeSet = parseDrawableXml;
        } else {
            attributeSet = null;
            i13 = 0;
        }
        if (i13 == 0) {
            i14 = i12;
        } else {
            i14 = i13;
        }
        return ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Badge, i11, i14, new int[0]);
    }

    private static int readColorFromAttributes(Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        return MaterialResources.getColorStateList(context, typedArray, i10).getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearNumber() {
        setNumber(-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearText() {
        setText(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getAdditionalHorizontalOffset() {
        return this.currentState.additionalHorizontalOffset.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getAdditionalVerticalOffset() {
        return this.currentState.additionalVerticalOffset.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAlpha() {
        return this.currentState.alpha;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int getBackgroundColor() {
        return this.currentState.backgroundColor.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeGravity() {
        return this.currentState.badgeGravity.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Px
    public int getBadgeHorizontalPadding() {
        return this.currentState.badgeHorizontalPadding.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeShapeAppearanceOverlayResId() {
        return this.currentState.badgeShapeAppearanceOverlayResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeShapeAppearanceResId() {
        return this.currentState.badgeShapeAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int getBadgeTextColor() {
        return this.currentState.badgeTextColor.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Px
    public int getBadgeVerticalPadding() {
        return this.currentState.badgeVerticalPadding.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeWithTextShapeAppearanceOverlayResId() {
        return this.currentState.badgeWithTextShapeAppearanceOverlayResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBadgeWithTextShapeAppearanceResId() {
        return this.currentState.badgeWithTextShapeAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StringRes
    public int getContentDescriptionExceedsMaxBadgeNumberStringResource() {
        return this.currentState.contentDescriptionExceedsMaxBadgeNumberRes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getContentDescriptionForText() {
        return this.currentState.contentDescriptionForText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getContentDescriptionNumberless() {
        return this.currentState.contentDescriptionNumberless;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @PluralsRes
    public int getContentDescriptionQuantityStrings() {
        return this.currentState.contentDescriptionQuantityStrings;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getHorizontalOffsetWithText() {
        return this.currentState.horizontalOffsetWithText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getHorizontalOffsetWithoutText() {
        return this.currentState.horizontalOffsetWithoutText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getLargeFontVerticalOffsetAdjustment() {
        return this.currentState.largeFontVerticalOffsetAdjustment.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxCharacterCount() {
        return this.currentState.maxCharacterCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxNumber() {
        return this.currentState.maxNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumber() {
        return this.currentState.number;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale getNumberLocale() {
        return this.currentState.numberLocale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State getOverridingState() {
        return this.overridingState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getText() {
        return this.currentState.text;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleRes
    public int getTextAppearanceResId() {
        return this.currentState.badgeTextAppearanceResId.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getVerticalOffsetWithText() {
        return this.currentState.verticalOffsetWithText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int getVerticalOffsetWithoutText() {
        return this.currentState.verticalOffsetWithoutText.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasNumber() {
        if (this.currentState.number != -1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasText() {
        if (this.currentState.text != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAutoAdjustedToGrandparentBounds() {
        return this.currentState.autoAdjustToWithinGrandparentBounds.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVisible() {
        return this.currentState.isVisible.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalHorizontalOffset(@Dimension(unit = 1) int i10) {
        this.overridingState.additionalHorizontalOffset = Integer.valueOf(i10);
        this.currentState.additionalHorizontalOffset = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalVerticalOffset(@Dimension(unit = 1) int i10) {
        this.overridingState.additionalVerticalOffset = Integer.valueOf(i10);
        this.currentState.additionalVerticalOffset = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAlpha(int i10) {
        this.overridingState.alpha = i10;
        this.currentState.alpha = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAutoAdjustToGrandparentBounds(boolean z10) {
        this.overridingState.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z10);
        this.currentState.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundColor(@ColorInt int i10) {
        this.overridingState.backgroundColor = Integer.valueOf(i10);
        this.currentState.backgroundColor = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeGravity(int i10) {
        this.overridingState.badgeGravity = Integer.valueOf(i10);
        this.currentState.badgeGravity = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeHorizontalPadding(@Px int i10) {
        this.overridingState.badgeHorizontalPadding = Integer.valueOf(i10);
        this.currentState.badgeHorizontalPadding = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeShapeAppearanceOverlayResId(int i10) {
        this.overridingState.badgeShapeAppearanceOverlayResId = Integer.valueOf(i10);
        this.currentState.badgeShapeAppearanceOverlayResId = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeShapeAppearanceResId(int i10) {
        this.overridingState.badgeShapeAppearanceResId = Integer.valueOf(i10);
        this.currentState.badgeShapeAppearanceResId = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeTextColor(@ColorInt int i10) {
        this.overridingState.badgeTextColor = Integer.valueOf(i10);
        this.currentState.badgeTextColor = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeVerticalPadding(@Px int i10) {
        this.overridingState.badgeVerticalPadding = Integer.valueOf(i10);
        this.currentState.badgeVerticalPadding = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeWithTextShapeAppearanceOverlayResId(int i10) {
        this.overridingState.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i10);
        this.currentState.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeWithTextShapeAppearanceResId(int i10) {
        this.overridingState.badgeWithTextShapeAppearanceResId = Integer.valueOf(i10);
        this.currentState.badgeWithTextShapeAppearanceResId = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(@StringRes int i10) {
        this.overridingState.contentDescriptionExceedsMaxBadgeNumberRes = i10;
        this.currentState.contentDescriptionExceedsMaxBadgeNumberRes = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionForText(CharSequence charSequence) {
        this.overridingState.contentDescriptionForText = charSequence;
        this.currentState.contentDescriptionForText = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionNumberless(CharSequence charSequence) {
        this.overridingState.contentDescriptionNumberless = charSequence;
        this.currentState.contentDescriptionNumberless = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setContentDescriptionQuantityStringsResource(@PluralsRes int i10) {
        this.overridingState.contentDescriptionQuantityStrings = i10;
        this.currentState.contentDescriptionQuantityStrings = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHorizontalOffsetWithText(@Dimension(unit = 1) int i10) {
        this.overridingState.horizontalOffsetWithText = Integer.valueOf(i10);
        this.currentState.horizontalOffsetWithText = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHorizontalOffsetWithoutText(@Dimension(unit = 1) int i10) {
        this.overridingState.horizontalOffsetWithoutText = Integer.valueOf(i10);
        this.currentState.horizontalOffsetWithoutText = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLargeFontVerticalOffsetAdjustment(@Dimension(unit = 1) int i10) {
        this.overridingState.largeFontVerticalOffsetAdjustment = Integer.valueOf(i10);
        this.currentState.largeFontVerticalOffsetAdjustment = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxCharacterCount(int i10) {
        this.overridingState.maxCharacterCount = i10;
        this.currentState.maxCharacterCount = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxNumber(int i10) {
        this.overridingState.maxNumber = i10;
        this.currentState.maxNumber = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumber(int i10) {
        this.overridingState.number = i10;
        this.currentState.number = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumberLocale(Locale locale) {
        this.overridingState.numberLocale = locale;
        this.currentState.numberLocale = locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setText(String str) {
        this.overridingState.text = str;
        this.currentState.text = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTextAppearanceResId(@StyleRes int i10) {
        this.overridingState.badgeTextAppearanceResId = Integer.valueOf(i10);
        this.currentState.badgeTextAppearanceResId = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVerticalOffsetWithText(@Dimension(unit = 1) int i10) {
        this.overridingState.verticalOffsetWithText = Integer.valueOf(i10);
        this.currentState.verticalOffsetWithText = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVerticalOffsetWithoutText(@Dimension(unit = 1) int i10) {
        this.overridingState.verticalOffsetWithoutText = Integer.valueOf(i10);
        this.currentState.verticalOffsetWithoutText = Integer.valueOf(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVisible(boolean z10) {
        this.overridingState.isVisible = Boolean.valueOf(z10);
        this.currentState.isVisible = Boolean.valueOf(z10);
    }

    /* loaded from: classes5.dex */
    public static final class State implements Parcelable {
        private static final int BADGE_NUMBER_NONE = -1;
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.google.android.material.badge.BadgeState.State.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public State[] newArray(int i10) {
                return new State[i10];
            }
        };
        private static final int NOT_SET = -2;
        @Dimension(unit = 1)
        private Integer additionalHorizontalOffset;
        @Dimension(unit = 1)
        private Integer additionalVerticalOffset;
        private int alpha;
        private Boolean autoAdjustToWithinGrandparentBounds;
        @ColorInt
        private Integer backgroundColor;
        private Integer badgeGravity;
        @Px
        private Integer badgeHorizontalPadding;
        @XmlRes
        private int badgeResId;
        @StyleRes
        private Integer badgeShapeAppearanceOverlayResId;
        @StyleRes
        private Integer badgeShapeAppearanceResId;
        @StyleRes
        private Integer badgeTextAppearanceResId;
        @ColorInt
        private Integer badgeTextColor;
        @Px
        private Integer badgeVerticalPadding;
        @StyleRes
        private Integer badgeWithTextShapeAppearanceOverlayResId;
        @StyleRes
        private Integer badgeWithTextShapeAppearanceResId;
        @StringRes
        private int contentDescriptionExceedsMaxBadgeNumberRes;
        @Nullable
        private CharSequence contentDescriptionForText;
        @Nullable
        private CharSequence contentDescriptionNumberless;
        @PluralsRes
        private int contentDescriptionQuantityStrings;
        @Dimension(unit = 1)
        private Integer horizontalOffsetWithText;
        @Dimension(unit = 1)
        private Integer horizontalOffsetWithoutText;
        private Boolean isVisible;
        @Dimension(unit = 1)
        private Integer largeFontVerticalOffsetAdjustment;
        private int maxCharacterCount;
        private int maxNumber;
        private int number;
        private Locale numberLocale;
        @Nullable
        private String text;
        @Dimension(unit = 1)
        private Integer verticalOffsetWithText;
        @Dimension(unit = 1)
        private Integer verticalOffsetWithoutText;

        public State() {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            String str;
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeSerializable(this.badgeTextAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceOverlayResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceOverlayResId);
            parcel.writeInt(this.alpha);
            parcel.writeString(this.text);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeInt(this.maxNumber);
            CharSequence charSequence = this.contentDescriptionForText;
            String str2 = null;
            if (charSequence != null) {
                str = charSequence.toString();
            } else {
                str = null;
            }
            parcel.writeString(str);
            CharSequence charSequence2 = this.contentDescriptionNumberless;
            if (charSequence2 != null) {
                str2 = charSequence2.toString();
            }
            parcel.writeString(str2);
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.badgeHorizontalPadding);
            parcel.writeSerializable(this.badgeVerticalPadding);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.largeFontVerticalOffsetAdjustment);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
            parcel.writeSerializable(this.autoAdjustToWithinGrandparentBounds);
        }

        State(@NonNull Parcel parcel) {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
            this.badgeResId = parcel.readInt();
            this.backgroundColor = (Integer) parcel.readSerializable();
            this.badgeTextColor = (Integer) parcel.readSerializable();
            this.badgeTextAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.alpha = parcel.readInt();
            this.text = parcel.readString();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.maxNumber = parcel.readInt();
            this.contentDescriptionForText = parcel.readString();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = (Integer) parcel.readSerializable();
            this.badgeHorizontalPadding = (Integer) parcel.readSerializable();
            this.badgeVerticalPadding = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithText = (Integer) parcel.readSerializable();
            this.largeFontVerticalOffsetAdjustment = (Integer) parcel.readSerializable();
            this.additionalHorizontalOffset = (Integer) parcel.readSerializable();
            this.additionalVerticalOffset = (Integer) parcel.readSerializable();
            this.isVisible = (Boolean) parcel.readSerializable();
            this.numberLocale = (Locale) parcel.readSerializable();
            this.autoAdjustToWithinGrandparentBounds = (Boolean) parcel.readSerializable();
        }
    }
}
