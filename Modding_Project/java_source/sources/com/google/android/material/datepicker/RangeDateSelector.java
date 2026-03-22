package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Parcelable.Creator<RangeDateSelector>() { // from class: com.google.android.material.datepicker.RangeDateSelector.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.selectedStartItem = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.selectedEndItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public RangeDateSelector[] newArray(int i10) {
            return new RangeDateSelector[i10];
        }
    };
    @Nullable
    private CharSequence error;
    private String invalidRangeStartError;
    @Nullable
    private SimpleDateFormat textInputFormat;
    private final String invalidRangeEndError = " ";
    @Nullable
    private Long selectedStartItem = null;
    @Nullable
    private Long selectedEndItem = null;
    @Nullable
    private Long proposedTextStart = null;
    @Nullable
    private Long proposedTextEnd = null;

    private void clearInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.invalidRangeStartError.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
            textInputLayout2.setError(null);
        }
    }

    private boolean isValidRange(long j10, long j11) {
        if (j10 <= j11) {
            return true;
        }
        return false;
    }

    private void setInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.invalidRangeStartError);
        textInputLayout2.setError(" ");
    }

    private void updateError(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            this.error = textInputLayout.getError();
        } else if (!TextUtils.isEmpty(textInputLayout2.getError())) {
            this.error = textInputLayout2.getError();
        } else {
            this.error = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIfValidTextProposal(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull OnSelectionChangedListener<Pair<Long, Long>> onSelectionChangedListener) {
        Long l10 = this.proposedTextStart;
        if (l10 != null && this.proposedTextEnd != null) {
            if (isValidRange(l10.longValue(), this.proposedTextEnd.longValue())) {
                this.selectedStartItem = this.proposedTextStart;
                this.selectedEndItem = this.proposedTextEnd;
                onSelectionChangedListener.onSelectionChanged(getSelection());
            } else {
                setInvalidRange(textInputLayout, textInputLayout2);
                onSelectionChangedListener.onIncompleteSelectionChanged();
            }
        } else {
            clearInvalidRange(textInputLayout, textInputLayout2);
            onSelectionChangedListener.onIncompleteSelectionChanged();
        }
        updateError(textInputLayout, textInputLayout2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(@NonNull Context context) {
        int i10;
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis)) {
            i10 = R.attr.materialCalendarTheme;
        } else {
            i10 = R.attr.materialCalendarFullscreenTheme;
        }
        return MaterialAttributes.resolveOrThrow(context, i10, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public String getError() {
        if (TextUtils.isEmpty(this.error)) {
            return null;
        }
        return this.error.toString();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.selectedStartItem;
        if (l10 != null) {
            arrayList.add(l10);
        }
        Long l11 = this.selectedEndItem;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.selectedStartItem, this.selectedEndItem));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionContentDescription(@NonNull Context context) {
        String str;
        String str2;
        Resources resources = context.getResources();
        Pair<String, String> dateRangeString = DateStrings.getDateRangeString(this.selectedStartItem, this.selectedEndItem);
        String str3 = dateRangeString.first;
        if (str3 == null) {
            str = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            str = str3;
        }
        String str4 = dateRangeString.second;
        if (str4 == null) {
            str2 = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            str2 = str4;
        }
        return resources.getString(R.string.mtrl_picker_announce_current_range_selection, str, str2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.selectedStartItem;
        if (l10 == null && this.selectedEndItem == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l11 = this.selectedEndItem;
        if (l11 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, DateStrings.getDateString(l10.longValue()));
        }
        if (l10 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, DateStrings.getDateString(l11.longValue()));
        }
        Pair<String, String> dateRangeString = DateStrings.getDateRangeString(l10, l11);
        return resources.getString(R.string.mtrl_picker_range_header_selected, dateRangeString.first, dateRangeString.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l10 = this.selectedStartItem;
        if (l10 != null && this.selectedEndItem != null && isValidRange(l10.longValue(), this.selectedEndItem.longValue())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull final OnSelectionChangedListener<Pair<Long, Long>> onSelectionChangedListener) {
        String defaultTextInputHint;
        boolean z10 = false;
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.invalidRangeStartError = inflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormat = this.textInputFormat;
        if (simpleDateFormat != null) {
            z10 = true;
        }
        if (!z10) {
            simpleDateFormat = UtcDates.getDefaultTextInputFormat();
        }
        SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
        Long l10 = this.selectedStartItem;
        if (l10 != null) {
            editText.setText(simpleDateFormat2.format(l10));
            this.proposedTextStart = this.selectedStartItem;
        }
        Long l11 = this.selectedEndItem;
        if (l11 != null) {
            editText2.setText(simpleDateFormat2.format(l11));
            this.proposedTextEnd = this.selectedEndItem;
        }
        if (z10) {
            defaultTextInputHint = simpleDateFormat2.toPattern();
        } else {
            defaultTextInputHint = UtcDates.getDefaultTextInputHint(inflate.getResources(), simpleDateFormat2);
        }
        String str = defaultTextInputHint;
        textInputLayout.setPlaceholderText(str);
        textInputLayout2.setPlaceholderText(str);
        editText.addTextChangedListener(new DateFormatTextWatcher(str, simpleDateFormat2, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onInvalidDate() {
                RangeDateSelector.this.proposedTextStart = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onValidDate(@Nullable Long l12) {
                RangeDateSelector.this.proposedTextStart = l12;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        editText2.addTextChangedListener(new DateFormatTextWatcher(str, simpleDateFormat2, textInputLayout2, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.2
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onInvalidDate() {
                RangeDateSelector.this.proposedTextEnd = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            void onValidDate(@Nullable Long l12) {
                RangeDateSelector.this.proposedTextEnd = l12;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        DateSelector.showKeyboardWithAutoHideBehavior(editText, editText2);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j10) {
        Long l10 = this.selectedStartItem;
        if (l10 == null) {
            this.selectedStartItem = Long.valueOf(j10);
        } else if (this.selectedEndItem == null && isValidRange(l10.longValue(), j10)) {
            this.selectedEndItem = Long.valueOf(j10);
        } else {
            this.selectedEndItem = null;
            this.selectedStartItem = Long.valueOf(j10);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setTextInputFormat(@Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) UtcDates.getNormalizedFormat(simpleDateFormat);
        }
        this.textInputFormat = simpleDateFormat;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.selectedStartItem);
        parcel.writeValue(this.selectedEndItem);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Pair<Long, Long> getSelection() {
        return new Pair<>(this.selectedStartItem, this.selectedEndItem);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(@NonNull Pair<Long, Long> pair) {
        Long l10 = pair.first;
        if (l10 != null && pair.second != null) {
            Preconditions.checkArgument(isValidRange(l10.longValue(), pair.second.longValue()));
        }
        Long l11 = pair.first;
        this.selectedStartItem = l11 == null ? null : Long.valueOf(UtcDates.canonicalYearMonthDay(l11.longValue()));
        Long l12 = pair.second;
        this.selectedEndItem = l12 != null ? Long.valueOf(UtcDates.canonicalYearMonthDay(l12.longValue())) : null;
    }
}
