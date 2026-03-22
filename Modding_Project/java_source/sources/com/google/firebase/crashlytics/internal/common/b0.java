package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.io.File;
/* compiled from: CrashlyticsReportWithSessionId.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class b0 {
    @NonNull
    public static b0 a(e8.f0 f0Var, String str, File file) {
        return new b(f0Var, str, file);
    }

    public abstract e8.f0 b();

    public abstract File c();

    public abstract String d();
}
