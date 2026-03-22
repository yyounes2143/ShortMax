package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes3.dex */
public class tB {
    public static void oJ(Context context, String str, ContentValues contentValues) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                oJ.oJ(context).oJ().oJ(str, (String) null, contentValues);
            } catch (Throwable unused) {
            }
        }
    }

    public static void oJ(Context context, String str, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (list != null && !TextUtils.isEmpty(str)) {
            try {
                oJ.oJ(context).oJ().oJ(str, (String) null, list);
            } catch (Throwable unused) {
            }
        }
    }

    public static int oJ(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return oJ.oJ(context).oJ().oJ(str, str2, strArr);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static int oJ(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                return oJ.oJ(context).oJ().oJ(str, contentValues, str2, strArr);
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static Cursor oJ(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return oJ.oJ(context).oJ().oJ(str, strArr, str2, strArr2, null, null, str5);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void oJ(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            oJ.oJ(context).oJ().oJ(Uri.decode(str));
        } catch (Throwable unused) {
        }
    }
}
