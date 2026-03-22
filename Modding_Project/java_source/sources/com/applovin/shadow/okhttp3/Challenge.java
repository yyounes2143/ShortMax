package com.applovin.shadow.okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Challenge.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Challenge {
    @NotNull
    private final Map<String, String> authParams;
    @NotNull
    private final String scheme;

    public Challenge(@NotNull String scheme, @NotNull Map<String, String> authParams) {
        String str;
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        Intrinsics.checkNotNullParameter(authParams, "authParams");
        this.scheme = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : authParams.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                str = key.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            linkedHashMap.put(str, value);
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.authParams = unmodifiableMap;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_authParams  reason: not valid java name */
    public final Map<String, String> m4490deprecated_authParams() {
        return this.authParams;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_charset  reason: not valid java name */
    public final Charset m4491deprecated_charset() {
        return charset();
    }

    @ms.c
    @Nullable
    /* renamed from: -deprecated_realm  reason: not valid java name */
    public final String m4492deprecated_realm() {
        return realm();
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_scheme  reason: not valid java name */
    public final String m4493deprecated_scheme() {
        return this.scheme;
    }

    @NotNull
    public final Map<String, String> authParams() {
        return this.authParams;
    }

    @NotNull
    public final Charset charset() {
        String str = this.authParams.get("charset");
        if (str != null) {
            try {
                Charset forName = Charset.forName(str);
                Intrinsics.checkNotNullExpressionValue(forName, "forName(charset)");
                return forName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        Intrinsics.checkNotNullExpressionValue(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (Intrinsics.areEqual(challenge.scheme, this.scheme) && Intrinsics.areEqual(challenge.authParams, this.authParams)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.scheme.hashCode()) * 31) + this.authParams.hashCode();
    }

    @Nullable
    public final String realm() {
        return this.authParams.get("realm");
    }

    @NotNull
    public final String scheme() {
        return this.scheme;
    }

    @NotNull
    public String toString() {
        return this.scheme + " authParams=" + this.authParams;
    }

    @NotNull
    public final Challenge withCharset(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        Map A = p0.A(this.authParams);
        String name = charset.name();
        Intrinsics.checkNotNullExpressionValue(name, "charset.name()");
        A.put("charset", name);
        return new Challenge(this.scheme, A);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Challenge(@org.jetbrains.annotations.NotNull java.lang.String r2, @org.jetbrains.annotations.NotNull java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "scheme"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "realm"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            java.lang.String r0 = "singletonMap(\"realm\", realm)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okhttp3.Challenge.<init>(java.lang.String, java.lang.String):void");
    }
}
