package a8;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import z7.g;
/* compiled from: UnavailableAnalyticsEventLogger.java */
/* loaded from: classes5.dex */
public class f implements a {
    @Override // a8.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        g.f().b("Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
    }
}
