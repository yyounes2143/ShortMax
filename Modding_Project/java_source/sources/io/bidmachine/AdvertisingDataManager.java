package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class AdvertisingDataManager {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final String f53544a = UUID.randomUUID().toString();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<b> f53545b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static b f53546c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static AdvertisingData f53547d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static String f53548e;

    /* loaded from: classes7.dex */
    public static class AdvertisingData {
        @Nullable

        /* renamed from: id  reason: collision with root package name */
        private final String f53549id;
        private final boolean limitAdTrackingEnabled;

        public AdvertisingData(@Nullable String str, boolean z10) {
            this.f53549id = str;
            this.limitAdTrackingEnabled = z10;
        }

        @Nullable
        public String getId() {
            return this.f53549id;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static abstract class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f53550a = new AtomicBoolean(true);

        private boolean b() {
            return this.f53550a.get();
        }

        @Nullable
        protected abstract AdvertisingData a(@NonNull Context context) throws Throwable;

        @Nullable
        public AdvertisingData c(@NonNull Context context) {
            if (!b()) {
                return null;
            }
            try {
                return a(context);
            } catch (NoClassDefFoundError e10) {
                d(false);
                io.bidmachine.core.a.m(e10);
                return null;
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                return null;
            }
        }

        protected void d(boolean z10) {
            this.f53550a.set(z10);
        }
    }

    /* loaded from: classes7.dex */
    private static class c extends b {
        private c() {
        }

        @Override // io.bidmachine.AdvertisingDataManager.b
        @Nullable
        protected AdvertisingData a(@NonNull Context context) throws Throwable {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                if (advertisingIdInfo != null) {
                    return new AdvertisingData(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
                }
                return null;
            } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException unused) {
                d(false);
                return null;
            }
        }
    }

    /* loaded from: classes7.dex */
    private static class d extends b {
        private d() {
        }

        @Override // io.bidmachine.AdvertisingDataManager.b
        @Nullable
        protected AdvertisingData a(@NonNull Context context) throws Throwable {
            AdvertisingIdClient.Info advertisingIdInfo = com.huawei.hms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                return new AdvertisingData(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
            }
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        f53545b = arrayList;
        arrayList.add(new c());
        arrayList.add(new d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String a(@NonNull Context context, boolean z10) {
        String str;
        if (z10) {
            return "00000000-0000-0000-0000-000000000000";
        }
        AdvertisingData advertisingData = f53547d;
        if (advertisingData != null) {
            str = advertisingData.getId();
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str) || "00000000-0000-0000-0000-000000000000".equals(str)) {
            return c(context);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        AdvertisingData advertisingData = f53547d;
        if (advertisingData != null && advertisingData.isLimitAdTrackingEnabled()) {
            return true;
        }
        return false;
    }

    @NonNull
    private static String c(@NonNull Context context) {
        if (!TextUtils.isEmpty(f53548e)) {
            return f53548e;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("ad_core_preferences", 0);
        String c10 = fr.i.c(sharedPreferences, "uuid", null);
        f53548e = c10;
        if (!TextUtils.isEmpty(c10)) {
            return f53548e;
        }
        f53548e = f53544a;
        sharedPreferences.edit().putString("uuid", f53548e).apply();
        return f53548e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void d(@NonNull Context context) {
        b bVar = f53546c;
        if (bVar != null) {
            AdvertisingData c10 = bVar.c(context);
            if (c10 != null) {
                f53547d = c10;
                return;
            }
            return;
        }
        for (b bVar2 : f53545b) {
            AdvertisingData c11 = bVar2.c(context);
            if (c11 != null) {
                f53546c = bVar2;
                f53547d = c11;
                return;
            }
        }
    }
}
