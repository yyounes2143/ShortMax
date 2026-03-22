package okhttp3;

import androidx.webkit.ProxyConfig;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.d;
import kotlin.ranges.e;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpUrl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpUrl {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final Companion f63457k = new Companion(null);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final char[] f63458l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63459a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f63460b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f63461c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f63462d;

    /* renamed from: e  reason: collision with root package name */
    private final int f63463e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f63464f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final List<String> f63465g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f63466h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final String f63467i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f63468j;

    /* compiled from: HttpUrl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1869:1\n1#2:1870\n1549#3:1871\n1620#3,3:1872\n1549#3:1875\n1620#3,3:1876\n*S KotlinDebug\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n*L\n1180#1:1871\n1180#1:1872,3\n1181#1:1875\n1181#1:1876,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        public static final Companion f63469i = new Companion(null);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f63470a;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f63473d;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final List<String> f63475f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private List<String> f63476g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f63477h;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f63471b = "";
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private String f63472c = "";

        /* renamed from: e  reason: collision with root package name */
        private int f63474e = -1;

        /* compiled from: HttpUrl.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int e(String str, int i10, int i11) {
                try {
                    int parseInt = Integer.parseInt(Companion.b(HttpUrl.f63457k, str, i10, i11, "", false, false, false, false, null, 248, null));
                    if (1 > parseInt || parseInt >= 65536) {
                        return -1;
                    }
                    return parseInt;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int f(String str, int i10, int i11) {
                while (i10 < i11) {
                    char charAt = str.charAt(i10);
                    if (charAt == '[') {
                        do {
                            i10++;
                            if (i10 < i11) {
                            }
                        } while (str.charAt(i10) != ']');
                    } else if (charAt == ':') {
                        return i10;
                    }
                    i10++;
                }
                return i11;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int g(String str, int i10, int i11) {
                if (i11 - i10 < 2) {
                    return -1;
                }
                char charAt = str.charAt(i10);
                if ((Intrinsics.compare((int) charAt, 97) < 0 || Intrinsics.compare((int) charAt, 122) > 0) && (Intrinsics.compare((int) charAt, 65) < 0 || Intrinsics.compare((int) charAt, 90) > 0)) {
                    return -1;
                }
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        return -1;
                    }
                    char charAt2 = str.charAt(i10);
                    if ('a' > charAt2 || charAt2 >= '{') {
                        if ('A' > charAt2 || charAt2 >= '[') {
                            if ('0' > charAt2 || charAt2 >= ':') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 != ':') {
                                        return -1;
                                    }
                                    return i10;
                                }
                            }
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int h(String str, int i10, int i11) {
                int i12 = 0;
                while (i10 < i11) {
                    char charAt = str.charAt(i10);
                    if (charAt != '\\' && charAt != '/') {
                        break;
                    }
                    i12++;
                    i10++;
                }
                return i12;
            }

            private Companion() {
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.f63475f = arrayList;
            arrayList.add("");
        }

        private final int d() {
            int i10 = this.f63474e;
            if (i10 == -1) {
                Companion companion = HttpUrl.f63457k;
                String str = this.f63470a;
                Intrinsics.checkNotNull(str);
                return companion.c(str);
            }
            return i10;
        }

        private final boolean h(String str) {
            if (Intrinsics.areEqual(str, ".") || StringsKt.G(str, "%2e", true)) {
                return true;
            }
            return false;
        }

        private final boolean i(String str) {
            if (Intrinsics.areEqual(str, "..") || StringsKt.G(str, "%2e.", true) || StringsKt.G(str, ".%2e", true) || StringsKt.G(str, "%2e%2e", true)) {
                return true;
            }
            return false;
        }

        private final void l() {
            List<String> list = this.f63475f;
            if (list.remove(list.size() - 1).length() == 0 && !this.f63475f.isEmpty()) {
                List<String> list2 = this.f63475f;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f63475f.add("");
        }

        private final void n(String str, int i10, int i11, boolean z10, boolean z11) {
            String b10 = Companion.b(HttpUrl.f63457k, str, i10, i11, com.applovin.shadow.okhttp3.HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, false, null, 240, null);
            if (h(b10)) {
                return;
            }
            if (i(b10)) {
                l();
                return;
            }
            List<String> list = this.f63475f;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.f63475f;
                list2.set(list2.size() - 1, b10);
            } else {
                this.f63475f.add(b10);
            }
            if (z10) {
                this.f63475f.add("");
            }
        }

        private final void p(String str, int i10, int i11) {
            boolean z10;
            if (i10 == i11) {
                return;
            }
            char charAt = str.charAt(i10);
            if (charAt != '/' && charAt != '\\') {
                List<String> list = this.f63475f;
                list.set(list.size() - 1, "");
            } else {
                this.f63475f.clear();
                this.f63475f.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = Util.q(str, "/\\", i12, i11);
                    if (i10 < i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    n(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        @NotNull
        public final Builder a(@NotNull String encodedName, @Nullable String str) {
            String str2;
            Intrinsics.checkNotNullParameter(encodedName, "encodedName");
            if (this.f63476g == null) {
                this.f63476g = new ArrayList();
            }
            List<String> list = this.f63476g;
            Intrinsics.checkNotNull(list);
            Companion companion = HttpUrl.f63457k;
            list.add(Companion.b(companion, encodedName, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> list2 = this.f63476g;
            Intrinsics.checkNotNull(list2);
            if (str != null) {
                str2 = Companion.b(companion, str, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null);
            } else {
                str2 = null;
            }
            list2.add(str2);
            return this;
        }

        @NotNull
        public final Builder b(@NotNull String name, @Nullable String str) {
            String str2;
            Intrinsics.checkNotNullParameter(name, "name");
            if (this.f63476g == null) {
                this.f63476g = new ArrayList();
            }
            List<String> list = this.f63476g;
            Intrinsics.checkNotNull(list);
            Companion companion = HttpUrl.f63457k;
            list.add(Companion.b(companion, name, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.f63476g;
            Intrinsics.checkNotNull(list2);
            if (str != null) {
                str2 = Companion.b(companion, str, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null);
            } else {
                str2 = null;
            }
            list2.add(str2);
            return this;
        }

        @NotNull
        public final HttpUrl c() {
            ArrayList arrayList;
            String str;
            String str2;
            String str3 = this.f63470a;
            if (str3 != null) {
                Companion companion = HttpUrl.f63457k;
                String h10 = Companion.h(companion, this.f63471b, 0, 0, false, 7, null);
                String h11 = Companion.h(companion, this.f63472c, 0, 0, false, 7, null);
                String str4 = this.f63473d;
                if (str4 != null) {
                    int d10 = d();
                    List<String> list = this.f63475f;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list, 10));
                    for (String str5 : list) {
                        arrayList2.add(Companion.h(HttpUrl.f63457k, str5, 0, 0, false, 7, null));
                    }
                    List<String> list2 = this.f63476g;
                    if (list2 != null) {
                        List<String> list3 = list2;
                        arrayList = new ArrayList(CollectionsKt.z(list3, 10));
                        for (String str6 : list3) {
                            if (str6 != null) {
                                str2 = Companion.h(HttpUrl.f63457k, str6, 0, 0, true, 3, null);
                            } else {
                                str2 = null;
                            }
                            arrayList.add(str2);
                        }
                    } else {
                        arrayList = null;
                    }
                    String str7 = this.f63477h;
                    if (str7 != null) {
                        str = Companion.h(HttpUrl.f63457k, str7, 0, 0, false, 7, null);
                    } else {
                        str = null;
                    }
                    return new HttpUrl(str3, h10, h11, str4, d10, arrayList2, arrayList, str, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        @NotNull
        public final Builder e(@Nullable String str) {
            List<String> list;
            if (str != null) {
                Companion companion = HttpUrl.f63457k;
                String b10 = Companion.b(companion, str, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null);
                if (b10 != null) {
                    list = companion.j(b10);
                    this.f63476g = list;
                    return this;
                }
            }
            list = null;
            this.f63476g = list;
            return this;
        }

        @NotNull
        public final List<String> f() {
            return this.f63475f;
        }

        @NotNull
        public final Builder g(@NotNull String host) {
            Intrinsics.checkNotNullParameter(host, "host");
            String e10 = HostnamesKt.e(Companion.h(HttpUrl.f63457k, host, 0, 0, false, 7, null));
            if (e10 != null) {
                this.f63473d = e10;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + host);
        }

        @NotNull
        public final Builder j(@Nullable HttpUrl httpUrl, @NotNull String str) {
            int q10;
            char c10;
            int i10;
            int i11;
            boolean z10;
            int i12;
            boolean z11;
            String input = str;
            Intrinsics.checkNotNullParameter(input, "input");
            int A = Util.A(input, 0, 0, 3, null);
            int C = Util.C(input, A, 0, 2, null);
            Companion companion = f63469i;
            int g10 = companion.g(input, A, C);
            boolean z12 = true;
            char c11 = 65535;
            if (g10 != -1) {
                if (StringsKt.S(input, "https:", A, true)) {
                    this.f63470a = "https";
                    A += 6;
                } else if (StringsKt.S(input, "http:", A, true)) {
                    this.f63470a = ProxyConfig.MATCH_HTTP;
                    A += 5;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Expected URL scheme 'http' or 'https' but was '");
                    String substring = input.substring(0, g10);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb2.append(substring);
                    sb2.append('\'');
                    throw new IllegalArgumentException(sb2.toString());
                }
            } else if (httpUrl != null) {
                this.f63470a = httpUrl.t();
            } else {
                if (str.length() > 6) {
                    input = StringsKt.I1(input, 6) + "...";
                }
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no scheme was found for " + input);
            }
            int h10 = companion.h(input, A, C);
            char c12 = '?';
            char c13 = '#';
            if (h10 < 2 && httpUrl != null && Intrinsics.areEqual(httpUrl.t(), this.f63470a)) {
                this.f63471b = httpUrl.g();
                this.f63472c = httpUrl.c();
                this.f63473d = httpUrl.i();
                this.f63474e = httpUrl.o();
                this.f63475f.clear();
                this.f63475f.addAll(httpUrl.e());
                if (A == C || input.charAt(A) == '#') {
                    e(httpUrl.f());
                }
                i10 = C;
            } else {
                boolean z13 = false;
                boolean z14 = false;
                int i13 = A + h10;
                while (true) {
                    q10 = Util.q(input, "@/\\?#", i13, C);
                    if (q10 != C) {
                        c10 = input.charAt(q10);
                    } else {
                        c10 = c11;
                    }
                    if (c10 == c11 || c10 == c13 || c10 == '/' || c10 == '\\' || c10 == c12) {
                        break;
                    } else if (c10 == '@') {
                        if (!z13) {
                            int p10 = Util.p(input, ':', i13, q10);
                            Companion companion2 = HttpUrl.f63457k;
                            z10 = z12;
                            String b10 = Companion.b(companion2, str, i13, p10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z14) {
                                b10 = this.f63471b + "%40" + b10;
                            }
                            this.f63471b = b10;
                            if (p10 != q10) {
                                i11 = q10;
                                this.f63472c = Companion.b(companion2, str, p10 + 1, q10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z11 = z10;
                            } else {
                                i11 = q10;
                                z11 = z13;
                            }
                            z13 = z11;
                            i12 = C;
                            z14 = z10;
                        } else {
                            i11 = q10;
                            z10 = z12;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(this.f63472c);
                            sb3.append("%40");
                            i12 = C;
                            sb3.append(Companion.b(HttpUrl.f63457k, str, i13, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                            this.f63472c = sb3.toString();
                        }
                        i13 = i11 + 1;
                        z12 = z10;
                        C = i12;
                        c13 = '#';
                        c12 = '?';
                        c11 = 65535;
                    }
                }
                i10 = C;
                Companion companion3 = f63469i;
                int f10 = companion3.f(input, i13, q10);
                int i14 = f10 + 1;
                if (i14 < q10) {
                    this.f63473d = HostnamesKt.e(Companion.h(HttpUrl.f63457k, str, i13, f10, false, 4, null));
                    int e10 = companion3.e(input, i14, q10);
                    this.f63474e = e10;
                    if (e10 == -1) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Invalid URL port: \"");
                        String substring2 = input.substring(i14, q10);
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb4.append(substring2);
                        sb4.append('\"');
                        throw new IllegalArgumentException(sb4.toString().toString());
                    }
                } else {
                    Companion companion4 = HttpUrl.f63457k;
                    this.f63473d = HostnamesKt.e(Companion.h(companion4, str, i13, f10, false, 4, null));
                    String str2 = this.f63470a;
                    Intrinsics.checkNotNull(str2);
                    this.f63474e = companion4.c(str2);
                }
                if (this.f63473d != null) {
                    A = q10;
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Invalid URL host: \"");
                    String substring3 = input.substring(i13, f10);
                    Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb5.append(substring3);
                    sb5.append('\"');
                    throw new IllegalArgumentException(sb5.toString().toString());
                }
            }
            int i15 = i10;
            int q11 = Util.q(input, "?#", A, i15);
            p(input, A, q11);
            if (q11 < i15 && input.charAt(q11) == '?') {
                int p11 = Util.p(input, '#', q11, i15);
                Companion companion5 = HttpUrl.f63457k;
                this.f63476g = companion5.j(Companion.b(companion5, str, q11 + 1, p11, com.applovin.shadow.okhttp3.HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                q11 = p11;
            }
            if (q11 < i15 && input.charAt(q11) == '#') {
                this.f63477h = Companion.b(HttpUrl.f63457k, str, q11 + 1, i15, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        @NotNull
        public final Builder k(@NotNull String password) {
            Intrinsics.checkNotNullParameter(password, "password");
            this.f63472c = Companion.b(HttpUrl.f63457k, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        @NotNull
        public final Builder m(int i10) {
            if (1 <= i10 && i10 < 65536) {
                this.f63474e = i10;
                return this;
            }
            throw new IllegalArgumentException(("unexpected port: " + i10).toString());
        }

        @NotNull
        public final Builder o() {
            String str;
            String str2;
            String str3 = this.f63473d;
            String str4 = null;
            if (str3 != null) {
                str = new Regex("[\"<>^`{|}]").replace(str3, "");
            } else {
                str = null;
            }
            this.f63473d = str;
            int size = this.f63475f.size();
            for (int i10 = 0; i10 < size; i10++) {
                List<String> list = this.f63475f;
                list.set(i10, Companion.b(HttpUrl.f63457k, list.get(i10), 0, 0, com.applovin.shadow.okhttp3.HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, null));
            }
            List<String> list2 = this.f63476g;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str5 = list2.get(i11);
                    if (str5 != null) {
                        str2 = Companion.b(HttpUrl.f63457k, str5, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, null);
                    } else {
                        str2 = null;
                    }
                    list2.set(i11, str2);
                }
            }
            String str6 = this.f63477h;
            if (str6 != null) {
                str4 = Companion.b(HttpUrl.f63457k, str6, 0, 0, com.applovin.shadow.okhttp3.HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null);
            }
            this.f63477h = str4;
            return this;
        }

        @NotNull
        public final Builder q(@NotNull String scheme) {
            Intrinsics.checkNotNullParameter(scheme, "scheme");
            if (StringsKt.G(scheme, ProxyConfig.MATCH_HTTP, true)) {
                this.f63470a = ProxyConfig.MATCH_HTTP;
            } else if (StringsKt.G(scheme, "https", true)) {
                this.f63470a = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + scheme);
            }
            return this;
        }

        public final void r(@Nullable String str) {
            this.f63477h = str;
        }

        public final void s(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f63472c = str;
        }

        public final void t(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f63471b = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
            if (r1 != r4.c(r3)) goto L31;
         */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                r6 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r6.f63470a
                if (r1 == 0) goto L12
                r0.append(r1)
                java.lang.String r1 = "://"
                r0.append(r1)
                goto L17
            L12:
                java.lang.String r1 = "//"
                r0.append(r1)
            L17:
                java.lang.String r1 = r6.f63471b
                int r1 = r1.length()
                r2 = 58
                if (r1 <= 0) goto L22
                goto L2a
            L22:
                java.lang.String r1 = r6.f63472c
                int r1 = r1.length()
                if (r1 <= 0) goto L44
            L2a:
                java.lang.String r1 = r6.f63471b
                r0.append(r1)
                java.lang.String r1 = r6.f63472c
                int r1 = r1.length()
                if (r1 <= 0) goto L3f
                r0.append(r2)
                java.lang.String r1 = r6.f63472c
                r0.append(r1)
            L3f:
                r1 = 64
                r0.append(r1)
            L44:
                java.lang.String r1 = r6.f63473d
                if (r1 == 0) goto L69
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                r3 = 2
                r4 = 0
                r5 = 0
                boolean r1 = kotlin.text.StringsKt.a0(r1, r2, r5, r3, r4)
                if (r1 == 0) goto L64
                r1 = 91
                r0.append(r1)
                java.lang.String r1 = r6.f63473d
                r0.append(r1)
                r1 = 93
                r0.append(r1)
                goto L69
            L64:
                java.lang.String r1 = r6.f63473d
                r0.append(r1)
            L69:
                int r1 = r6.f63474e
                r3 = -1
                if (r1 != r3) goto L72
                java.lang.String r1 = r6.f63470a
                if (r1 == 0) goto L8b
            L72:
                int r1 = r6.d()
                java.lang.String r3 = r6.f63470a
                if (r3 == 0) goto L85
                okhttp3.HttpUrl$Companion r4 = okhttp3.HttpUrl.f63457k
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                int r3 = r4.c(r3)
                if (r1 == r3) goto L8b
            L85:
                r0.append(r2)
                r0.append(r1)
            L8b:
                okhttp3.HttpUrl$Companion r1 = okhttp3.HttpUrl.f63457k
                java.util.List<java.lang.String> r2 = r6.f63475f
                r1.i(r2, r0)
                java.util.List<java.lang.String> r2 = r6.f63476g
                if (r2 == 0) goto La3
                r2 = 63
                r0.append(r2)
                java.util.List<java.lang.String> r2 = r6.f63476g
                kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                r1.k(r2, r0)
            La3:
                java.lang.String r1 = r6.f63477h
                if (r1 == 0) goto Lb1
                r1 = 35
                r0.append(r1)
                java.lang.String r1 = r6.f63477h
                r0.append(r1)
            Lb1:
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public final void u(@Nullable String str) {
            this.f63473d = str;
        }

        public final void v(int i10) {
            this.f63474e = i10;
        }

        public final void w(@Nullable String str) {
            this.f63470a = str;
        }

        @NotNull
        public final Builder x(@NotNull String username) {
            Intrinsics.checkNotNullParameter(username, "username");
            this.f63471b = Companion.b(HttpUrl.f63457k, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }
    }

    /* compiled from: HttpUrl.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String b(Companion companion, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset, int i12, Object obj) {
            int i13;
            int i14;
            boolean z14;
            boolean z15;
            boolean z16;
            boolean z17;
            Charset charset2;
            if ((i12 & 1) != 0) {
                i13 = 0;
            } else {
                i13 = i10;
            }
            if ((i12 & 2) != 0) {
                i14 = str.length();
            } else {
                i14 = i11;
            }
            if ((i12 & 8) != 0) {
                z14 = false;
            } else {
                z14 = z10;
            }
            if ((i12 & 16) != 0) {
                z15 = false;
            } else {
                z15 = z11;
            }
            if ((i12 & 32) != 0) {
                z16 = false;
            } else {
                z16 = z12;
            }
            if ((i12 & 64) != 0) {
                z17 = false;
            } else {
                z17 = z13;
            }
            if ((i12 & 128) != 0) {
                charset2 = null;
            } else {
                charset2 = charset;
            }
            return companion.a(str, i13, i14, str2, z14, z15, z16, z17, charset2);
        }

        private final boolean e(String str, int i10, int i11) {
            int i12 = i10 + 2;
            if (i12 < i11 && str.charAt(i10) == '%' && Util.I(str.charAt(i10 + 1)) != -1 && Util.I(str.charAt(i12)) != -1) {
                return true;
            }
            return false;
        }

        public static /* synthetic */ String h(Companion companion, String str, int i10, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = str.length();
            }
            if ((i12 & 4) != 0) {
                z10 = false;
            }
            return companion.g(str, i10, i11, z10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0064, code lost:
            if (e(r16, r5, r18) == false) goto L39;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void l(okio.Buffer r15, java.lang.String r16, int r17, int r18, java.lang.String r19, boolean r20, boolean r21, boolean r22, boolean r23, java.nio.charset.Charset r24) {
            /*
                r14 = this;
                r0 = r15
                r1 = r16
                r2 = r18
                r3 = r24
                r4 = 0
                r5 = r17
                r6 = r4
            Lb:
                if (r5 >= r2) goto Lbc
                int r7 = r1.codePointAt(r5)
                if (r20 == 0) goto L28
                r8 = 9
                if (r7 == r8) goto L23
                r8 = 10
                if (r7 == r8) goto L23
                r8 = 12
                if (r7 == r8) goto L23
                r8 = 13
                if (r7 != r8) goto L28
            L23:
                r8 = r14
                r12 = r19
                goto Lb5
            L28:
                r8 = 43
                if (r7 != r8) goto L39
                if (r22 == 0) goto L39
                if (r20 == 0) goto L33
                java.lang.String r8 = "+"
                goto L35
            L33:
                java.lang.String r8 = "%2B"
            L35:
                r15.writeUtf8(r8)
                goto L23
            L39:
                r8 = 32
                r9 = 37
                if (r7 < r8) goto L4a
                r8 = 127(0x7f, float:1.78E-43)
                if (r7 == r8) goto L4a
                r8 = 128(0x80, float:1.794E-43)
                if (r7 < r8) goto L4e
                if (r23 == 0) goto L4a
                goto L4e
            L4a:
                r8 = r14
                r12 = r19
                goto L6f
            L4e:
                char r8 = (char) r7
                r10 = 0
                r11 = 2
                r12 = r19
                boolean r8 = kotlin.text.StringsKt.a0(r12, r8, r10, r11, r4)
                if (r8 != 0) goto L69
                if (r7 != r9) goto L67
                if (r20 == 0) goto L69
                if (r21 == 0) goto L67
                r8 = r14
                boolean r10 = r14.e(r1, r5, r2)
                if (r10 != 0) goto L6b
                goto L6f
            L67:
                r8 = r14
                goto L6b
            L69:
                r8 = r14
                goto L6f
            L6b:
                r15.writeUtf8CodePoint(r7)
                goto Lb5
            L6f:
                if (r6 != 0) goto L76
                okio.Buffer r6 = new okio.Buffer
                r6.<init>()
            L76:
                if (r3 == 0) goto L8a
                java.nio.charset.Charset r10 = java.nio.charset.StandardCharsets.UTF_8
                boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r10)
                if (r10 == 0) goto L81
                goto L8a
            L81:
                int r10 = java.lang.Character.charCount(r7)
                int r10 = r10 + r5
                r6.writeString(r1, r5, r10, r3)
                goto L8d
            L8a:
                r6.writeUtf8CodePoint(r7)
            L8d:
                boolean r10 = r6.exhausted()
                if (r10 != 0) goto Lb5
                byte r10 = r6.readByte()
                r11 = r10 & 255(0xff, float:3.57E-43)
                r15.writeByte(r9)
                char[] r13 = okhttp3.HttpUrl.a()
                int r11 = r11 >> 4
                r11 = r11 & 15
                char r11 = r13[r11]
                r15.writeByte(r11)
                char[] r11 = okhttp3.HttpUrl.a()
                r10 = r10 & 15
                char r10 = r11[r10]
                r15.writeByte(r10)
                goto L8d
            Lb5:
                int r7 = java.lang.Character.charCount(r7)
                int r5 = r5 + r7
                goto Lb
            Lbc:
                r8 = r14
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Companion.l(okio.Buffer, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):void");
        }

        private final void m(Buffer buffer, String str, int i10, int i11, boolean z10) {
            int i12;
            while (i10 < i11) {
                int codePointAt = str.codePointAt(i10);
                if (codePointAt == 37 && (i12 = i10 + 2) < i11) {
                    int I = Util.I(str.charAt(i10 + 1));
                    int I2 = Util.I(str.charAt(i12));
                    if (I != -1 && I2 != -1) {
                        buffer.writeByte((I << 4) + I2);
                        i10 = Character.charCount(codePointAt) + i12;
                    }
                    buffer.writeUtf8CodePoint(codePointAt);
                    i10 += Character.charCount(codePointAt);
                } else {
                    if (codePointAt == 43 && z10) {
                        buffer.writeByte(32);
                        i10++;
                    }
                    buffer.writeUtf8CodePoint(codePointAt);
                    i10 += Character.charCount(codePointAt);
                }
            }
        }

        @NotNull
        public final String a(@NotNull String str, int i10, int i11, @NotNull String encodeSet, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable Charset charset) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
            int i12 = i10;
            while (i12 < i11) {
                int codePointAt = str.codePointAt(i12);
                if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z13) && !StringsKt.a0(encodeSet, (char) codePointAt, false, 2, null))) {
                    if (codePointAt == 37) {
                        if (z10) {
                            if (z11) {
                                if (!e(str, i12, i11)) {
                                    Buffer buffer = new Buffer();
                                    buffer.writeUtf8(str, i10, i12);
                                    l(buffer, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                                    return buffer.readUtf8();
                                }
                                if (codePointAt == 43 || !z12) {
                                    i12 += Character.charCount(codePointAt);
                                } else {
                                    Buffer buffer2 = new Buffer();
                                    buffer2.writeUtf8(str, i10, i12);
                                    l(buffer2, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                                    return buffer2.readUtf8();
                                }
                            }
                        }
                    }
                    if (codePointAt == 43) {
                    }
                    i12 += Character.charCount(codePointAt);
                }
                Buffer buffer22 = new Buffer();
                buffer22.writeUtf8(str, i10, i12);
                l(buffer22, str, i12, i11, encodeSet, z10, z11, z12, z13, charset);
                return buffer22.readUtf8();
            }
            String substring = str.substring(i10, i11);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final int c(@NotNull String scheme) {
            Intrinsics.checkNotNullParameter(scheme, "scheme");
            if (Intrinsics.areEqual(scheme, ProxyConfig.MATCH_HTTP)) {
                return 80;
            }
            if (Intrinsics.areEqual(scheme, "https")) {
                return 443;
            }
            return -1;
        }

        @NotNull
        public final HttpUrl d(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return new Builder().j(null, str).c();
        }

        @Nullable
        public final HttpUrl f(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return d(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @NotNull
        public final String g(@NotNull String str, int i10, int i11, boolean z10) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            for (int i12 = i10; i12 < i11; i12++) {
                char charAt = str.charAt(i12);
                if (charAt == '%' || (charAt == '+' && z10)) {
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(str, i10, i12);
                    m(buffer, str, i12, i11, z10);
                    return buffer.readUtf8();
                }
            }
            String substring = str.substring(i10, i11);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final void i(@NotNull List<String> list, @NotNull StringBuilder out) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            Intrinsics.checkNotNullParameter(out, "out");
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                out.append('/');
                out.append(list.get(i10));
            }
        }

        @NotNull
        public final List<String> j(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 <= str.length()) {
                int p02 = StringsKt.p0(str, '&', i10, false, 4, null);
                if (p02 == -1) {
                    p02 = str.length();
                }
                int i11 = p02;
                int p03 = StringsKt.p0(str, '=', i10, false, 4, null);
                if (p03 != -1 && p03 <= i11) {
                    String substring = str.substring(i10, p03);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    String substring2 = str.substring(p03 + 1, i11);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                } else {
                    String substring3 = str.substring(i10, i11);
                    Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                    arrayList.add(null);
                }
                i10 = i11 + 1;
            }
            return arrayList;
        }

        public final void k(@NotNull List<String> list, @NotNull StringBuilder out) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            Intrinsics.checkNotNullParameter(out, "out");
            d u10 = e.u(e.v(0, list.size()), 2);
            int c10 = u10.c();
            int d10 = u10.d();
            int e10 = u10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return;
            }
            while (true) {
                String str = list.get(c10);
                String str2 = list.get(c10 + 1);
                if (c10 > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return;
                }
            }
        }

        private Companion() {
        }
    }

    public HttpUrl(@NotNull String scheme, @NotNull String username, @NotNull String password, @NotNull String host, int i10, @NotNull List<String> pathSegments, @Nullable List<String> list, @Nullable String str, @NotNull String url) {
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f63459a = scheme;
        this.f63460b = username;
        this.f63461c = password;
        this.f63462d = host;
        this.f63463e = i10;
        this.f63464f = pathSegments;
        this.f63465g = list;
        this.f63466h = str;
        this.f63467i = url;
        this.f63468j = Intrinsics.areEqual(scheme, "https");
    }

    @NotNull
    public static final HttpUrl h(@NotNull String str) {
        return f63457k.d(str);
    }

    @Nullable
    public static final HttpUrl m(@NotNull String str) {
        return f63457k.f(str);
    }

    @Nullable
    public final String b() {
        if (this.f63466h == null) {
            return null;
        }
        String substring = this.f63467i.substring(StringsKt.p0(this.f63467i, '#', 0, false, 6, null) + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    @NotNull
    public final String c() {
        if (this.f63461c.length() == 0) {
            return "";
        }
        int p02 = StringsKt.p0(this.f63467i, '@', 0, false, 6, null);
        String substring = this.f63467i.substring(StringsKt.p0(this.f63467i, ':', this.f63459a.length() + 3, false, 4, null) + 1, p02);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public final String d() {
        int p02 = StringsKt.p0(this.f63467i, '/', this.f63459a.length() + 3, false, 4, null);
        String str = this.f63467i;
        String substring = this.f63467i.substring(p02, Util.q(str, "?#", p02, str.length()));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public final List<String> e() {
        int p02 = StringsKt.p0(this.f63467i, '/', this.f63459a.length() + 3, false, 4, null);
        String str = this.f63467i;
        int q10 = Util.q(str, "?#", p02, str.length());
        ArrayList arrayList = new ArrayList();
        while (p02 < q10) {
            int i10 = p02 + 1;
            int p10 = Util.p(this.f63467i, '/', i10, q10);
            String substring = this.f63467i.substring(i10, p10);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(substring);
            p02 = p10;
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof HttpUrl) && Intrinsics.areEqual(((HttpUrl) obj).f63467i, this.f63467i)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String f() {
        if (this.f63465g == null) {
            return null;
        }
        int p02 = StringsKt.p0(this.f63467i, '?', 0, false, 6, null) + 1;
        String str = this.f63467i;
        String substring = this.f63467i.substring(p02, Util.p(str, '#', p02, str.length()));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public final String g() {
        if (this.f63460b.length() == 0) {
            return "";
        }
        int length = this.f63459a.length() + 3;
        String str = this.f63467i;
        String substring = this.f63467i.substring(length, Util.q(str, ":@", length, str.length()));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public int hashCode() {
        return this.f63467i.hashCode();
    }

    @NotNull
    public final String i() {
        return this.f63462d;
    }

    public final boolean j() {
        return this.f63468j;
    }

    @NotNull
    public final Builder k() {
        int i10;
        Builder builder = new Builder();
        builder.w(this.f63459a);
        builder.t(g());
        builder.s(c());
        builder.u(this.f63462d);
        if (this.f63463e != f63457k.c(this.f63459a)) {
            i10 = this.f63463e;
        } else {
            i10 = -1;
        }
        builder.v(i10);
        builder.f().clear();
        builder.f().addAll(e());
        builder.e(f());
        builder.r(b());
        return builder;
    }

    @Nullable
    public final Builder l(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        try {
            return new Builder().j(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public final List<String> n() {
        return this.f63464f;
    }

    public final int o() {
        return this.f63463e;
    }

    @Nullable
    public final String p() {
        if (this.f63465g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        f63457k.k(this.f63465g, sb2);
        return sb2.toString();
    }

    @Nullable
    public final String q(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        List<String> list = this.f63465g;
        if (list == null) {
            return null;
        }
        d u10 = e.u(e.v(0, list.size()), 2);
        int c10 = u10.c();
        int d10 = u10.d();
        int e10 = u10.e();
        if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
            while (!Intrinsics.areEqual(name, this.f63465g.get(c10))) {
                if (c10 != d10) {
                    c10 += e10;
                }
            }
            return this.f63465g.get(c10 + 1);
        }
        return null;
    }

    @NotNull
    public final String r() {
        Builder l10 = l("/...");
        Intrinsics.checkNotNull(l10);
        return l10.x("").k("").c().toString();
    }

    @Nullable
    public final HttpUrl s(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        Builder l10 = l(link);
        if (l10 != null) {
            return l10.c();
        }
        return null;
    }

    @NotNull
    public final String t() {
        return this.f63459a;
    }

    @NotNull
    public String toString() {
        return this.f63467i;
    }

    @NotNull
    public final URI u() {
        String builder = k().o().toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e10) {
            try {
                URI create = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(builder, ""));
                Intrinsics.checkNotNullExpressionValue(create, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    @NotNull
    public final URL v() {
        try {
            return new URL(this.f63467i);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }
}
