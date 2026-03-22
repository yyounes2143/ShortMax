package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.res.TypedArrayUtils;
/* loaded from: classes2.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    private final Listener mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Listener implements CompoundButton.OnCheckedChangeListener {
        Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!SwitchPreferenceCompat.this.callChangeListener(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                SwitchPreferenceCompat.this.setChecked(z10);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreferenceCompat, i10, i11);
        setSummaryOn(TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOn, R.styleable.SwitchPreferenceCompat_android_summaryOn));
        setSummaryOff(TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOff, R.styleable.SwitchPreferenceCompat_android_summaryOff));
        setSwitchTextOn(TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOn, R.styleable.SwitchPreferenceCompat_android_switchTextOn));
        setSwitchTextOff(TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOff, R.styleable.SwitchPreferenceCompat_android_switchTextOff));
        setDisableDependentsState(TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.SwitchPreferenceCompat_disableDependentsState, R.styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        obtainStyledAttributes.recycle();
    }

    private void syncSwitchView(View view) {
        boolean z10 = view instanceof SwitchCompat;
        if (z10) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z10) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.mSwitchOn);
            switchCompat.setTextOff(this.mSwitchOff);
            switchCompat.setOnCheckedChangeListener(this.mListener);
        }
    }

    private void syncViewIfAccessibilityEnabled(View view) {
        if (!((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        syncSwitchView(view.findViewById(R.id.switchWidget));
        syncSummaryView(view.findViewById(16908304));
    }

    public CharSequence getSwitchTextOff() {
        return this.mSwitchOff;
    }

    public CharSequence getSwitchTextOn() {
        return this.mSwitchOn;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        syncSwitchView(preferenceViewHolder.findViewById(R.id.switchWidget));
        syncSummaryView(preferenceViewHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void performClick(View view) {
        super.performClick(view);
        syncViewIfAccessibilityEnabled(view);
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOff(int i10) {
        setSwitchTextOff(getContext().getString(i10));
    }

    public void setSwitchTextOn(int i10) {
        setSwitchTextOn(getContext().getString(i10));
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceCompatStyle);
    }

    public SwitchPreferenceCompat(Context context) {
        this(context, null);
    }
}
