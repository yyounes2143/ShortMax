package com.inmobi.media;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.i  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2992i {

    /* renamed from: b  reason: collision with root package name */
    public int f24831b;

    /* renamed from: c  reason: collision with root package name */
    public String f24832c;

    /* renamed from: d  reason: collision with root package name */
    public String f24833d;

    /* renamed from: g  reason: collision with root package name */
    public long f24836g;

    /* renamed from: h  reason: collision with root package name */
    public long f24837h;

    /* renamed from: a  reason: collision with root package name */
    public final int f24830a = new Random().nextInt() & Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    public final long f24834e = System.currentTimeMillis();

    /* renamed from: f  reason: collision with root package name */
    public final long f24835f = System.currentTimeMillis();

    public final C2992i a(String url, String locationOnDisk, P9 response, int i10, long j10) {
        List list;
        boolean z10;
        long j11;
        boolean z11;
        long j12;
        long j13;
        long j14;
        String[] strArr;
        int i11;
        int i12;
        long j15;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(response, "response");
        Map map = response.f23984f;
        long currentTimeMillis = System.currentTimeMillis();
        List list2 = map != null ? (List) map.get("Date") : null;
        int i13 = 0;
        long a10 = (list2 == null || list2.isEmpty()) ? 0L : a((String) list2.get(0));
        List list3 = map != null ? (List) map.get("Cache-Control") : null;
        if (list3 == null || list3.isEmpty()) {
            list = null;
            z10 = false;
            j11 = 0;
            z11 = false;
            j12 = 0;
        } else {
            String[] strArr2 = (String[]) StringsKt.split$default((String) list3.get(0), new String[]{","}, false, 0, 6, null).toArray(new String[0]);
            int length = strArr2.length;
            int i14 = 0;
            z11 = false;
            j11 = 0;
            j12 = 0;
            while (true) {
                int i15 = 1;
                if (i14 >= length) {
                    break;
                }
                String str = strArr2[i14];
                int i16 = i13;
                int length2 = str.length() - 1;
                while (true) {
                    if (i13 > length2) {
                        strArr = strArr2;
                        i11 = i15;
                        break;
                    }
                    strArr = strArr2;
                    boolean z12 = Intrinsics.compare((int) str.charAt(i16 == 0 ? i13 : length2), 32) <= 0;
                    if (i16 == 0) {
                        if (z12) {
                            i13++;
                        } else {
                            strArr2 = strArr;
                            i15 = 1;
                            i16 = 1;
                        }
                    } else if (!z12) {
                        i11 = 1;
                        break;
                    } else {
                        length2--;
                    }
                    strArr2 = strArr;
                    i15 = 1;
                }
                String a11 = I7.a(length2, i11, str, i13);
                if (!Intrinsics.areEqual("no-cache", a11) && !Intrinsics.areEqual("no-store", a11)) {
                    if (StringsKt.V(a11, "max-age=", false, 2, null)) {
                        try {
                            String substring = a11.substring(8);
                            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                            j11 = Long.parseLong(substring);
                            i12 = length;
                        } catch (Exception unused) {
                            Intrinsics.checkNotNullExpressionValue(com.mbridge.msdk.foundation.same.report.j.f27256b, "access$getTAG$cp(...)");
                        }
                    } else {
                        i12 = length;
                        j15 = j11;
                        if (StringsKt.V(a11, "stale-while-revalidate=", false, 2, null)) {
                            try {
                                String substring2 = a11.substring(23);
                                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                                j12 = Long.parseLong(substring2);
                            } catch (Exception unused2) {
                                Intrinsics.checkNotNullExpressionValue(com.mbridge.msdk.foundation.same.report.j.f27256b, "access$getTAG$cp(...)");
                            }
                        } else if (Intrinsics.areEqual("must-revalidate", a11) || Intrinsics.areEqual("proxy-revalidate", a11)) {
                            j11 = j15;
                            z11 = true;
                        }
                        j11 = j15;
                    }
                    i14++;
                    strArr2 = strArr;
                    length = i12;
                    i13 = 0;
                }
                i12 = length;
                j15 = j11;
                j11 = j15;
                i14++;
                strArr2 = strArr;
                length = i12;
                i13 = 0;
            }
            list = null;
            z10 = true;
        }
        List list4 = map != null ? (List) map.get("Expires") : list;
        long a12 = (list4 == null || list4.isEmpty()) ? 0L : a((String) list4.get(0));
        if (z10) {
            long j16 = 1000;
            j14 = (j11 * j16) + currentTimeMillis;
            if (!z11) {
                j13 = j14;
                j14 = (j12 * j16) + j14;
            }
            j13 = j14;
        } else if (1 > a10 || a10 > a12) {
            j13 = 0;
            j14 = 0;
        } else {
            j14 = (a12 - a10) + currentTimeMillis;
            j13 = j14;
        }
        this.f24832c = url;
        this.f24833d = locationOnDisk;
        this.f24831b = i10;
        long j17 = (1000 * j10) + currentTimeMillis;
        this.f24836g = j17;
        this.f24837h = j13;
        this.f24836g = Math.min(j17, j14);
        return this;
    }

    public static long a(String str) {
        try {
            Date parse = new SimpleDateFormat("EEE,dd MMM yyyy HH:mm:ss z", Locale.ENGLISH).parse(str);
            if (parse != null) {
                return parse.getTime();
            }
            return 0L;
        } catch (ParseException e10) {
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return 0L;
        }
    }
}
