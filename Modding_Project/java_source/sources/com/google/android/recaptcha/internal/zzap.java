package com.google.android.recaptcha.internal;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzap {
    @NotNull
    public static final String zza(@NotNull ContentResolver contentResolver) {
        Cursor query = contentResolver.query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
        if (query != null && query.moveToFirst() && query.getColumnCount() >= 2) {
            String valueOf = String.valueOf(Long.parseLong(query.getString(1)));
            query.close();
            return valueOf;
        }
        return "";
    }
}
