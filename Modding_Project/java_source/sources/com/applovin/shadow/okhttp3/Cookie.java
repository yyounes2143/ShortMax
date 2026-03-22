package com.applovin.shadow.okhttp3;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okhttp3.internal.HostnamesKt;
import com.applovin.shadow.okhttp3.internal.Util;
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
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Cookie.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Cookie {
    @NotNull
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    @NotNull
    private final String name;
    @NotNull
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    @NotNull
    private final String value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* compiled from: Cookie.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,614:1\n1#2:615\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Builder {
        @Nullable
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        @Nullable
        private String name;
        private boolean persistent;
        private boolean secure;
        @Nullable
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        @NotNull
        private String path = DomExceptionUtils.SEPARATOR;

        @NotNull
        public final Cookie build() {
            String str = this.name;
            if (str != null) {
                String str2 = this.value;
                if (str2 != null) {
                    long j10 = this.expiresAt;
                    String str3 = this.domain;
                    if (str3 != null) {
                        return new Cookie(str, str2, j10, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
                    }
                    throw new NullPointerException("builder.domain == null");
                }
                throw new NullPointerException("builder.value == null");
            }
            throw new NullPointerException("builder.name == null");
        }

        @NotNull
        public final Builder domain(@NotNull String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, false);
        }

        @NotNull
        public final Builder expiresAt(long j10) {
            if (j10 <= 0) {
                j10 = Long.MIN_VALUE;
            }
            if (j10 > DatesKt.MAX_DATE) {
                j10 = 253402300799999L;
            }
            this.expiresAt = j10;
            this.persistent = true;
            return this;
        }

        @NotNull
        public final Builder hostOnlyDomain(@NotNull String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            return domain(domain, true);
        }

        @NotNull
        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        @NotNull
        public final Builder name(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            if (Intrinsics.areEqual(StringsKt.v1(name).toString(), name)) {
                this.name = name;
                return this;
            }
            throw new IllegalArgumentException("name is not trimmed");
        }

        @NotNull
        public final Builder path(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (StringsKt.V(path, DomExceptionUtils.SEPARATOR, false, 2, null)) {
                this.path = path;
                return this;
            }
            throw new IllegalArgumentException("path must start with '/'");
        }

        @NotNull
        public final Builder secure() {
            this.secure = true;
            return this;
        }

        @NotNull
        public final Builder value(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (Intrinsics.areEqual(StringsKt.v1(value).toString(), value)) {
                this.value = value;
                return this;
            }
            throw new IllegalArgumentException("value is not trimmed");
        }

        private final Builder domain(String str, boolean z10) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost != null) {
                this.domain = canonicalHost;
                this.hostOnly = z10;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }
    }

    /* compiled from: Cookie.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int dateCharacterOffset(String str, int i10, int i11, boolean z10) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (Intrinsics.areEqual(str, str2)) {
                return true;
            }
            if (StringsKt.F(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str)) {
                return true;
            }
            return false;
        }

        private final String parseDomain(String str) {
            if (!StringsKt.F(str, ".", false, 2, null)) {
                String canonicalHost = HostnamesKt.toCanonicalHost(StringsKt.O0(str, "."));
                if (canonicalHost != null) {
                    return canonicalHost;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        private final long parseExpires(String str, int i10, int i11) {
            int dateCharacterOffset = dateCharacterOffset(str, i10, i11, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            while (dateCharacterOffset < i11) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i11, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i13 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group, "matcher.group(1)");
                    i13 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    Intrinsics.checkNotNullExpressionValue(group2, "matcher.group(2)");
                    i16 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    Intrinsics.checkNotNullExpressionValue(group3, "matcher.group(3)");
                    i17 = Integer.parseInt(group3);
                } else if (i14 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group4, "matcher.group(1)");
                    i14 = Integer.parseInt(group4);
                } else if (i15 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String group5 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group5, "matcher.group(1)");
                    Locale US = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US, "US");
                    String lowerCase = group5.toLowerCase(US);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String pattern = Cookie.MONTH_PATTERN.pattern();
                    Intrinsics.checkNotNullExpressionValue(pattern, "MONTH_PATTERN.pattern()");
                    i15 = StringsKt.q0(pattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i12 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String group6 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group6, "matcher.group(1)");
                    i12 = Integer.parseInt(group6);
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i11, false);
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
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
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

        private final long parseMaxAge(String str) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String encodedPath = httpUrl.encodedPath();
            if (Intrinsics.areEqual(encodedPath, str)) {
                return true;
            }
            if (StringsKt.V(encodedPath, str, false, 2, null) && (StringsKt.F(str, DomExceptionUtils.SEPARATOR, false, 2, null) || encodedPath.charAt(str.length()) == '/')) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Cookie parse(@NotNull HttpUrl url, @NotNull String setCookie) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0157  */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.applovin.shadow.okhttp3.Cookie parse$okhttp(long r26, @org.jetbrains.annotations.NotNull com.applovin.shadow.okhttp3.HttpUrl r28, @org.jetbrains.annotations.NotNull java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 363
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okhttp3.Cookie.Companion.parse$okhttp(long, com.applovin.shadow.okhttp3.HttpUrl, java.lang.String):com.applovin.shadow.okhttp3.Cookie");
        }

        @NotNull
        public final List<Cookie> parseAll(@NotNull HttpUrl url, @NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            List<String> values = headers.values("Set-Cookie");
            int size = values.size();
            ArrayList arrayList = null;
            for (int i10 = 0; i10 < size; i10++) {
                Cookie parse = parse(url, values.get(i10));
                if (parse != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(parse);
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

    @Nullable
    public static final Cookie parse(@NotNull HttpUrl httpUrl, @NotNull String str) {
        return Companion.parse(httpUrl, str);
    }

    @NotNull
    public static final List<Cookie> parseAll(@NotNull HttpUrl httpUrl, @NotNull Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_domain  reason: not valid java name */
    public final String m4498deprecated_domain() {
        return this.domain;
    }

    @ms.c
    /* renamed from: -deprecated_expiresAt  reason: not valid java name */
    public final long m4499deprecated_expiresAt() {
        return this.expiresAt;
    }

    @ms.c
    /* renamed from: -deprecated_hostOnly  reason: not valid java name */
    public final boolean m4500deprecated_hostOnly() {
        return this.hostOnly;
    }

    @ms.c
    /* renamed from: -deprecated_httpOnly  reason: not valid java name */
    public final boolean m4501deprecated_httpOnly() {
        return this.httpOnly;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_name  reason: not valid java name */
    public final String m4502deprecated_name() {
        return this.name;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_path  reason: not valid java name */
    public final String m4503deprecated_path() {
        return this.path;
    }

    @ms.c
    /* renamed from: -deprecated_persistent  reason: not valid java name */
    public final boolean m4504deprecated_persistent() {
        return this.persistent;
    }

    @ms.c
    /* renamed from: -deprecated_secure  reason: not valid java name */
    public final boolean m4505deprecated_secure() {
        return this.secure;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_value  reason: not valid java name */
    public final String m4506deprecated_value() {
        return this.value;
    }

    @NotNull
    public final String domain() {
        return this.domain;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.name, this.name) && Intrinsics.areEqual(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Intrinsics.areEqual(cookie.domain, this.domain) && Intrinsics.areEqual(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + Long.hashCode(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + Boolean.hashCode(this.secure)) * 31) + Boolean.hashCode(this.httpOnly)) * 31) + Boolean.hashCode(this.persistent)) * 31) + Boolean.hashCode(this.hostOnly);
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(@NotNull HttpUrl url) {
        boolean domainMatch;
        Intrinsics.checkNotNullParameter(url, "url");
        if (!this.hostOnly) {
            domainMatch = Companion.domainMatch(url.host(), this.domain);
        } else {
            domainMatch = Intrinsics.areEqual(url.host(), this.domain);
        }
        if (!domainMatch || !Companion.pathMatch(url, this.path)) {
            return false;
        }
        if (this.secure && !url.isHttps()) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String name() {
        return this.name;
    }

    @NotNull
    public final String path() {
        return this.path;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean secure() {
        return this.secure;
    }

    @NotNull
    public String toString() {
        return toString$okhttp(false);
    }

    @NotNull
    public final String toString$okhttp(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append('=');
        sb2.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.domain);
        }
        sb2.append("; path=");
        sb2.append(this.path);
        if (this.secure) {
            sb2.append("; secure");
        }
        if (this.httpOnly) {
            sb2.append("; httponly");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString()");
        return sb3;
    }

    @NotNull
    public final String value() {
        return this.value;
    }

    private Cookie(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j10;
        this.domain = str3;
        this.path = str4;
        this.secure = z10;
        this.httpOnly = z11;
        this.persistent = z12;
        this.hostOnly = z13;
    }
}
