package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class MMKVContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static Uri f49487a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static Uri a(Context context) {
        String d10;
        Uri uri = f49487a;
        if (uri != null) {
            return uri;
        }
        if (context == null || (d10 = d(context)) == null) {
            return null;
        }
        Uri parse = Uri.parse("content://" + d10);
        f49487a = parse;
        return parse;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String b(@NonNull Context context, int i10) {
        if (i10 == Process.myPid()) {
            return a.a(context);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == i10) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        return "";
    }

    @NonNull
    private Bundle c(String str, int i10, int i11, String str2) throws RuntimeException {
        MMKV mmkvWithAshmemID = MMKV.mmkvWithAshmemID(getContext(), str, i10, i11, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(mmkvWithAshmemID);
        Log.i("MMKV", str + " fd = " + mmkvWithAshmemID.ashmemFD() + ", meta fd = " + mmkvWithAshmemID.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY", parcelableMMKV);
        return bundle;
    }

    @Nullable
    private static String d(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (providerInfo = packageManager.getProviderInfo(componentName, 0)) != null) {
                return providerInfo.authority;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (str.equals("mmkvFromAshmemID") && bundle != null) {
            try {
                return c(str2, bundle.getInt("KEY_SIZE"), bundle.getInt("KEY_MODE"), bundle.getString("KEY_CRYPT"));
            } catch (Exception e10) {
                Log.e("MMKV", e10.getMessage());
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (getContext() == null) {
            return false;
        }
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }
}
