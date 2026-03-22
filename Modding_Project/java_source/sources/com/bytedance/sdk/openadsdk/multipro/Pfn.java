package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn implements oJ {
    private static WeakReference<Context> ZYk;
    private static volatile Pfn oJ;
    private static final List<oJ> tB;

    static {
        List<oJ> synchronizedList = Collections.synchronizedList(new ArrayList());
        tB = synchronizedList;
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.ex.tB());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.oJ.ZYk());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.tB.oJ());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.ex.oJ.Pfn(new com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk()));
        Iterator<oJ> it = synchronizedList.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    private Pfn() {
    }

    private oJ ZYk(Uri uri) {
        if (uri == null || !tB(uri)) {
            return null;
        }
        String[] split = uri.getPath().split(DomExceptionUtils.SEPARATOR);
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (oJ oJVar : tB) {
            if (str.equals(oJVar.oJ())) {
                return oJVar;
            }
        }
        return null;
    }

    public static Pfn oJ(Context context) {
        if (context != null) {
            ZYk = new WeakReference<>(context.getApplicationContext());
        }
        if (oJ == null) {
            synchronized (Pfn.class) {
                try {
                    if (oJ == null) {
                        oJ = new Pfn();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    private boolean tB(Uri uri) {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    @NonNull
    public String oJ() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Cursor oJ(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        try {
            oJ ZYk2 = ZYk(uri);
            if (ZYk2 != null) {
                return ZYk2.oJ(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public String oJ(@NonNull Uri uri) {
        try {
            oJ ZYk2 = ZYk(uri);
            if (ZYk2 != null) {
                return ZYk2.oJ(uri);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public Uri oJ(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        try {
            oJ ZYk2 = ZYk(uri);
            if (ZYk2 != null) {
                return ZYk2.oJ(uri, contentValues);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        try {
            oJ ZYk2 = ZYk(uri);
            if (ZYk2 != null) {
                return ZYk2.oJ(uri, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.oJ
    public int oJ(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        try {
            oJ ZYk2 = ZYk(uri);
            if (ZYk2 != null) {
                return ZYk2.oJ(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }
}
