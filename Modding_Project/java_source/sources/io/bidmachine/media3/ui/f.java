package io.bidmachine.media3.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HtmlUtils.java */
/* loaded from: classes8.dex */
public final class f {
    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }

    public static String b(@ColorInt int i10) {
        return cn.m0.G("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i10)), Integer.valueOf(Color.green(i10)), Integer.valueOf(Color.blue(i10)), Double.valueOf(Color.alpha(i10) / 255.0d));
    }
}
