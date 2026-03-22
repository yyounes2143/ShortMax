package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public interface oJ {
    int oJ(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr);

    int oJ(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr);

    Cursor oJ(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2);

    Uri oJ(@NonNull Uri uri, @Nullable ContentValues contentValues);

    @NonNull
    String oJ();

    String oJ(@NonNull Uri uri);
}
