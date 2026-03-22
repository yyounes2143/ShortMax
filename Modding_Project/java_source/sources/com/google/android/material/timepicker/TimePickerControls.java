package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes5.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ClockPeriod {
    }

    void setActiveSelection(int i10);

    void setHandRotation(float f10);

    void setValues(String[] strArr, @StringRes int i10);

    void updateTime(int i10, int i11, @IntRange(from = 0) int i12);
}
