package com.google.android.material.timepicker;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import com.startshorts.androidplayer.bean.subs.SubsSku;
/* loaded from: classes5.dex */
class TimePickerClockPresenter implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {
    private static final int DEGREES_PER_HOUR = 30;
    private static final int DEGREES_PER_MINUTE = 6;
    private boolean broadcasting = false;
    private float hourRotation;
    private float minuteRotation;
    private final TimeModel time;
    private final TimePickerView timePickerView;
    private static final String[] HOUR_CLOCK_VALUES = {"12", "1", "2", "3", "4", "5", SubsSku.SCENE_AD_2_PAY, "7", "8", "9", "10", "11"};
    private static final String[] HOUR_CLOCK_24_VALUES = {"00", "1", "2", "3", "4", "5", SubsSku.SCENE_AD_2_PAY, "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"};
    private static final String[] MINUTE_CLOCK_VALUES = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    public TimePickerClockPresenter(TimePickerView timePickerView, TimeModel timeModel) {
        this.timePickerView = timePickerView;
        this.time = timeModel;
        initialize();
    }

    private String[] getHourClockValues() {
        if (this.time.format == 1) {
            return HOUR_CLOCK_24_VALUES;
        }
        return HOUR_CLOCK_VALUES;
    }

    private int getHourRotation() {
        return (this.time.getHourForDisplay() * 30) % 360;
    }

    private void performHapticFeedback(int i10, int i11) {
        TimeModel timeModel = this.time;
        if (timeModel.minute != i11 || timeModel.hour != i10) {
            this.timePickerView.performHapticFeedback(4);
        }
    }

    private void updateCurrentLevel() {
        TimeModel timeModel = this.time;
        int i10 = 1;
        if (timeModel.selection == 10 && timeModel.format == 1 && timeModel.hour >= 12) {
            i10 = 2;
        }
        this.timePickerView.setCurrentLevel(i10);
    }

    private void updateTime() {
        TimePickerView timePickerView = this.timePickerView;
        TimeModel timeModel = this.time;
        timePickerView.updateTime(timeModel.period, timeModel.getHourForDisplay(), this.time.minute);
    }

    private void updateValues() {
        updateValues(HOUR_CLOCK_VALUES, TimeModel.NUMBER_FORMAT);
        updateValues(MINUTE_CLOCK_VALUES, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        if (this.time.format == 0) {
            this.timePickerView.showToggle();
        }
        this.timePickerView.addOnRotateListener(this);
        this.timePickerView.setOnSelectionChangeListener(this);
        this.timePickerView.setOnPeriodChangeListener(this);
        this.timePickerView.setOnActionUpListener(this);
        updateValues();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        this.hourRotation = getHourRotation();
        TimeModel timeModel = this.time;
        this.minuteRotation = timeModel.minute * 6;
        setSelection(timeModel.selection, false);
        updateTime();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f10, boolean z10) {
        this.broadcasting = true;
        TimeModel timeModel = this.time;
        int i10 = timeModel.minute;
        int i11 = timeModel.hour;
        if (timeModel.selection == 10) {
            this.timePickerView.setHandRotation(this.hourRotation, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.timePickerView.getContext(), AccessibilityManager.class);
            if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                setSelection(12, true);
            }
        } else {
            int round = Math.round(f10);
            if (!z10) {
                this.time.setMinute(((round + 15) / 30) * 5);
                this.minuteRotation = this.time.minute * 6;
            }
            this.timePickerView.setHandRotation(this.minuteRotation, z10);
        }
        this.broadcasting = false;
        updateTime();
        performHapticFeedback(i11, i10);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener
    public void onPeriodChange(int i10) {
        this.time.setPeriod(i10);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f10, boolean z10) {
        if (this.broadcasting) {
            return;
        }
        TimeModel timeModel = this.time;
        int i10 = timeModel.hour;
        int i11 = timeModel.minute;
        int round = Math.round(f10);
        TimeModel timeModel2 = this.time;
        if (timeModel2.selection == 12) {
            timeModel2.setMinute((round + 3) / 6);
            this.minuteRotation = (float) Math.floor(this.time.minute * 6);
        } else {
            int i12 = (round + 15) / 30;
            if (timeModel2.format == 1) {
                i12 %= 12;
                if (this.timePickerView.getCurrentLevel() == 2) {
                    i12 += 12;
                }
            }
            this.time.setHour(i12);
            this.hourRotation = getHourRotation();
        }
        if (!z10) {
            updateTime();
            performHapticFeedback(i10, i11);
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i10) {
        setSelection(i10, true);
    }

    void setSelection(int i10, boolean z10) {
        boolean z11;
        String[] hourClockValues;
        int hourContentDescriptionResId;
        float f10;
        if (i10 == 12) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.timePickerView.setAnimateOnTouchUp(z11);
        this.time.selection = i10;
        TimePickerView timePickerView = this.timePickerView;
        if (z11) {
            hourClockValues = MINUTE_CLOCK_VALUES;
        } else {
            hourClockValues = getHourClockValues();
        }
        if (z11) {
            hourContentDescriptionResId = R.string.material_minute_suffix;
        } else {
            hourContentDescriptionResId = this.time.getHourContentDescriptionResId();
        }
        timePickerView.setValues(hourClockValues, hourContentDescriptionResId);
        updateCurrentLevel();
        TimePickerView timePickerView2 = this.timePickerView;
        if (z11) {
            f10 = this.minuteRotation;
        } else {
            f10 = this.hourRotation;
        }
        timePickerView2.setHandRotation(f10, z10);
        this.timePickerView.setActiveSelection(i10);
        this.timePickerView.setMinuteHourDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.1
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(TimePickerClockPresenter.this.time.getHourContentDescriptionResId(), String.valueOf(TimePickerClockPresenter.this.time.getHourForDisplay())));
            }
        });
        this.timePickerView.setHourClickDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.2
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(TimePickerClockPresenter.this.time.minute)));
            }
        });
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
    }

    private void updateValues(String[] strArr, String str) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            strArr[i10] = TimeModel.formatText(this.timePickerView.getResources(), strArr[i10], str);
        }
    }
}
