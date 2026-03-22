package com.inmobi.media;

import android.content.Context;
import android.location.Location;
import com.inmobi.media.AbstractC2872ab;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
/* renamed from: com.inmobi.media.ab  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2872ab {

    /* renamed from: a  reason: collision with root package name */
    public static int f24491a = Integer.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f24492b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f24493c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f24494d = null;

    /* renamed from: e  reason: collision with root package name */
    public static String f24495e = null;

    /* renamed from: f  reason: collision with root package name */
    public static String f24496f = null;

    /* renamed from: g  reason: collision with root package name */
    public static String f24497g = null;

    /* renamed from: h  reason: collision with root package name */
    public static String f24498h = null;

    /* renamed from: i  reason: collision with root package name */
    public static int f24499i = Integer.MIN_VALUE;

    /* renamed from: j  reason: collision with root package name */
    public static String f24500j;

    /* renamed from: k  reason: collision with root package name */
    public static String f24501k;

    /* renamed from: l  reason: collision with root package name */
    public static String f24502l;

    /* renamed from: m  reason: collision with root package name */
    public static String f24503m;

    /* renamed from: n  reason: collision with root package name */
    public static Location f24504n;

    public static void a(final boolean z10) {
        f24492b = Boolean.valueOf(z10);
        final Context d10 = Uc.d();
        if (d10 != null) {
            Uc.a(new Runnable() { // from class: ub.p3
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2872ab.a(d10, z10);
                }
            });
        }
    }

    public static Location b() {
        Location location = f24504n;
        if (location != null) {
            return location;
        }
        Context d10 = Uc.d();
        Location location2 = null;
        if (d10 == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(d10, "user_info_store");
        Intrinsics.checkNotNullParameter("user_location", "key");
        String string = a10.f23530a.getString("user_location", null);
        if (string == null) {
            return null;
        }
        Location location3 = new Location("");
        try {
            String[] strArr = (String[]) new Regex(",").q(string, 0).toArray(new String[0]);
            location3.setLatitude(Double.parseDouble(strArr[0]));
            location3.setLongitude(Double.parseDouble(strArr[1]));
            location3.setAccuracy(Float.parseFloat(strArr[2]));
            location3.setTime(Long.parseLong(strArr[3]));
            location2 = location3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
        }
        f24504n = location2;
        return location2;
    }

    public static boolean c() {
        Boolean bool = f24492b;
        if (bool != null) {
            return bool.booleanValue();
        }
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6 a10 = B6.a(d10, "user_info_store");
            Intrinsics.checkNotNullParameter("user_age_restricted", "key");
            f24492b = Boolean.valueOf(a10.f23530a.getBoolean("user_age_restricted", false));
        }
        Boolean bool2 = f24492b;
        if (bool2 == null) {
            return false;
        }
        return bool2.booleanValue();
    }

    public static final void a(Context it, boolean z10) {
        Intrinsics.checkNotNullParameter(it, "$it");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6.a(B6.a(it, "user_info_store"), "user_age_restricted", z10, false, 4, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap a() {
        /*
            Method dump skipped, instructions count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2872ab.a():java.util.HashMap");
    }
}
