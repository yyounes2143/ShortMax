package com.google.android.exoplayer2.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
/* compiled from: HtmlUtils.java */
/* loaded from: classes4.dex */
final class g {
    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }

    public static String b(@ColorInt int i10) {
        return b7.s0.z("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i10)), Integer.valueOf(Color.green(i10)), Integer.valueOf(Color.blue(i10)), Double.valueOf(Color.alpha(i10) / 255.0d));
    }
}
