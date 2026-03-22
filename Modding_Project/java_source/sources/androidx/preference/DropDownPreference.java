package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class DropDownPreference extends ListPreference {
    private final ArrayAdapter mAdapter;
    private final Context mContext;
    private final AdapterView.OnItemSelectedListener mItemSelectedListener;
    private Spinner mSpinner;

    public DropDownPreference(Context context) {
        this(context, null);
    }

    private int findSpinnerIndexOfValue(String str) {
        CharSequence[] entryValues = getEntryValues();
        if (str != null && entryValues != null) {
            for (int length = entryValues.length - 1; length >= 0; length--) {
                if (entryValues[length].equals(str)) {
                    return length;
                }
            }
            return -1;
        }
        return -1;
    }

    private void updateEntries() {
        this.mAdapter.clear();
        if (getEntries() != null) {
            for (CharSequence charSequence : getEntries()) {
                this.mAdapter.add(charSequence.toString());
            }
        }
    }

    protected ArrayAdapter createAdapter() {
        return new ArrayAdapter(this.mContext, 17367049);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.mAdapter;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        Spinner spinner = (Spinner) preferenceViewHolder.itemView.findViewById(R.id.spinner);
        this.mSpinner = spinner;
        spinner.setAdapter((SpinnerAdapter) this.mAdapter);
        this.mSpinner.setOnItemSelectedListener(this.mItemSelectedListener);
        this.mSpinner.setSelection(findSpinnerIndexOfValue(getValue()));
        super.onBindViewHolder(preferenceViewHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public void onClick() {
        this.mSpinner.performClick();
    }

    @Override // androidx.preference.ListPreference
    public void setEntries(@NonNull CharSequence[] charSequenceArr) {
        super.setEntries(charSequenceArr);
        updateEntries();
    }

    @Override // androidx.preference.ListPreference
    public void setValueIndex(int i10) {
        setValue(getEntryValues()[i10].toString());
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dropdownPreferenceStyle);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.preference.DropDownPreference.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i12, long j10) {
                if (i12 >= 0) {
                    String charSequence = DropDownPreference.this.getEntryValues()[i12].toString();
                    if (!charSequence.equals(DropDownPreference.this.getValue()) && DropDownPreference.this.callChangeListener(charSequence)) {
                        DropDownPreference.this.setValue(charSequence);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.mContext = context;
        this.mAdapter = createAdapter();
        updateEntries();
    }
}
