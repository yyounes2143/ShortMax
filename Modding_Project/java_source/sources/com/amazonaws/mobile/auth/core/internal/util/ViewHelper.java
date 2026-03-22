package com.amazonaws.mobile.auth.core.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
/* loaded from: classes2.dex */
public final class ViewHelper {
    public static void a(Activity activity, String str, String str2) {
        if (activity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setNeutralButton(17039370, (DialogInterface.OnClickListener) null);
        builder.show();
    }
}
