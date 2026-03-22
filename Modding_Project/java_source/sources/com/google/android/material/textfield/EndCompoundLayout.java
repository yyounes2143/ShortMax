package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes5.dex */
public class EndCompoundLayout extends LinearLayout {
    @Nullable
    private final AccessibilityManager accessibilityManager;
    private EditText editText;
    private final TextWatcher editTextWatcher;
    private final LinkedHashSet<TextInputLayout.OnEndIconChangedListener> endIconChangedListeners;
    private final EndIconDelegates endIconDelegates;
    @NonNull
    private final FrameLayout endIconFrame;
    private int endIconMinSize;
    private int endIconMode;
    private View.OnLongClickListener endIconOnLongClickListener;
    @NonNull
    private ImageView.ScaleType endIconScaleType;
    private ColorStateList endIconTintList;
    private PorterDuff.Mode endIconTintMode;
    @NonNull
    private final CheckableImageButton endIconView;
    private View.OnLongClickListener errorIconOnLongClickListener;
    private ColorStateList errorIconTintList;
    private PorterDuff.Mode errorIconTintMode;
    @NonNull
    private final CheckableImageButton errorIconView;
    private boolean hintExpanded;
    private final TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener;
    @Nullable
    private CharSequence suffixText;
    @NonNull
    private final TextView suffixTextView;
    final TextInputLayout textInputLayout;
    @Nullable
    private AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class EndIconDelegates {
        private final int customEndIconDrawableId;
        private final SparseArray<EndIconDelegate> delegates = new SparseArray<>();
        private final EndCompoundLayout endLayout;
        private final int passwordIconDrawableId;

        EndIconDelegates(EndCompoundLayout endCompoundLayout, TintTypedArray tintTypedArray) {
            this.endLayout = endCompoundLayout;
            this.customEndIconDrawableId = tintTypedArray.getResourceId(R.styleable.TextInputLayout_endIconDrawable, 0);
            this.passwordIconDrawableId = tintTypedArray.getResourceId(R.styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        private EndIconDelegate create(int i10) {
            if (i10 != -1) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                return new DropdownMenuEndIconDelegate(this.endLayout);
                            }
                            throw new IllegalArgumentException("Invalid end icon mode: " + i10);
                        }
                        return new ClearTextEndIconDelegate(this.endLayout);
                    }
                    return new PasswordToggleEndIconDelegate(this.endLayout, this.passwordIconDrawableId);
                }
                return new NoEndIconDelegate(this.endLayout);
            }
            return new CustomEndIconDelegate(this.endLayout);
        }

        EndIconDelegate get(int i10) {
            EndIconDelegate endIconDelegate = this.delegates.get(i10);
            if (endIconDelegate == null) {
                EndIconDelegate create = create(i10);
                this.delegates.append(i10, create);
                return create;
            }
            return endIconDelegate;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EndCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.endIconMode = 0;
        this.endIconChangedListeners = new LinkedHashSet<>();
        this.editTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.EndCompoundLayout.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                EndCompoundLayout.this.getEndIconDelegate().afterEditTextChanged(editable);
            }

            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                EndCompoundLayout.this.getEndIconDelegate().beforeEditTextChanged(charSequence, i10, i11, i12);
            }
        };
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.2
            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public void onEditTextAttached(@NonNull TextInputLayout textInputLayout2) {
                if (EndCompoundLayout.this.editText == textInputLayout2.getEditText()) {
                    return;
                }
                if (EndCompoundLayout.this.editText != null) {
                    EndCompoundLayout.this.editText.removeTextChangedListener(EndCompoundLayout.this.editTextWatcher);
                    if (EndCompoundLayout.this.editText.getOnFocusChangeListener() == EndCompoundLayout.this.getEndIconDelegate().getOnEditTextFocusChangeListener()) {
                        EndCompoundLayout.this.editText.setOnFocusChangeListener(null);
                    }
                }
                EndCompoundLayout.this.editText = textInputLayout2.getEditText();
                if (EndCompoundLayout.this.editText != null) {
                    EndCompoundLayout.this.editText.addTextChangedListener(EndCompoundLayout.this.editTextWatcher);
                }
                EndCompoundLayout.this.getEndIconDelegate().onEditTextAttached(EndCompoundLayout.this.editText);
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                endCompoundLayout.setOnFocusChangeListenersIfNeeded(endCompoundLayout.getEndIconDelegate());
            }
        };
        this.onEditTextAttachedListener = onEditTextAttachedListener;
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.endIconFrame = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton createIconView = createIconView(this, from, R.id.text_input_error_icon);
        this.errorIconView = createIconView;
        CheckableImageButton createIconView2 = createIconView(frameLayout, from, R.id.text_input_end_icon);
        this.endIconView = createIconView2;
        this.endIconDelegates = new EndIconDelegates(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.suffixTextView = appCompatTextView;
        initErrorIconView(tintTypedArray);
        initEndIconView(tintTypedArray);
        initSuffixTextView(tintTypedArray);
        frameLayout.addView(createIconView2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(createIconView);
        textInputLayout.addOnEditTextAttachedListener(onEditTextAttachedListener);
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.3
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                EndCompoundLayout.this.addTouchExplorationStateChangeListenerIfNeeded();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                EndCompoundLayout.this.removeTouchExplorationStateChangeListenerIfNeeded();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addTouchExplorationStateChangeListenerIfNeeded() {
        if (this.touchExplorationStateChangeListener != null && this.accessibilityManager != null && ViewCompat.isAttachedToWindow(this)) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
        }
    }

    private CheckableImageButton createIconView(ViewGroup viewGroup, LayoutInflater layoutInflater, @IdRes int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        IconHelper.setCompatRippleBackgroundIfNeeded(checkableImageButton);
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    private void dispatchOnEndIconChanged(int i10) {
        Iterator<TextInputLayout.OnEndIconChangedListener> it = this.endIconChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onEndIconChanged(this.textInputLayout, i10);
        }
    }

    private int getIconResId(EndIconDelegate endIconDelegate) {
        int i10 = this.endIconDelegates.customEndIconDrawableId;
        if (i10 == 0) {
            return endIconDelegate.getIconDrawableResId();
        }
        return i10;
    }

    private void initEndIconView(TintTypedArray tintTypedArray) {
        if (!tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_endIconTint)) {
                this.endIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, R.styleable.TextInputLayout_endIconTint);
            }
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_endIconTintMode)) {
                this.endIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(R.styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_endIconMode)) {
            setEndIconMode(tintTypedArray.getInt(R.styleable.TextInputLayout_endIconMode, 0));
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(tintTypedArray.getText(R.styleable.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(tintTypedArray.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTint)) {
                this.endIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, R.styleable.TextInputLayout_passwordToggleTint);
            }
            if (tintTypedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode)) {
                this.endIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            setEndIconMode(tintTypedArray.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconContentDescription(tintTypedArray.getText(R.styleable.TextInputLayout_passwordToggleContentDescription));
        }
        setEndIconMinSize(tintTypedArray.getDimensionPixelSize(R.styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size)));
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_endIconScaleType)) {
            setEndIconScaleType(IconHelper.convertScaleType(tintTypedArray.getInt(R.styleable.TextInputLayout_endIconScaleType, -1)));
        }
    }

    private void initErrorIconView(TintTypedArray tintTypedArray) {
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_errorIconTint)) {
            this.errorIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, R.styleable.TextInputLayout_errorIconTint);
        }
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_errorIconTintMode)) {
            this.errorIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(R.styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(tintTypedArray.getDrawable(R.styleable.TextInputLayout_errorIconDrawable));
        }
        this.errorIconView.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(this.errorIconView, 2);
        this.errorIconView.setClickable(false);
        this.errorIconView.setPressable(false);
        this.errorIconView.setFocusable(false);
    }

    private void initSuffixTextView(TintTypedArray tintTypedArray) {
        this.suffixTextView.setVisibility(8);
        this.suffixTextView.setId(R.id.textinput_suffix_text);
        this.suffixTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(this.suffixTextView, 1);
        setSuffixTextAppearance(tintTypedArray.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0));
        if (tintTypedArray.hasValue(R.styleable.TextInputLayout_suffixTextColor)) {
            setSuffixTextColor(tintTypedArray.getColorStateList(R.styleable.TextInputLayout_suffixTextColor));
        }
        setSuffixText(tintTypedArray.getText(R.styleable.TextInputLayout_suffixText));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeTouchExplorationStateChangeListenerIfNeeded() {
        AccessibilityManager accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.touchExplorationStateChangeListener;
        if (touchExplorationStateChangeListener != null && (accessibilityManager = this.accessibilityManager) != null) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnFocusChangeListenersIfNeeded(EndIconDelegate endIconDelegate) {
        if (this.editText == null) {
            return;
        }
        if (endIconDelegate.getOnEditTextFocusChangeListener() != null) {
            this.editText.setOnFocusChangeListener(endIconDelegate.getOnEditTextFocusChangeListener());
        }
        if (endIconDelegate.getOnIconViewFocusChangeListener() != null) {
            this.endIconView.setOnFocusChangeListener(endIconDelegate.getOnIconViewFocusChangeListener());
        }
    }

    private void setUpDelegate(@NonNull EndIconDelegate endIconDelegate) {
        endIconDelegate.setUp();
        this.touchExplorationStateChangeListener = endIconDelegate.getTouchExplorationStateChangeListener();
        addTouchExplorationStateChangeListenerIfNeeded();
    }

    private void tearDownDelegate(@NonNull EndIconDelegate endIconDelegate) {
        removeTouchExplorationStateChangeListenerIfNeeded();
        this.touchExplorationStateChangeListener = null;
        endIconDelegate.tearDown();
    }

    private void tintEndIconOnError(boolean z10) {
        if (z10 && getEndIconDrawable() != null) {
            Drawable mutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
            DrawableCompat.setTint(mutate, this.textInputLayout.getErrorCurrentTextColors());
            this.endIconView.setImageDrawable(mutate);
            return;
        }
        IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, this.endIconTintMode);
    }

    private void updateEndLayoutVisibility() {
        int i10;
        boolean z10;
        FrameLayout frameLayout = this.endIconFrame;
        int i11 = 8;
        if (this.endIconView.getVisibility() == 0 && !isErrorIconVisible()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        frameLayout.setVisibility(i10);
        if (this.suffixText != null && !this.hintExpanded) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (isEndIconVisible() || isErrorIconVisible() || !z10) {
            i11 = 0;
        }
        setVisibility(i11);
    }

    private void updateErrorIconVisibility() {
        boolean z10;
        int i10 = 0;
        if (getErrorIconDrawable() != null && this.textInputLayout.isErrorEnabled() && this.textInputLayout.shouldShowError()) {
            z10 = true;
        } else {
            z10 = false;
        }
        CheckableImageButton checkableImageButton = this.errorIconView;
        if (!z10) {
            i10 = 8;
        }
        checkableImageButton.setVisibility(i10);
        updateEndLayoutVisibility();
        updateSuffixTextViewPadding();
        if (!hasEndIcon()) {
            this.textInputLayout.updateDummyDrawables();
        }
    }

    private void updateSuffixTextVisibility() {
        int i10;
        int visibility = this.suffixTextView.getVisibility();
        boolean z10 = false;
        if (this.suffixText != null && !this.hintExpanded) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        if (visibility != i10) {
            EndIconDelegate endIconDelegate = getEndIconDelegate();
            if (i10 == 0) {
                z10 = true;
            }
            endIconDelegate.onSuffixVisibilityChanged(z10);
        }
        updateEndLayoutVisibility();
        this.suffixTextView.setVisibility(i10);
        this.textInputLayout.updateDummyDrawables();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOnEndIconChangedListener(@NonNull TextInputLayout.OnEndIconChangedListener onEndIconChangedListener) {
        this.endIconChangedListeners.add(onEndIconChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkEndIcon() {
        this.endIconView.performClick();
        this.endIconView.jumpDrawablesToCurrentState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearOnEndIconChangedListeners() {
        this.endIconChangedListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CheckableImageButton getCurrentEndIconView() {
        if (isErrorIconVisible()) {
            return this.errorIconView;
        }
        if (hasEndIcon() && isEndIconVisible()) {
            return this.endIconView;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.endIconView.getContentDescription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EndIconDelegate getEndIconDelegate() {
        return this.endIconDelegates.get(this.endIconMode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Drawable getEndIconDrawable() {
        return this.endIconView.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEndIconMinSize() {
        return this.endIconMinSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEndIconMode() {
        return this.endIconMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.endIconScaleType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CheckableImageButton getEndIconView() {
        return this.endIconView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable getErrorIconDrawable() {
        return this.errorIconView.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.endIconView.getContentDescription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.endIconView.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence getSuffixText() {
        return this.suffixText;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.suffixTextView.getTextColors();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuffixTextEndOffset() {
        int measuredWidth;
        if (!isEndIconVisible() && !isErrorIconVisible()) {
            measuredWidth = 0;
        } else {
            measuredWidth = this.endIconView.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) this.endIconView.getLayoutParams());
        }
        return ViewCompat.getPaddingEnd(this) + ViewCompat.getPaddingEnd(this.suffixTextView) + measuredWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextView getSuffixTextView() {
        return this.suffixTextView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasEndIcon() {
        if (this.endIconMode != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEndIconCheckable() {
        return this.endIconView.isCheckable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEndIconChecked() {
        if (hasEndIcon() && this.endIconView.isChecked()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEndIconVisible() {
        if (this.endIconFrame.getVisibility() == 0 && this.endIconView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isErrorIconVisible() {
        if (this.errorIconView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPasswordVisibilityToggleEnabled() {
        if (this.endIconMode == 1) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onHintStateChanged(boolean z10) {
        this.hintExpanded = z10;
        updateSuffixTextVisibility();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTextInputBoxStateUpdated() {
        updateErrorIconVisibility();
        refreshErrorIconDrawableState();
        refreshEndIconDrawableState();
        if (getEndIconDelegate().shouldTintIconOnError()) {
            tintEndIconOnError(this.textInputLayout.shouldShowError());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshEndIconDrawableState() {
        IconHelper.refreshIconDrawableState(this.textInputLayout, this.endIconView, this.endIconTintList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshErrorIconDrawableState() {
        IconHelper.refreshIconDrawableState(this.textInputLayout, this.errorIconView, this.errorIconTintList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshIconState(boolean z10) {
        boolean z11;
        boolean isActivated;
        boolean isChecked;
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        boolean z12 = true;
        if (endIconDelegate.isIconCheckable() && (isChecked = this.endIconView.isChecked()) != endIconDelegate.isIconChecked()) {
            this.endIconView.setChecked(!isChecked);
            z11 = true;
        } else {
            z11 = false;
        }
        if (endIconDelegate.isIconActivable() && (isActivated = this.endIconView.isActivated()) != endIconDelegate.isIconActivated()) {
            setEndIconActivated(!isActivated);
        } else {
            z12 = z11;
        }
        if (z10 || z12) {
            refreshEndIconDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeOnEndIconChangedListener(@NonNull TextInputLayout.OnEndIconChangedListener onEndIconChangedListener) {
        this.endIconChangedListeners.remove(onEndIconChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconActivated(boolean z10) {
        this.endIconView.setActivated(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconCheckable(boolean z10) {
        this.endIconView.setCheckable(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconContentDescription(@StringRes int i10) {
        setEndIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconDrawable(@DrawableRes int i10) {
        setEndIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconMinSize(@Px int i10) {
        if (i10 >= 0) {
            if (i10 != this.endIconMinSize) {
                this.endIconMinSize = i10;
                IconHelper.setIconMinSize(this.endIconView, i10);
                IconHelper.setIconMinSize(this.errorIconView, i10);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("endIconSize cannot be less than 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconMode(int i10) {
        boolean z10;
        if (this.endIconMode == i10) {
            return;
        }
        tearDownDelegate(getEndIconDelegate());
        int i11 = this.endIconMode;
        this.endIconMode = i10;
        dispatchOnEndIconChanged(i11);
        if (i10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        setEndIconVisible(z10);
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        setEndIconDrawable(getIconResId(endIconDelegate));
        setEndIconContentDescription(endIconDelegate.getIconContentDescriptionResId());
        setEndIconCheckable(endIconDelegate.isIconCheckable());
        if (endIconDelegate.isBoxBackgroundModeSupported(this.textInputLayout.getBoxBackgroundMode())) {
            setUpDelegate(endIconDelegate);
            setEndIconOnClickListener(endIconDelegate.getOnIconClickListener());
            EditText editText = this.editText;
            if (editText != null) {
                endIconDelegate.onEditTextAttached(editText);
                setOnFocusChangeListenersIfNeeded(endIconDelegate);
            }
            IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, this.endIconTintMode);
            refreshIconState(true);
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        IconHelper.setIconOnClickListener(this.endIconView, onClickListener, this.endIconOnLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.endIconOnLongClickListener = onLongClickListener;
        IconHelper.setIconOnLongClickListener(this.endIconView, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.endIconScaleType = scaleType;
        IconHelper.setIconScaleType(this.endIconView, scaleType);
        IconHelper.setIconScaleType(this.errorIconView, scaleType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.endIconTintList != colorStateList) {
            this.endIconTintList = colorStateList;
            IconHelper.applyIconTint(this.textInputLayout, this.endIconView, colorStateList, this.endIconTintMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.endIconTintMode != mode) {
            this.endIconTintMode = mode;
            IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconVisible(boolean z10) {
        int i10;
        if (isEndIconVisible() != z10) {
            CheckableImageButton checkableImageButton = this.endIconView;
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            checkableImageButton.setVisibility(i10);
            updateEndLayoutVisibility();
            updateSuffixTextViewPadding();
            this.textInputLayout.updateDummyDrawables();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconDrawable(@DrawableRes int i10) {
        setErrorIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
        refreshErrorIconDrawableState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        IconHelper.setIconOnClickListener(this.errorIconView, onClickListener, this.errorIconOnLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.errorIconOnLongClickListener = onLongClickListener;
        IconHelper.setIconOnLongClickListener(this.errorIconView, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.errorIconTintList != colorStateList) {
            this.errorIconTintList = colorStateList;
            IconHelper.applyIconTint(this.textInputLayout, this.errorIconView, colorStateList, this.errorIconTintMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.errorIconTintMode != mode) {
            this.errorIconTintMode = mode;
            IconHelper.applyIconTint(this.textInputLayout, this.errorIconView, this.errorIconTintList, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i10) {
        setPasswordVisibilityToggleContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i10) {
        setPasswordVisibilityToggleDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        if (z10 && this.endIconMode != 1) {
            setEndIconMode(1);
        } else if (!z10) {
            setEndIconMode(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.endIconTintList = colorStateList;
        IconHelper.applyIconTint(this.textInputLayout, this.endIconView, colorStateList, this.endIconTintMode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.endIconTintMode = mode;
        IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, mode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSuffixText(@Nullable CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        this.suffixText = charSequence2;
        this.suffixTextView.setText(charSequence);
        updateSuffixTextVisibility();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSuffixTextAppearance(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.suffixTextView, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.suffixTextView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void togglePasswordVisibilityToggle(boolean z10) {
        if (this.endIconMode == 1) {
            this.endIconView.performClick();
            if (z10) {
                this.endIconView.jumpDrawablesToCurrentState();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSuffixTextViewPadding() {
        int i10;
        if (this.textInputLayout.editText == null) {
            return;
        }
        if (!isEndIconVisible() && !isErrorIconVisible()) {
            i10 = ViewCompat.getPaddingEnd(this.textInputLayout.editText);
        } else {
            i10 = 0;
        }
        ViewCompat.setPaddingRelative(this.suffixTextView, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.textInputLayout.editText.getPaddingTop(), i10, this.textInputLayout.editText.getPaddingBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.endIconView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.endIconView.setImageDrawable(drawable);
        if (drawable != null) {
            IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, this.endIconTintMode);
            refreshEndIconDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.errorIconView.setImageDrawable(drawable);
        updateErrorIconVisibility();
        IconHelper.applyIconTint(this.textInputLayout, this.errorIconView, this.errorIconTintList, this.errorIconTintMode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.endIconView.setContentDescription(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.endIconView.setImageDrawable(drawable);
    }
}
