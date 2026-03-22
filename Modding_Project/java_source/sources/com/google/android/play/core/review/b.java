package com.google.android.play.core.review;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public class b {
    @NonNull
    public static a a(@NonNull Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return new d(new i(context));
    }
}
