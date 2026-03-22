package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c5.g;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* compiled from: CCTDestination.java */
/* loaded from: classes4.dex */
public final class a implements g {

    /* renamed from: c  reason: collision with root package name */
    static final String f17006c;

    /* renamed from: d  reason: collision with root package name */
    static final String f17007d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f17008e;

    /* renamed from: f  reason: collision with root package name */
    private static final Set<a5.c> f17009f;

    /* renamed from: g  reason: collision with root package name */
    public static final a f17010g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f17011h;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f17012a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f17013b;

    static {
        String a10 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f17006c = a10;
        String a11 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f17007d = a11;
        String a12 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f17008e = a12;
        f17009f = Collections.unmodifiableSet(new HashSet(Arrays.asList(a5.c.b("proto"), a5.c.b("json"))));
        f17010g = new a(a10, null);
        f17011h = new a(a11, a12);
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.f17012a = str;
        this.f17013b = str2;
    }

    @NonNull
    public static a c(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // c5.g
    public Set<a5.c> a() {
        return f17009f;
    }

    @Nullable
    public byte[] b() {
        String str = this.f17013b;
        if (str == null && this.f17012a == null) {
            return null;
        }
        String str2 = this.f17012a;
        if (str == null) {
            str = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    public String d() {
        return this.f17013b;
    }

    @NonNull
    public String e() {
        return this.f17012a;
    }

    @Override // c5.f
    @Nullable
    public byte[] getExtras() {
        return b();
    }

    @Override // c5.f
    @NonNull
    public String getName() {
        return "cct";
    }
}
