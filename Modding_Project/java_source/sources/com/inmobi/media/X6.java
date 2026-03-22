package com.inmobi.media;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.provider.Settings;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.inmobi.media.X6;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* loaded from: classes5.dex */
public final class X6 implements LocationListener {

    /* renamed from: a  reason: collision with root package name */
    public static final X6 f24362a = new X6();

    /* renamed from: b  reason: collision with root package name */
    public static final LocationManager f24363b;

    /* renamed from: c  reason: collision with root package name */
    public static final HandlerThread f24364c;

    /* renamed from: d  reason: collision with root package name */
    public static GoogleApiClient f24365d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f24366e;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f24367f;

    static {
        LocationManager locationManager;
        HandlerThread handlerThread = new HandlerThread("LThread");
        f24364c = handlerThread;
        f24366e = X6.class.getSimpleName();
        D4.a(handlerThread, "LThread");
        Context d10 = Uc.d();
        if (d10 != null) {
            Object systemService = d10.getSystemService("location");
            if (systemService instanceof LocationManager) {
                locationManager = (LocationManager) systemService;
            } else {
                locationManager = null;
            }
            f24363b = locationManager;
        }
    }

    public static boolean c() {
        try {
            if (!AbstractC3226wa.a(Uc.d(), "android.permission.ACCESS_FINE_LOCATION")) {
                if (!AbstractC3226wa.a(Uc.d(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            String TAG = f24366e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return false;
        }
    }

    public static boolean e() {
        int i10;
        boolean isLocationEnabled;
        Context d10 = Uc.d();
        if (d10 == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            LocationManager locationManager = f24363b;
            if (locationManager != null) {
                isLocationEnabled = locationManager.isLocationEnabled();
                if (!isLocationEnabled) {
                    return false;
                }
                return true;
            }
            return false;
        }
        try {
            i10 = Settings.Secure.getInt(d10.getContentResolver(), "location_mode");
        } catch (Settings.SettingNotFoundException unused) {
            i10 = 0;
        }
        if (i10 == 0) {
            return false;
        }
        return true;
    }

    public final void a() {
        LocationManager locationManager = f24363b;
        if (locationManager != null) {
            Criteria criteria = new Criteria();
            criteria.setBearingAccuracy(2);
            criteria.setPowerRequirement(2);
            criteria.setCostAllowed(false);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null) {
                Intrinsics.checkNotNullExpressionValue(f24366e, "TAG");
                locationManager.requestSingleUpdate(bestProvider, this, f24364c.getLooper());
            } else {
                String TAG = f24366e;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            }
        }
        Unit unit = Unit.f60915a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:28|(6:85|86|31|32|(1:36)|82)|30|31|32|(2:34|36)|82) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
        r5 = com.inmobi.media.X6.f24366e;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, "TAG");
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
        if (((com.inmobi.commons.core.configs.SignalsConfig) r1).getIceConfig().isLocationEnabled() != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f A[Catch: all -> 0x002e, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0011, B:77:0x0149, B:79:0x0155, B:80:0x015a, B:82:0x0167, B:83:0x016f, B:85:0x0175, B:81:0x015f, B:11:0x0031, B:13:0x0037, B:15:0x003d, B:17:0x0041, B:22:0x006d, B:24:0x0071, B:26:0x007d, B:34:0x0095, B:36:0x009f, B:38:0x00ab, B:40:0x00b2, B:41:0x00c1, B:54:0x00e9, B:56:0x00f9, B:57:0x0107, B:73:0x012b, B:75:0x013a, B:31:0x0089, B:20:0x0062), top: B:97:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0149 A[Catch: all -> 0x002e, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0011, B:77:0x0149, B:79:0x0155, B:80:0x015a, B:82:0x0167, B:83:0x016f, B:85:0x0175, B:81:0x015f, B:11:0x0031, B:13:0x0037, B:15:0x003d, B:17:0x0041, B:22:0x006d, B:24:0x0071, B:26:0x007d, B:34:0x0095, B:36:0x009f, B:38:0x00ab, B:40:0x00b2, B:41:0x00c1, B:54:0x00e9, B:56:0x00f9, B:57:0x0107, B:73:0x012b, B:75:0x013a, B:31:0x0089, B:20:0x0062), top: B:97:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015f A[Catch: all -> 0x002e, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0011, B:77:0x0149, B:79:0x0155, B:80:0x015a, B:82:0x0167, B:83:0x016f, B:85:0x0175, B:81:0x015f, B:11:0x0031, B:13:0x0037, B:15:0x003d, B:17:0x0041, B:22:0x006d, B:24:0x0071, B:26:0x007d, B:34:0x0095, B:36:0x009f, B:38:0x00ab, B:40:0x00b2, B:41:0x00c1, B:54:0x00e9, B:56:0x00f9, B:57:0x0107, B:73:0x012b, B:75:0x013a, B:31:0x0089, B:20:0x0062), top: B:97:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0175 A[Catch: all -> 0x002e, LOOP:0: B:83:0x016f->B:85:0x0175, LOOP_END, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0001, B:5:0x0011, B:77:0x0149, B:79:0x0155, B:80:0x015a, B:82:0x0167, B:83:0x016f, B:85:0x0175, B:81:0x015f, B:11:0x0031, B:13:0x0037, B:15:0x003d, B:17:0x0041, B:22:0x006d, B:24:0x0071, B:26:0x007d, B:34:0x0095, B:36:0x009f, B:38:0x00ab, B:40:0x00b2, B:41:0x00c1, B:54:0x00e9, B:56:0x00f9, B:57:0x0107, B:73:0x012b, B:75:0x013a, B:31:0x0089, B:20:0x0062), top: B:97:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.HashMap b() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X6.b():java.util.HashMap");
    }

    public final synchronized void d() {
        try {
            if (c() && e()) {
                a();
                try {
                    Reflection.getOrCreateKotlinClass(GoogleApiClient.class).getSimpleName();
                    Reflection.getOrCreateKotlinClass(FusedLocationProviderClient.class).getSimpleName();
                    Reflection.getOrCreateKotlinClass(LocationServices.class).getSimpleName();
                    a(Uc.d());
                } catch (NoClassDefFoundError unused) {
                }
            }
        } catch (Exception unused2) {
            String TAG = f24366e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        LocationManager locationManager;
        Intrinsics.checkNotNullParameter(location, "location");
        try {
            String TAG = f24366e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            location.getTime();
            location.getLatitude();
            location.getLongitude();
            location.getAccuracy();
            if (c() && (locationManager = f24363b) != null) {
                locationManager.removeUpdates(this);
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
    }

    public static void a(Context context) {
        try {
            GoogleApiClient googleApiClient = f24365d;
            if (googleApiClient == null) {
                String TAG = f24366e;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                Intrinsics.checkNotNull(context);
                GoogleApiClient build = new GoogleApiClient.Builder(context).addConnectionCallbacks(new W6()).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: ub.y2
                    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
                    public final void onConnectionFailed(ConnectionResult connectionResult) {
                        X6.a(connectionResult);
                    }
                }).addApi(LocationServices.API).build();
                f24365d = build;
                if (build != null) {
                    build.connect();
                }
            } else {
                googleApiClient.connect();
            }
        } catch (Exception unused) {
            String TAG2 = f24366e;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        }
    }

    public static final void a(ConnectionResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        f24367f = false;
    }

    public static Location a(int i10, int i11) {
        String bestProvider;
        Location location;
        Criteria criteria = new Criteria();
        criteria.setAccuracy(i10);
        criteria.setPowerRequirement(i11);
        criteria.setCostAllowed(false);
        LocationManager locationManager = f24363b;
        Location location2 = null;
        if (locationManager != null && (bestProvider = locationManager.getBestProvider(criteria, true)) != null) {
            try {
                location = locationManager.getLastKnownLocation(bestProvider);
            } catch (Exception unused) {
                location = null;
            }
            if (location != null || i10 == 1) {
                location2 = location;
            } else {
                LocationManager locationManager2 = f24363b;
                if (locationManager2 != null) {
                    Intrinsics.checkNotNull(locationManager2);
                    List<String> providers = locationManager2.getProviders(true);
                    Intrinsics.checkNotNullExpressionValue(providers, "getProviders(...)");
                    int size = providers.size() - 1;
                    if (size >= 0) {
                        while (true) {
                            int i12 = size - 1;
                            String str = providers.get(size);
                            try {
                                LocationManager locationManager3 = f24363b;
                                if (locationManager3 != null && locationManager3.isProviderEnabled(str)) {
                                    try {
                                        location2 = locationManager3.getLastKnownLocation(str);
                                    } catch (SecurityException unused2) {
                                    }
                                    if (location2 != null) {
                                        break;
                                    }
                                }
                            } catch (Exception unused3) {
                            }
                            if (i12 < 0) {
                                break;
                            }
                            size = i12;
                        }
                    }
                }
            }
        }
        String TAG = f24366e;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        return location2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007a, code lost:
        if (((com.inmobi.commons.core.configs.SignalsConfig) r7).getIceConfig().isLocationEnabled() != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap a(android.location.Location r7, boolean r8, android.location.Location r9) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            android.content.Context r1 = com.inmobi.media.Uc.d()
            if (r1 != 0) goto Lc
            return r0
        Lc:
            r2 = 44
            if (r7 == 0) goto L5a
            long r3 = r7.getTime()
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L27
            long r3 = r7.getTime()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            java.lang.String r4 = "u-ll-ts"
            r0.put(r4, r3)
        L27:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            double r4 = r7.getLatitude()
            r3.append(r4)
            r3.append(r2)
            double r4 = r7.getLongitude()
            r3.append(r4)
            r3.append(r2)
            float r7 = r7.getAccuracy()
            int r7 = (int) r7
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            java.lang.String r3 = "u-latlong-accu"
            r0.put(r3, r7)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r8)
            java.lang.String r8 = "sdk-collected"
            r0.put(r8, r7)
        L5a:
            com.inmobi.media.Uc r7 = com.inmobi.media.Uc.f24267a
            java.lang.String r7 = r7.h()
            if (r7 == 0) goto L7c
            java.util.LinkedHashMap r8 = com.inmobi.media.O2.f23923a
            java.lang.String r8 = "signals"
            r3 = 0
            com.inmobi.commons.core.configs.Config r7 = com.inmobi.media.M2.a(r8, r7, r3)
            java.lang.String r8 = "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r8)
            com.inmobi.commons.core.configs.SignalsConfig r7 = (com.inmobi.commons.core.configs.SignalsConfig) r7
            com.inmobi.commons.core.configs.SignalsConfig$IceConfig r7 = r7.getIceConfig()
            boolean r7 = r7.isLocationEnabled()
            if (r7 == 0) goto L89
        L7c:
            boolean r7 = e()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r8 = "loc-allowed"
            r0.put(r8, r7)
        L89:
            if (r9 == 0) goto Lc2
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            double r3 = r9.getLatitude()
            r7.append(r3)
            r7.append(r2)
            double r3 = r9.getLongitude()
            r7.append(r3)
            r7.append(r2)
            float r8 = r9.getAccuracy()
            int r8 = (int) r8
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            java.lang.String r8 = "u-latlong-accu-fine"
            r0.put(r8, r7)
            long r7 = r9.getTime()
            java.lang.Long r7 = java.lang.Long.valueOf(r7)
            java.lang.String r8 = "u-ll-ts-fine"
            r0.put(r8, r7)
        Lc2:
            boolean r7 = e()
            java.lang.String r8 = "loc-granularity"
            if (r7 == 0) goto Lde
            boolean r7 = c()
            if (r7 == 0) goto Lde
            java.lang.String r7 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r7 = com.inmobi.media.AbstractC3226wa.a(r1, r7)
            if (r7 == 0) goto Le3
            java.lang.String r7 = "coarse"
            r0.put(r8, r7)
            goto Le3
        Lde:
            java.lang.String r7 = "none"
            r0.put(r8, r7)
        Le3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X6.a(android.location.Location, boolean, android.location.Location):java.util.HashMap");
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
