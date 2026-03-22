package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes5.dex */
public class PreJava9DateFormatProvider {
    private PreJava9DateFormatProvider() {
    }

    private static String getDatePartOfDateTimePattern(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return "M/d/yy";
                    }
                    throw new IllegalArgumentException("Unknown DateFormat style: " + i10);
                }
                return "MMM d, yyyy";
            }
            return "MMMM d, yyyy";
        }
        return "EEEE, MMMM d, yyyy";
    }

    private static String getTimePartOfDateTimePattern(int i10) {
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "h:mm a";
                }
                throw new IllegalArgumentException("Unknown DateFormat style: " + i10);
            }
            return "h:mm:ss a";
        }
        return "h:mm:ss a z";
    }

    public static DateFormat getUsDateTimeFormat(int i10, int i11) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i10) + " " + getTimePartOfDateTimePattern(i11), Locale.US);
    }
}
