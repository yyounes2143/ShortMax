package com.google.android.play.core.integrity;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public class IntegrityManagerFactory {
    private IntegrityManagerFactory() {
    }

    @NonNull
    public static IntegrityManager create(Context context) {
        return z.a(context).a();
    }

    @NonNull
    public static StandardIntegrityManager createStandard(Context context) {
        return ax.a(context).a();
    }
}
