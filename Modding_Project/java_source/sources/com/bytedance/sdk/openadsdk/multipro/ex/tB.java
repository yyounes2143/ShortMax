package com.bytedance.sdk.openadsdk.multipro.ex;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.openadsdk.core.si;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes3.dex */
public class tB implements com.bytedance.sdk.openadsdk.multipro.oJ {
    private Context oJ;

    private Context ZYk() {
        Context context = this.oJ;
        if (context == null) {
            return si.oJ();
        }
        return context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    @NonNull
    public String oJ() {
        return "t_sp";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Cursor oJ(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        Map<String, ?> tB;
        if (!uri.getPath().split(DomExceptionUtils.SEPARATOR)[2].equals("get_all") || (tB = ZYk.tB(ZYk(), uri.getQueryParameter("sp_file_name"))) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"cursor_name", "cursor_type", "cursor_value"});
        for (String str3 : tB.keySet()) {
            Object[] objArr = new Object[3];
            objArr[0] = str3;
            Object obj = tB.get(str3);
            objArr[2] = obj;
            if (obj instanceof Boolean) {
                objArr[1] = TypedValues.Custom.S_BOOLEAN;
            } else if (obj instanceof String) {
                objArr[1] = TypedValues.Custom.S_STRING;
            } else if (obj instanceof Integer) {
                objArr[1] = "int";
            } else if (obj instanceof Long) {
                objArr[1] = Constants.LONG;
            } else if (obj instanceof Float) {
                objArr[1] = TypedValues.Custom.S_FLOAT;
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ(@NonNull Uri uri) {
        String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
        String str = split[2];
        String str2 = split[3];
        if (str.equals("contain")) {
            return String.valueOf(ZYk.oJ(si.oJ(), uri.getQueryParameter("sp_file_name"), str2));
        }
        return ZYk.oJ(ZYk(), uri.getQueryParameter("sp_file_name"), str2, str);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Uri oJ(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        String str = uri.getPath().split(DomExceptionUtils.SEPARATOR)[3];
        Object obj = contentValues.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (obj != null) {
            ZYk.oJ(ZYk(), uri.getQueryParameter("sp_file_name"), str, obj);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
        if (split[2].equals("clean")) {
            ZYk.ZYk(ZYk(), uri.getQueryParameter("sp_file_name"));
            return 0;
        }
        String str2 = split[3];
        if (ZYk.oJ(ZYk(), uri.getQueryParameter("sp_file_name"), str2)) {
            ZYk.ZYk(ZYk(), uri.getQueryParameter("sp_file_name"), str2);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        if (contentValues == null) {
            return 0;
        }
        oJ(uri, contentValues);
        return 0;
    }
}
