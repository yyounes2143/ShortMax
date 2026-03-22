package com.bytedance.sdk.openadsdk.multipro.tB;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.component.ba.oJ.ba;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex;
import java.util.Objects;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.openadsdk.multipro.oJ {
    private static String Pfn() {
        return ex.ZYk + "/t_frequent/";
    }

    public static boolean ZYk() {
        if (si.oJ() == null) {
            return false;
        }
        try {
            ba ex = ex();
            if (ex != null) {
                return "true".equals(ex.oJ(Uri.parse(Pfn() + "isSilent")));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static ba ex() {
        try {
            if (si.oJ() != null) {
                return com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String tB() {
        if (si.oJ() == null) {
            return null;
        }
        try {
            ba ex = ex();
            if (ex != null) {
                return ex.oJ(Uri.parse(Pfn() + "maxRit"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Cursor oJ(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Uri oJ(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    public static boolean oJ(String str) {
        if (si.oJ() == null) {
            return false;
        }
        try {
            ba ex = ex();
            if (ex != null) {
                return "true".equals(ex.oJ(Uri.parse(Pfn() + "checkFrequency?rit=" + str)));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    @NonNull
    public String oJ() {
        return "t_frequent";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ(@NonNull Uri uri) {
        Objects.toString(uri);
        String str = uri.getPath().split(DomExceptionUtils.SEPARATOR)[2];
        if ("checkFrequency".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.cFZ.oJ.oJ().oJ(uri.getQueryParameter("rit")) ? "true" : "false";
        } else if ("isSilent".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.cFZ.oJ.oJ().ZYk() ? "true" : "false";
        } else if ("maxRit".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.cFZ.oJ.oJ().tB();
        } else {
            return null;
        }
    }
}
