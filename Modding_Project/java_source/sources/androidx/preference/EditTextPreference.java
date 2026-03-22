package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.Preference;
/* loaded from: classes2.dex */
public class EditTextPreference extends DialogPreference {
    @Nullable
    private OnBindEditTextListener mOnBindEditTextListener;
    private String mText;

    /* loaded from: classes2.dex */
    public interface OnBindEditTextListener {
        void onBindEditText(@NonNull EditText editText);
    }

    /* loaded from: classes2.dex */
    public static final class SimpleSummaryProvider implements Preference.SummaryProvider<EditTextPreference> {
        private static SimpleSummaryProvider sSimpleSummaryProvider;

        private SimpleSummaryProvider() {
        }

        public static SimpleSummaryProvider getInstance() {
            if (sSimpleSummaryProvider == null) {
                sSimpleSummaryProvider = new SimpleSummaryProvider();
            }
            return sSimpleSummaryProvider;
        }

        @Override // androidx.preference.Preference.SummaryProvider
        public CharSequence provideSummary(EditTextPreference editTextPreference) {
            if (TextUtils.isEmpty(editTextPreference.getText())) {
                return editTextPreference.getContext().getString(R.string.not_set);
            }
            return editTextPreference.getText();
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EditTextPreference, i10, i11);
        int i12 = R.styleable.EditTextPreference_useSimpleSummaryProvider;
        if (TypedArrayUtils.getBoolean(obtainStyledAttributes, i12, i12, false)) {
            setSummaryProvider(SimpleSummaryProvider.getInstance());
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public OnBindEditTextListener getOnBindEditTextListener() {
        return this.mOnBindEditTextListener;
    }

    public String getText() {
        return this.mText;
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(SavedState.class)) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            setText(savedState.mText);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mText = getText();
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setText(getPersistedString((String) obj));
    }

    public void setOnBindEditTextListener(@Nullable OnBindEditTextListener onBindEditTextListener) {
        this.mOnBindEditTextListener = onBindEditTextListener;
    }

    public void setText(String str) {
        boolean shouldDisableDependents = shouldDisableDependents();
        this.mText = str;
        persistString(str);
        boolean shouldDisableDependents2 = shouldDisableDependents();
        if (shouldDisableDependents2 != shouldDisableDependents) {
            notifyDependencyChange(shouldDisableDependents2);
        }
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        if (!TextUtils.isEmpty(this.mText) && !super.shouldDisableDependents()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.EditTextPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        String mText;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mText = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mText);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, R.attr.editTextPreferenceStyle, 16842898));
    }

    public EditTextPreference(Context context) {
        this(context, null);
    }
}
