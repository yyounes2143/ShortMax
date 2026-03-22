package com.mbridge.msdk.thrid.okhttp;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okhttp3.internal.http.DatesKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.thrid.okhttp.internal.publicsuffix.PublicSuffixDatabase;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Cookie.java */
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f29959j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f29960k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f29961l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f29962m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a  reason: collision with root package name */
    private final String f29963a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29964b;

    /* renamed from: c  reason: collision with root package name */
    private final long f29965c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29966d;

    /* renamed from: e  reason: collision with root package name */
    private final String f29967e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f29968f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f29969g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f29970h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f29971i;

    private j(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f29963a = str;
        this.f29964b = str2;
        this.f29965c = j10;
        this.f29966d = str3;
        this.f29967e = str4;
        this.f29968f = z10;
        this.f29969g = z11;
        this.f29971i = z12;
        this.f29970h = z13;
    }

    public String a() {
        return this.f29963a;
    }

    public String b() {
        return this.f29964b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (!jVar.f29963a.equals(this.f29963a) || !jVar.f29964b.equals(this.f29964b) || !jVar.f29966d.equals(this.f29966d) || !jVar.f29967e.equals(this.f29967e) || jVar.f29965c != this.f29965c || jVar.f29968f != this.f29968f || jVar.f29969g != this.f29969g || jVar.f29970h != this.f29970h || jVar.f29971i != this.f29971i) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f29965c;
        return ((((((((((((((((this.f29963a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29964b.hashCode()) * 31) + this.f29966d.hashCode()) * 31) + this.f29967e.hashCode()) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.f29968f ? 1 : 0)) * 31) + (!this.f29969g ? 1 : 0)) * 31) + (!this.f29970h ? 1 : 0)) * 31) + (!this.f29971i ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.mbridge.msdk.thrid.okhttp.internal.c.d(str);
    }

    private static long b(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e10) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e10;
        }
    }

    public static j a(q qVar, String str) {
        return a(System.currentTimeMillis(), qVar, str);
    }

    static j a(long j10, q qVar, String str) {
        long j11;
        j jVar;
        String str2;
        String str3;
        int length = str.length();
        char c10 = ';';
        int a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, length, ';');
        char c11 = '=';
        int a11 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, a10, '=');
        if (a11 == a10) {
            return null;
        }
        String d10 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, 0, a11);
        if (d10.isEmpty() || com.mbridge.msdk.thrid.okhttp.internal.c.c(d10) != -1) {
            return null;
        }
        String d11 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, a11 + 1, a10);
        if (com.mbridge.msdk.thrid.okhttp.internal.c.c(d11) != -1) {
            return null;
        }
        int i10 = a10 + 1;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        String str4 = null;
        boolean z13 = true;
        long j12 = -1;
        long j13 = 253402300799999L;
        String str5 = null;
        while (i10 < length) {
            int a12 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i10, length, c10);
            int a13 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i10, a12, c11);
            String d12 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, i10, a13);
            String d13 = a13 < a12 ? com.mbridge.msdk.thrid.okhttp.internal.c.d(str, a13 + 1, a12) : "";
            if (d12.equalsIgnoreCase("expires")) {
                try {
                    j13 = a(d13, 0, d13.length());
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (d12.equalsIgnoreCase("max-age")) {
                j12 = b(d13);
            } else {
                if (d12.equalsIgnoreCase("domain")) {
                    str4 = a(d13);
                    z13 = false;
                } else if (d12.equalsIgnoreCase(MBridgeConstans.DYNAMIC_VIEW_WX_PATH)) {
                    str5 = d13;
                } else if (d12.equalsIgnoreCase("secure")) {
                    z10 = true;
                } else if (d12.equalsIgnoreCase("httponly")) {
                    z11 = true;
                }
                i10 = a12 + 1;
                c10 = ';';
                c11 = '=';
            }
            z12 = true;
            i10 = a12 + 1;
            c10 = ';';
            c11 = '=';
        }
        if (j12 == Long.MIN_VALUE) {
            j11 = Long.MIN_VALUE;
        } else if (j12 != -1) {
            long j14 = j10 + (j12 <= 9223372036854775L ? j12 * 1000 : Long.MAX_VALUE);
            j11 = (j14 < j10 || j14 > DatesKt.MAX_DATE) ? 253402300799999L : j14;
        } else {
            j11 = j13;
        }
        String g10 = qVar.g();
        if (str4 == null) {
            str2 = g10;
            jVar = null;
        } else if (!a(g10, str4)) {
            return null;
        } else {
            jVar = null;
            str2 = str4;
        }
        if (g10.length() == str2.length() || PublicSuffixDatabase.a().a(str2) != null) {
            String str6 = DomExceptionUtils.SEPARATOR;
            if (str5 == null || !str5.startsWith(DomExceptionUtils.SEPARATOR)) {
                String c12 = qVar.c();
                int lastIndexOf = c12.lastIndexOf(47);
                if (lastIndexOf != 0) {
                    str6 = c12.substring(0, lastIndexOf);
                }
                str3 = str6;
            } else {
                str3 = str5;
            }
            return new j(d10, d11, j11, str2, str3, z10, z11, z13, z12);
        }
        return jVar;
    }

    private static long a(String str, int i10, int i11) {
        int a10 = a(str, i10, i11, false);
        Matcher matcher = f29962m.matcher(str);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        int i17 = -1;
        while (a10 < i11) {
            int a11 = a(str, a10 + 1, i11, true);
            matcher.region(a10, a11);
            if (i13 == -1 && matcher.usePattern(f29962m).matches()) {
                i13 = Integer.parseInt(matcher.group(1));
                i16 = Integer.parseInt(matcher.group(2));
                i17 = Integer.parseInt(matcher.group(3));
            } else if (i14 == -1 && matcher.usePattern(f29961l).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
            } else {
                if (i15 == -1) {
                    Pattern pattern = f29960k;
                    if (matcher.usePattern(pattern).matches()) {
                        i15 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                    }
                }
                if (i12 == -1 && matcher.usePattern(f29959j).matches()) {
                    i12 = Integer.parseInt(matcher.group(1));
                }
            }
            a10 = a(str, a11 + 1, i11, false);
        }
        if (i12 >= 70 && i12 <= 99) {
            i12 += MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT;
        }
        if (i12 >= 0 && i12 <= 69) {
            i12 += 2000;
        }
        if (i12 >= 1601) {
            if (i15 != -1) {
                if (i14 < 1 || i14 > 31) {
                    throw new IllegalArgumentException();
                }
                if (i13 < 0 || i13 > 23) {
                    throw new IllegalArgumentException();
                }
                if (i16 < 0 || i16 > 59) {
                    throw new IllegalArgumentException();
                }
                if (i17 >= 0 && i17 <= 59) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar(com.mbridge.msdk.thrid.okhttp.internal.c.f29616p);
                    gregorianCalendar.setLenient(false);
                    gregorianCalendar.set(1, i12);
                    gregorianCalendar.set(2, i15 - 1);
                    gregorianCalendar.set(5, i14);
                    gregorianCalendar.set(11, i13);
                    gregorianCalendar.set(12, i16);
                    gregorianCalendar.set(13, i17);
                    gregorianCalendar.set(14, 0);
                    return gregorianCalendar.getTimeInMillis();
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    private static int a(String str, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z10)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static String a(String str) {
        if (!str.endsWith(".")) {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            String a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str);
            if (a10 != null) {
                return a10;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public static List<j> a(q qVar, p pVar) {
        List<String> c10 = pVar.c("Set-Cookie");
        int size = c10.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            j a10 = a(qVar, c10.get(i10));
            if (a10 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(a10);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f29963a);
        sb2.append('=');
        sb2.append(this.f29964b);
        if (this.f29970h) {
            if (this.f29965c == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(com.mbridge.msdk.thrid.okhttp.internal.http.d.a(new Date(this.f29965c)));
            }
        }
        if (!this.f29971i) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.f29966d);
        }
        sb2.append("; path=");
        sb2.append(this.f29967e);
        if (this.f29968f) {
            sb2.append("; secure");
        }
        if (this.f29969g) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }
}
