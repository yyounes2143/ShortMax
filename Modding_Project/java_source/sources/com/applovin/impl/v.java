package com.applovin.impl;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class v {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10140a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f10141b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final Collection f10142c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f10143d = false;

    /* renamed from: e  reason: collision with root package name */
    private static a f10144e = null;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f10145a;

        /* renamed from: b  reason: collision with root package name */
        private String f10146b = "";

        /* renamed from: c  reason: collision with root package name */
        private EnumC0122a f10147c = EnumC0122a.NOT_SET;

        /* renamed from: com.applovin.impl.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public enum EnumC0122a {
            NOT_SET("dnt_not_set"),
            ON("dnt_on"),
            OFF("dnt_off");
            

            /* renamed from: a  reason: collision with root package name */
            private final String f10152a;

            EnumC0122a(String str) {
                this.f10152a = str;
            }

            public String b() {
                return this.f10152a;
            }
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public EnumC0122a b() {
            return this.f10147c;
        }

        public boolean c() {
            return this.f10145a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this) || c() != aVar.c()) {
                return false;
            }
            String a10 = a();
            String a11 = aVar.a();
            if (a10 != null ? !a10.equals(a11) : a11 != null) {
                return false;
            }
            EnumC0122a b10 = b();
            EnumC0122a b11 = aVar.b();
            if (b10 != null ? b10.equals(b11) : b11 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode;
            if (c()) {
                i10 = 79;
            } else {
                i10 = 97;
            }
            String a10 = a();
            int i11 = (i10 + 59) * 59;
            int i12 = 43;
            if (a10 == null) {
                hashCode = 43;
            } else {
                hashCode = a10.hashCode();
            }
            int i13 = i11 + hashCode;
            EnumC0122a b10 = b();
            int i14 = i13 * 59;
            if (b10 != null) {
                i12 = b10.hashCode();
            }
            return i14 + i12;
        }

        public String toString() {
            return "AdvertisingInfoCollector.AdvertisingIdInformation(adTrackingLimited=" + c() + ", advertisingId=" + a() + ", dntCode=" + b() + ")";
        }

        public void a(boolean z10) {
            this.f10145a = z10;
        }

        public void a(String str) {
            this.f10146b = str;
        }

        public void a(EnumC0122a enumC0122a) {
            this.f10147c = enumC0122a;
        }

        public String a() {
            return this.f10146b;
        }
    }

    private static a a(Context context) {
        a aVar;
        HashSet<CountDownLatch> hashSet;
        k7.a();
        Object obj = f10141b;
        synchronized (obj) {
            try {
                if (f10143d) {
                    return f10144e;
                }
                Collection collection = f10142c;
                boolean isEmpty = collection.isEmpty();
                CountDownLatch countDownLatch = new CountDownLatch(1);
                collection.add(countDownLatch);
                if (isEmpty) {
                    a c10 = c(context);
                    synchronized (obj) {
                        f10143d = true;
                        f10144e = c10;
                        hashSet = new HashSet(collection);
                        collection.clear();
                    }
                    for (CountDownLatch countDownLatch2 : hashSet) {
                        countDownLatch2.countDown();
                    }
                }
                try {
                    if (!countDownLatch.await(60L, TimeUnit.SECONDS)) {
                        com.applovin.impl.sdk.o.h("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout");
                    }
                } catch (InterruptedException e10) {
                    com.applovin.impl.sdk.o.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e10);
                }
                synchronized (f10141b) {
                    aVar = f10144e;
                }
                return aVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static a b(Context context) {
        return a(context);
    }

    private static a c(Context context) {
        a collectGoogleAdvertisingInfo = collectGoogleAdvertisingInfo(context);
        if (collectGoogleAdvertisingInfo == null) {
            collectGoogleAdvertisingInfo = collectFireOSAdvertisingInfo(context);
        }
        if (collectGoogleAdvertisingInfo == null) {
            return new a();
        }
        return collectGoogleAdvertisingInfo;
    }

    @Nullable
    private static a collectFireOSAdvertisingInfo(Context context) {
        boolean z10;
        a.EnumC0122a enumC0122a;
        if (f10140a) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                a aVar = new a();
                aVar.a(StringUtils.emptyIfNull(Settings.Secure.getString(contentResolver, "advertising_id")));
                if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                aVar.a(z10);
                if (z10) {
                    enumC0122a = a.EnumC0122a.ON;
                } else {
                    enumC0122a = a.EnumC0122a.OFF;
                }
                aVar.a(enumC0122a);
                return aVar;
            } catch (Settings.SettingNotFoundException e10) {
                com.applovin.impl.sdk.o.c("DataCollector", "Unable to determine if Fire OS limited ad tracking is turned on", e10);
            } catch (Throwable th2) {
                com.applovin.impl.sdk.o.c("DataCollector", "Unable to collect Fire OS IDFA", th2);
            }
        }
        f10140a = false;
        return null;
    }

    @Nullable
    private static a collectGoogleAdvertisingInfo(Context context) {
        a.EnumC0122a enumC0122a;
        k7.a();
        if (a()) {
            try {
                a aVar = new a();
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                aVar.a(isLimitAdTrackingEnabled);
                if (isLimitAdTrackingEnabled) {
                    enumC0122a = a.EnumC0122a.ON;
                } else {
                    enumC0122a = a.EnumC0122a.OFF;
                }
                aVar.a(enumC0122a);
                aVar.a(advertisingIdInfo.getId());
                return aVar;
            } catch (Throwable th2) {
                if (!AppLovinSdkUtils.isFireOS(context)) {
                    com.applovin.impl.sdk.o.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th2);
                    return null;
                }
                return null;
            }
        } else if (!AppLovinSdkUtils.isFireOS(context)) {
            com.applovin.impl.sdk.o.h("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
            return null;
        } else {
            return null;
        }
    }

    public static boolean a() {
        return k7.a("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
}
