package a8;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: CrashlyticsOriginAnalyticsEventLogger.java */
/* loaded from: classes5.dex */
public class e implements a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final n7.a f319a;

    public e(@NonNull n7.a aVar) {
        this.f319a = aVar;
    }

    @Override // a8.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        this.f319a.a("clx", str, bundle);
    }
}
