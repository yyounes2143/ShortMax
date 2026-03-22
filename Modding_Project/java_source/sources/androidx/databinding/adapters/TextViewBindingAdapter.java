package androidx.databinding.adapters;

import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.method.DialerKeyListener;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.library.baseAdapters.R;
@BindingMethods({@BindingMethod(attribute = "android:autoLink", method = "setAutoLinkMask", type = TextView.class), @BindingMethod(attribute = "android:drawablePadding", method = "setCompoundDrawablePadding", type = TextView.class), @BindingMethod(attribute = "android:editorExtras", method = "setInputExtras", type = TextView.class), @BindingMethod(attribute = "android:inputType", method = "setRawInputType", type = TextView.class), @BindingMethod(attribute = "android:scrollHorizontally", method = "setHorizontallyScrolling", type = TextView.class), @BindingMethod(attribute = "android:textAllCaps", method = "setAllCaps", type = TextView.class), @BindingMethod(attribute = "android:textColorHighlight", method = "setHighlightColor", type = TextView.class), @BindingMethod(attribute = "android:textColorHint", method = "setHintTextColor", type = TextView.class), @BindingMethod(attribute = "android:textColorLink", method = "setLinkTextColor", type = TextView.class), @BindingMethod(attribute = "android:onEditorAction", method = "setOnEditorActionListener", type = TextView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class TextViewBindingAdapter {
    public static final int DECIMAL = 5;
    public static final int INTEGER = 1;
    public static final int SIGNED = 3;
    private static final String TAG = "TextViewBindingAdapters";

    /* loaded from: classes2.dex */
    public interface AfterTextChanged {
        void afterTextChanged(Editable editable);
    }

    /* loaded from: classes2.dex */
    public interface BeforeTextChanged {
        void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12);
    }

    /* loaded from: classes2.dex */
    public interface OnTextChanged {
        void onTextChanged(CharSequence charSequence, int i10, int i11, int i12);
    }

    @InverseBindingAdapter(attribute = "android:text", event = "android:textAttrChanged")
    public static String getTextString(TextView textView) {
        return textView.getText().toString();
    }

    private static boolean haveContentsChanged(CharSequence charSequence, CharSequence charSequence2) {
        boolean z10;
        boolean z11;
        if (charSequence == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (charSequence2 == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 != z11) {
            return true;
        }
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        if (length != charSequence2.length()) {
            return true;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (charSequence.charAt(i10) != charSequence2.charAt(i10)) {
                return true;
            }
        }
        return false;
    }

    @BindingAdapter({"android:autoText"})
    public static void setAutoText(TextView textView, boolean z10) {
        int i10;
        KeyListener keyListener = textView.getKeyListener();
        TextKeyListener.Capitalize capitalize = TextKeyListener.Capitalize.NONE;
        if (keyListener != null) {
            i10 = keyListener.getInputType();
        } else {
            i10 = 0;
        }
        if ((i10 & 4096) != 0) {
            capitalize = TextKeyListener.Capitalize.CHARACTERS;
        } else if ((i10 & 8192) != 0) {
            capitalize = TextKeyListener.Capitalize.WORDS;
        } else if ((i10 & 16384) != 0) {
            capitalize = TextKeyListener.Capitalize.SENTENCES;
        }
        textView.setKeyListener(TextKeyListener.getInstance(z10, capitalize));
    }

    @BindingAdapter({"android:bufferType"})
    public static void setBufferType(TextView textView, TextView.BufferType bufferType) {
        textView.setText(textView.getText(), bufferType);
    }

    @BindingAdapter({"android:capitalize"})
    public static void setCapitalize(TextView textView, TextKeyListener.Capitalize capitalize) {
        boolean z10;
        if ((textView.getKeyListener().getInputType() & 32768) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        textView.setKeyListener(TextKeyListener.getInstance(z10, capitalize));
    }

    @BindingAdapter({"android:digits"})
    public static void setDigits(TextView textView, CharSequence charSequence) {
        if (charSequence != null) {
            textView.setKeyListener(DigitsKeyListener.getInstance(charSequence.toString()));
        } else if (textView.getKeyListener() instanceof DigitsKeyListener) {
            textView.setKeyListener(null);
        }
    }

    @BindingAdapter({"android:drawableBottom"})
    public static void setDrawableBottom(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], drawable);
    }

    @BindingAdapter({"android:drawableEnd"})
    public static void setDrawableEnd(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        textView.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], drawable, compoundDrawablesRelative[3]);
    }

    @BindingAdapter({"android:drawableLeft"})
    public static void setDrawableLeft(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(drawable, compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
    }

    @BindingAdapter({"android:drawableRight"})
    public static void setDrawableRight(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], drawable, compoundDrawables[3]);
    }

    @BindingAdapter({"android:drawableStart"})
    public static void setDrawableStart(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        textView.setCompoundDrawablesRelative(drawable, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
    }

    @BindingAdapter({"android:drawableTop"})
    public static void setDrawableTop(TextView textView, Drawable drawable) {
        setIntrinsicBounds(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], drawable, compoundDrawables[2], compoundDrawables[3]);
    }

    @BindingAdapter({"android:imeActionLabel"})
    public static void setImeActionLabel(TextView textView, CharSequence charSequence) {
        textView.setImeActionLabel(charSequence, textView.getImeActionId());
    }

    @BindingAdapter({"android:inputMethod"})
    public static void setInputMethod(TextView textView, CharSequence charSequence) {
        try {
            textView.setKeyListener((KeyListener) Class.forName(charSequence.toString()).newInstance());
        } catch (ClassNotFoundException e10) {
            Log.e(TAG, "Could not create input method: " + ((Object) charSequence), e10);
        } catch (IllegalAccessException e11) {
            Log.e(TAG, "Could not create input method: " + ((Object) charSequence), e11);
        } catch (InstantiationException e12) {
            Log.e(TAG, "Could not create input method: " + ((Object) charSequence), e12);
        }
    }

    private static void setIntrinsicBounds(Drawable drawable) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    @BindingAdapter({"android:lineSpacingExtra"})
    public static void setLineSpacingExtra(TextView textView, float f10) {
        textView.setLineSpacing(f10, textView.getLineSpacingMultiplier());
    }

    @BindingAdapter({"android:lineSpacingMultiplier"})
    public static void setLineSpacingMultiplier(TextView textView, float f10) {
        textView.setLineSpacing(textView.getLineSpacingExtra(), f10);
    }

    @BindingAdapter({"android:maxLength"})
    public static void setMaxLength(TextView textView, int i10) {
        InputFilter[] filters = textView.getFilters();
        if (filters != null) {
            int i11 = 0;
            while (true) {
                if (i11 < filters.length) {
                    InputFilter inputFilter = filters[i11];
                    if (inputFilter instanceof InputFilter.LengthFilter) {
                        if (((InputFilter.LengthFilter) inputFilter).getMax() != i10) {
                            filters[i11] = new InputFilter.LengthFilter(i10);
                        }
                    } else {
                        i11++;
                    }
                } else {
                    int length = filters.length;
                    InputFilter[] inputFilterArr = new InputFilter[length + 1];
                    System.arraycopy(filters, 0, inputFilterArr, 0, filters.length);
                    inputFilterArr[length] = new InputFilter.LengthFilter(i10);
                    filters = inputFilterArr;
                    break;
                }
            }
        } else {
            filters = new InputFilter[]{new InputFilter.LengthFilter(i10)};
        }
        textView.setFilters(filters);
    }

    @BindingAdapter({"android:numeric"})
    public static void setNumeric(TextView textView, int i10) {
        boolean z10;
        boolean z11 = false;
        if ((i10 & 3) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((i10 & 5) != 0) {
            z11 = true;
        }
        textView.setKeyListener(DigitsKeyListener.getInstance(z10, z11));
    }

    @BindingAdapter({"android:password"})
    public static void setPassword(TextView textView, boolean z10) {
        if (z10) {
            textView.setTransformationMethod(PasswordTransformationMethod.getInstance());
        } else if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textView.setTransformationMethod(null);
        }
    }

    @BindingAdapter({"android:phoneNumber"})
    public static void setPhoneNumber(TextView textView, boolean z10) {
        if (z10) {
            textView.setKeyListener(DialerKeyListener.getInstance());
        } else if (textView.getKeyListener() instanceof DialerKeyListener) {
            textView.setKeyListener(null);
        }
    }

    @BindingAdapter({"android:shadowColor"})
    public static void setShadowColor(TextView textView, int i10) {
        textView.setShadowLayer(textView.getShadowRadius(), textView.getShadowDx(), textView.getShadowDy(), i10);
    }

    @BindingAdapter({"android:shadowDx"})
    public static void setShadowDx(TextView textView, float f10) {
        int shadowColor = textView.getShadowColor();
        textView.setShadowLayer(textView.getShadowRadius(), f10, textView.getShadowDy(), shadowColor);
    }

    @BindingAdapter({"android:shadowDy"})
    public static void setShadowDy(TextView textView, float f10) {
        int shadowColor = textView.getShadowColor();
        textView.setShadowLayer(textView.getShadowRadius(), textView.getShadowDx(), f10, shadowColor);
    }

    @BindingAdapter({"android:shadowRadius"})
    public static void setShadowRadius(TextView textView, float f10) {
        textView.setShadowLayer(f10, textView.getShadowDx(), textView.getShadowDy(), textView.getShadowColor());
    }

    @BindingAdapter({"android:text"})
    public static void setText(TextView textView, CharSequence charSequence) {
        CharSequence text = textView.getText();
        if (charSequence != text) {
            if (charSequence != null || text.length() != 0) {
                if (charSequence instanceof Spanned) {
                    if (charSequence.equals(text)) {
                        return;
                    }
                } else if (!haveContentsChanged(charSequence, text)) {
                    return;
                }
                textView.setText(charSequence);
            }
        }
    }

    @BindingAdapter({"android:textSize"})
    public static void setTextSize(TextView textView, float f10) {
        textView.setTextSize(0, f10);
    }

    @BindingAdapter(requireAll = false, value = {"android:beforeTextChanged", "android:onTextChanged", "android:afterTextChanged", "android:textAttrChanged"})
    public static void setTextWatcher(TextView textView, final BeforeTextChanged beforeTextChanged, final OnTextChanged onTextChanged, final AfterTextChanged afterTextChanged, final InverseBindingListener inverseBindingListener) {
        TextWatcher textWatcher;
        if (beforeTextChanged == null && afterTextChanged == null && onTextChanged == null && inverseBindingListener == null) {
            textWatcher = null;
        } else {
            textWatcher = new TextWatcher() { // from class: androidx.databinding.adapters.TextViewBindingAdapter.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    AfterTextChanged afterTextChanged2 = afterTextChanged;
                    if (afterTextChanged2 != null) {
                        afterTextChanged2.afterTextChanged(editable);
                    }
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    BeforeTextChanged beforeTextChanged2 = BeforeTextChanged.this;
                    if (beforeTextChanged2 != null) {
                        beforeTextChanged2.beforeTextChanged(charSequence, i10, i11, i12);
                    }
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    OnTextChanged onTextChanged2 = onTextChanged;
                    if (onTextChanged2 != null) {
                        onTextChanged2.onTextChanged(charSequence, i10, i11, i12);
                    }
                    InverseBindingListener inverseBindingListener2 = inverseBindingListener;
                    if (inverseBindingListener2 != null) {
                        inverseBindingListener2.onChange();
                    }
                }
            };
        }
        TextWatcher textWatcher2 = (TextWatcher) ListenerUtil.trackListener(textView, textWatcher, R.id.textWatcher);
        if (textWatcher2 != null) {
            textView.removeTextChangedListener(textWatcher2);
        }
        if (textWatcher != null) {
            textView.addTextChangedListener(textWatcher);
        }
    }

    @BindingAdapter({"android:imeActionId"})
    public static void setImeActionLabel(TextView textView, int i10) {
        textView.setImeActionLabel(textView.getImeActionLabel(), i10);
    }
}
