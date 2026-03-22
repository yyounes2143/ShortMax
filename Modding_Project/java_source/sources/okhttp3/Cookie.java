package okhttp3;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okhttp3.internal.http.DatesKt;
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
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Cookie.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Cookie {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final Companion f63407j = new Companion(null);

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f63408k = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f63409l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f63410m = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f63411n = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63412a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f63413b;

    /* renamed from: c  reason: collision with root package name */
    private final long f63414c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f63415d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f63416e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f63417f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f63418g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f63419h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f63420i;

    /* compiled from: Cookie.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,614:1\n1#2:615\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private long f63421a = DatesKt.MAX_DATE;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f63422b = DomExceptionUtils.SEPARATOR;
    }

    /* compiled from: Cookie.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(String str, int i10, int i11, boolean z10) {
            boolean z11;
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if ((charAt >= ' ' || charAt == '\t') && charAt < 127 && (('0' > charAt || charAt >= ':') && (('a' > charAt || charAt >= '{') && (('A' > charAt || charAt >= '[') && charAt != ':')))) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                if (z11 == (!z10)) {
                    return i10;
                }
                i10++;
            }
            return i11;
        }

        private final boolean b(String str, String str2) {
            if (Intrinsics.areEqual(str, str2)) {
                return true;
            }
            if (StringsKt.F(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.i(str)) {
                return true;
            }
            return false;
        }

        private final String f(String str) {
            if (!StringsKt.F(str, ".", false, 2, null)) {
                String e10 = HostnamesKt.e(StringsKt.O0(str, "."));
                if (e10 != null) {
                    return e10;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        private final long g(String str, int i10, int i11) {
            int a10 = a(str, i10, i11, false);
            Matcher matcher = Cookie.f63411n.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            while (a10 < i11) {
                int a11 = a(str, a10 + 1, i11, true);
                matcher.region(a10, a11);
                if (i13 == -1 && matcher.usePattern(Cookie.f63411n).matches()) {
                    String group = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group, "matcher.group(1)");
                    i13 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    Intrinsics.checkNotNullExpressionValue(group2, "matcher.group(2)");
                    i16 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    Intrinsics.checkNotNullExpressionValue(group3, "matcher.group(3)");
                    i17 = Integer.parseInt(group3);
                } else if (i14 == -1 && matcher.usePattern(Cookie.f63410m).matches()) {
                    String group4 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group4, "matcher.group(1)");
                    i14 = Integer.parseInt(group4);
                } else if (i15 == -1 && matcher.usePattern(Cookie.f63409l).matches()) {
                    String group5 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group5, "matcher.group(1)");
                    Locale US = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US, "US");
                    String lowerCase = group5.toLowerCase(US);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String pattern = Cookie.f63409l.pattern();
                    Intrinsics.checkNotNullExpressionValue(pattern, "MONTH_PATTERN.pattern()");
                    i15 = StringsKt.q0(pattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i12 == -1 && matcher.usePattern(Cookie.f63408k).matches()) {
                    String group6 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group6, "matcher.group(1)");
                    i12 = Integer.parseInt(group6);
                }
                a10 = a(str, a11 + 1, i11, false);
            }
            if (70 <= i12 && i12 < 100) {
                i12 += MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT;
            }
            if (i12 >= 0 && i12 < 70) {
                i12 += 2000;
            }
            if (i12 >= 1601) {
                if (i15 != -1) {
                    if (1 <= i14 && i14 < 32) {
                        if (i13 >= 0 && i13 < 24) {
                            if (i16 >= 0 && i16 < 60) {
                                if (i17 >= 0 && i17 < 60) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.f63632f);
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
                                throw new IllegalArgumentException("Failed requirement.");
                            }
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        private final long h(String str) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e10) {
                if (new Regex("-?\\d+").k(str)) {
                    if (StringsKt.V(str, "-", false, 2, null)) {
                        return Long.MIN_VALUE;
                    }
                    return Long.MAX_VALUE;
                }
                throw e10;
            }
        }

        @Nullable
        public final Cookie c(@NotNull HttpUrl url, @NotNull String setCookie) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(setCookie, "setCookie");
            return d(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0113  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0156  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.Cookie d(long r26, @org.jetbrains.annotations.NotNull okhttp3.HttpUrl r28, @org.jetbrains.annotations.NotNull java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.d(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        @NotNull
        public final List<Cookie> e(@NotNull HttpUrl url, @NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            List<String> j10 = headers.j("Set-Cookie");
            int size = j10.size();
            ArrayList arrayList = null;
            for (int i10 = 0; i10 < size; i10++) {
                Cookie c10 = c(url, j10.get(i10));
                if (c10 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c10);
                }
            }
            if (arrayList != null) {
                List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
                Intrinsics.checkNotNullExpressionValue(unmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
                return unmodifiableList;
            }
            return CollectionsKt.n();
        }

        private Companion() {
        }
    }

    public /* synthetic */ Cookie(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j10, str3, str4, z10, z11, z12, z13);
    }

    @NotNull
    public final String e() {
        return this.f63412a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.f63412a, this.f63412a) && Intrinsics.areEqual(cookie.f63413b, this.f63413b) && cookie.f63414c == this.f63414c && Intrinsics.areEqual(cookie.f63415d, this.f63415d) && Intrinsics.areEqual(cookie.f63416e, this.f63416e) && cookie.f63417f == this.f63417f && cookie.f63418g == this.f63418g && cookie.f63419h == this.f63419h && cookie.f63420i == this.f63420i) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final String f(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f63412a);
        sb2.append('=');
        sb2.append(this.f63413b);
        if (this.f63419h) {
            if (this.f63414c == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(okhttp3.internal.http.DatesKt.b(new Date(this.f63414c)));
            }
        }
        if (!this.f63420i) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.f63415d);
        }
        sb2.append("; path=");
        sb2.append(this.f63416e);
        if (this.f63417f) {
            sb2.append("; secure");
        }
        if (this.f63418g) {
            sb2.append("; httponly");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString()");
        return sb3;
    }

    @NotNull
    public final String g() {
        return this.f63413b;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f63412a.hashCode()) * 31) + this.f63413b.hashCode()) * 31) + Long.hashCode(this.f63414c)) * 31) + this.f63415d.hashCode()) * 31) + this.f63416e.hashCode()) * 31) + Boolean.hashCode(this.f63417f)) * 31) + Boolean.hashCode(this.f63418g)) * 31) + Boolean.hashCode(this.f63419h)) * 31) + Boolean.hashCode(this.f63420i);
    }

    @NotNull
    public String toString() {
        return f(false);
    }

    private Cookie(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f63412a = str;
        this.f63413b = str2;
        this.f63414c = j10;
        this.f63415d = str3;
        this.f63416e = str4;
        this.f63417f = z10;
        this.f63418g = z11;
        this.f63419h = z12;
        this.f63420i = z13;
    }
}
