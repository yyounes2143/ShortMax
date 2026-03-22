package n7;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjh;
import com.google.android.gms.measurement.internal.zzlt;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import n7.a;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public class b implements n7.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile n7.a f62858c;
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final AppMeasurementSdk f62859a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Map f62860b;

    /* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
    /* loaded from: classes5.dex */
    class a implements a.InterfaceC0876a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f62861a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f62862b;

        a(b bVar, String str) {
            this.f62861a = str;
            Objects.requireNonNull(bVar);
            this.f62862b = bVar;
        }
    }

    b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.f62859a = appMeasurementSdk;
        this.f62860b = new ConcurrentHashMap();
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @KeepForSdk
    public static n7.a h(@NonNull f fVar, @NonNull Context context, @NonNull t8.d dVar) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f62858c == null) {
            synchronized (b.class) {
                try {
                    if (f62858c == null) {
                        Bundle bundle = new Bundle(1);
                        if (fVar.w()) {
                            dVar.a(com.google.firebase.b.class, d.f62864a, c.f62863a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", fVar.v());
                        }
                        f62858c = new b(zzfb.zza(context, bundle).zzb());
                    }
                } finally {
                }
            }
        }
        return f62858c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(t8.a aVar) {
        boolean z10 = ((com.google.firebase.b) aVar.a()).f20602a;
        synchronized (b.class) {
            ((b) Preconditions.checkNotNull(f62858c)).f62859a.zza(z10);
        }
    }

    private final boolean j(@NonNull String str) {
        if (!str.isEmpty()) {
            Map map = this.f62860b;
            if (map.containsKey(str) && map.get(str) != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // n7.a
    @KeepForSdk
    public void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.b(str2, bundle) && com.google.firebase.analytics.connector.internal.b.e(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.f62859a.logEvent(str, str2, bundle);
        }
    }

    @Override // n7.a
    @KeepForSdk
    public void b(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        if (com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.d(str, str2)) {
            this.f62859a.setUserProperty(str, str2, obj);
        }
    }

    @Override // n7.a
    @KeepForSdk
    @WorkerThread
    public int c(@NonNull @Size(min = 1) String str) {
        return this.f62859a.getMaxUserProperties(str);
    }

    @Override // n7.a
    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (str2 != null && !com.google.firebase.analytics.connector.internal.b.b(str2, bundle)) {
            return;
        }
        this.f62859a.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // n7.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public List<a.c> d(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f62859a.getConditionalUserProperties(str, str2)) {
            int i10 = com.google.firebase.analytics.connector.internal.b.f20339g;
            Preconditions.checkNotNull(bundle);
            a.c cVar = new a.c();
            cVar.f62843a = (String) Preconditions.checkNotNull((String) zzjh.zzb(bundle, "origin", String.class, null));
            cVar.f62844b = (String) Preconditions.checkNotNull((String) zzjh.zzb(bundle, "name", String.class, null));
            cVar.f62845c = zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
            cVar.f62846d = (String) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            cVar.f62847e = ((Long) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            cVar.f62848f = (String) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            cVar.f62849g = (Bundle) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            cVar.f62850h = (String) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            cVar.f62851i = (Bundle) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            cVar.f62852j = ((Long) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            cVar.f62853k = (String) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            cVar.f62854l = (Bundle) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
            cVar.f62856n = ((Boolean) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
            cVar.f62855m = ((Long) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
            cVar.f62857o = ((Long) zzjh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
            arrayList.add(cVar);
        }
        return arrayList;
    }

    @Override // n7.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public Map<String, Object> e(boolean z10) {
        return this.f62859a.getUserProperties(null, null, z10);
    }

    @Override // n7.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public a.InterfaceC0876a f(@NonNull String str, @NonNull a.b bVar) {
        Object obj;
        Preconditions.checkNotNull(bVar);
        if (com.google.firebase.analytics.connector.internal.b.a(str) && !j(str)) {
            AppMeasurementSdk appMeasurementSdk = this.f62859a;
            if (AppMeasurement.FIAM_ORIGIN.equals(str)) {
                obj = new com.google.firebase.analytics.connector.internal.d(appMeasurementSdk, bVar);
            } else if ("clx".equals(str)) {
                obj = new com.google.firebase.analytics.connector.internal.f(appMeasurementSdk, bVar);
            } else {
                obj = null;
            }
            if (obj != null) {
                this.f62860b.put(str, obj);
                return new a(this, str);
            }
        }
        return null;
    }

    @Override // n7.a
    @KeepForSdk
    public void g(@NonNull a.c cVar) {
        String str;
        int i10 = com.google.firebase.analytics.connector.internal.b.f20339g;
        if (cVar != null && (str = cVar.f62843a) != null && !str.isEmpty()) {
            Object obj = cVar.f62845c;
            if ((obj == null || zzlt.zzb(obj) != null) && com.google.firebase.analytics.connector.internal.b.a(str) && com.google.firebase.analytics.connector.internal.b.d(str, cVar.f62844b)) {
                String str2 = cVar.f62853k;
                if (str2 == null || (com.google.firebase.analytics.connector.internal.b.b(str2, cVar.f62854l) && com.google.firebase.analytics.connector.internal.b.e(str, cVar.f62853k, cVar.f62854l))) {
                    String str3 = cVar.f62850h;
                    if (str3 == null || (com.google.firebase.analytics.connector.internal.b.b(str3, cVar.f62851i) && com.google.firebase.analytics.connector.internal.b.e(str, cVar.f62850h, cVar.f62851i))) {
                        String str4 = cVar.f62848f;
                        if (str4 == null || (com.google.firebase.analytics.connector.internal.b.b(str4, cVar.f62849g) && com.google.firebase.analytics.connector.internal.b.e(str, cVar.f62848f, cVar.f62849g))) {
                            AppMeasurementSdk appMeasurementSdk = this.f62859a;
                            Bundle bundle = new Bundle();
                            String str5 = cVar.f62843a;
                            if (str5 != null) {
                                bundle.putString("origin", str5);
                            }
                            String str6 = cVar.f62844b;
                            if (str6 != null) {
                                bundle.putString("name", str6);
                            }
                            Object obj2 = cVar.f62845c;
                            if (obj2 != null) {
                                zzjh.zza(bundle, obj2);
                            }
                            String str7 = cVar.f62846d;
                            if (str7 != null) {
                                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str7);
                            }
                            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, cVar.f62847e);
                            String str8 = cVar.f62848f;
                            if (str8 != null) {
                                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str8);
                            }
                            Bundle bundle2 = cVar.f62849g;
                            if (bundle2 != null) {
                                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
                            }
                            String str9 = cVar.f62850h;
                            if (str9 != null) {
                                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str9);
                            }
                            Bundle bundle3 = cVar.f62851i;
                            if (bundle3 != null) {
                                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
                            }
                            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, cVar.f62852j);
                            String str10 = cVar.f62853k;
                            if (str10 != null) {
                                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str10);
                            }
                            Bundle bundle4 = cVar.f62854l;
                            if (bundle4 != null) {
                                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
                            }
                            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, cVar.f62855m);
                            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, cVar.f62856n);
                            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, cVar.f62857o);
                            appMeasurementSdk.setConditionalUserProperty(bundle);
                        }
                    }
                }
            }
        }
    }
}
