package com.bytedance.sdk.openadsdk.ex.oJ;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
/* loaded from: classes3.dex */
public class Pfn implements com.bytedance.sdk.openadsdk.multipro.oJ {
    private final com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk oJ;

    public Pfn(com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk) {
        this.oJ = zYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ() {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.tB();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ(Uri uri) {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ(uri);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Cursor oJ(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Uri oJ(Uri uri, ContentValues contentValues) {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ(uri, contentValues);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(Uri uri, String str, String[] strArr) {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk zYk = this.oJ;
        if (zYk != null) {
            return zYk.oJ(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
