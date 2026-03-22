package io.bidmachine;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: HwInfoCache.java */
/* loaded from: classes7.dex */
final class w3 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final String f58711a = Build.MANUFACTURER + Build.MODEL;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String a(@NonNull Context context, @NonNull String str) {
        return m2.d(context, str + f58711a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Context context, @NonNull String str, @Nullable String str2) {
        m2.r(context, str + f58711a, str2);
    }
}
