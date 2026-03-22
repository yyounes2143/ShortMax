package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.content.ContentValues;
import android.net.Uri;
import com.bytedance.sdk.component.ba.oJ.ba;
import com.bytedance.sdk.openadsdk.core.settings.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.Map;
/* loaded from: classes3.dex */
public class ba extends ba.oJ {
    private static volatile ba oJ;

    public static ba ZYk() {
        if (oJ == null) {
            synchronized (ba.class) {
                try {
                    if (oJ == null) {
                        oJ = new ba();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba
    public Map oJ(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (jFA.oJ()) {
            try {
                return com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.multipro.Pfn.oJ(si.oJ()).oJ(uri, strArr, str, strArr2, str2));
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba
    public String oJ(Uri uri) {
        if (jFA.oJ()) {
            return com.bytedance.sdk.openadsdk.multipro.Pfn.oJ(si.oJ()).oJ(uri);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba
    public String oJ(Uri uri, ContentValues contentValues) {
        Uri oJ2;
        if (jFA.oJ() && (oJ2 = com.bytedance.sdk.openadsdk.multipro.Pfn.oJ(si.oJ()).oJ(uri, contentValues)) != null) {
            return oJ2.toString();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba
    public int oJ(Uri uri, String str, String[] strArr) {
        if (jFA.oJ()) {
            return com.bytedance.sdk.openadsdk.multipro.Pfn.oJ(si.oJ()).oJ(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba
    public int oJ(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (jFA.oJ()) {
            return com.bytedance.sdk.openadsdk.multipro.Pfn.oJ(si.oJ()).oJ(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
