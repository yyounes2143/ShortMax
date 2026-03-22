package com.bytedance.sdk.openadsdk.multipro.oJ;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.openadsdk.core.Pfn;
import com.bytedance.sdk.openadsdk.core.si;
/* loaded from: classes3.dex */
public class ZYk implements com.bytedance.sdk.openadsdk.multipro.oJ {
    private static final Object ZYk = new Object();
    private Context oJ;

    private boolean ZYk(Uri uri) {
        return uri == null || TextUtils.isEmpty(uri.getPath());
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    @NonNull
    public String oJ() {
        return "t_db";
    }

    private Context ZYk() {
        Context context = this.oJ;
        return context == null ? si.oJ() : context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Cursor oJ(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        synchronized (ZYk) {
            try {
                if (ZYk(uri)) {
                    return null;
                }
                String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
                if (split != null && split.length >= 4) {
                    String str3 = split[2];
                    String str4 = split[3];
                    if ("ttopensdk.db".equals(str3)) {
                        return Pfn.oJ(ZYk()).oJ().oJ(str4, strArr, str, strArr2, null, null, str2);
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ(@NonNull Uri uri) {
        synchronized (ZYk) {
            try {
                if (ZYk(uri)) {
                    return null;
                }
                String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
                if (split != null && split.length >= 5) {
                    String str = split[2];
                    String str2 = split[4];
                    if ("ttopensdk.db".equals(str)) {
                        if ("execSQL".equals(str2)) {
                            String queryParameter = uri.getQueryParameter("sql");
                            if (!TextUtils.isEmpty(queryParameter)) {
                                Pfn.oJ(ZYk()).oJ().oJ(Uri.decode(queryParameter));
                            }
                        } else if ("transactionBegin".equals(str2)) {
                            Pfn.oJ(ZYk()).oJ().ZYk();
                        } else if ("transactionSetSuccess".equals(str2)) {
                            Pfn.oJ(ZYk()).oJ().tB();
                        } else if ("transactionEnd".equals(str2)) {
                            Pfn.oJ(ZYk()).oJ().ex();
                        }
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Uri oJ(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        synchronized (ZYk) {
            try {
                if (ZYk(uri)) {
                    return null;
                }
                String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
                if (split != null && split.length >= 4) {
                    String str = split[2];
                    String str2 = split[3];
                    if ("ttopensdk.db".equals(str)) {
                        Pfn.oJ(ZYk()).oJ().oJ(str2, (String) null, contentValues);
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        synchronized (ZYk) {
            try {
                if (ZYk(uri)) {
                    return 0;
                }
                String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
                if (split != null && split.length >= 4) {
                    String str2 = split[2];
                    String str3 = split[3];
                    if ("ttopensdk.db".equals(str2)) {
                        return Pfn.oJ(ZYk()).oJ().oJ(str3, str, strArr);
                    }
                    return 0;
                }
                return 0;
            } finally {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        synchronized (ZYk) {
            try {
                if (ZYk(uri)) {
                    return 0;
                }
                String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
                if (split != null && split.length >= 4) {
                    String str2 = split[2];
                    String str3 = split[3];
                    if ("ttopensdk.db".equals(str2)) {
                        return Pfn.oJ(ZYk()).oJ().oJ(str3, contentValues, str, strArr);
                    }
                    return 0;
                }
                return 0;
            } finally {
            }
        }
    }
}
