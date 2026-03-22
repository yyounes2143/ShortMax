package y7;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.Locale;
import n7.a;
/* compiled from: CrashlyticsAnalyticsListener.java */
/* loaded from: classes5.dex */
class e implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private a8.b f70742a;

    /* renamed from: b  reason: collision with root package name */
    private a8.b f70743b;

    private static void b(@Nullable a8.b bVar, @NonNull String str, @NonNull Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.onEvent(str, bundle);
    }

    private void c(@NonNull String str, @NonNull Bundle bundle) {
        a8.b bVar;
        if ("clx".equals(bundle.getString("_o"))) {
            bVar = this.f70742a;
        } else {
            bVar = this.f70743b;
        }
        b(bVar, str, bundle);
    }

    @Override // n7.a.b
    public void a(int i10, @Nullable Bundle bundle) {
        String string;
        z7.g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i10), bundle));
        if (bundle != null && (string = bundle.getString("name")) != null) {
            Bundle bundle2 = bundle.getBundle(MetricsSQLiteCacheKt.METRICS_PARAMS);
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            c(string, bundle2);
        }
    }

    public void d(@Nullable a8.b bVar) {
        this.f70743b = bVar;
    }

    public void e(@Nullable a8.b bVar) {
        this.f70742a = bVar;
    }
}
