package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class k implements c {
    public static final /* synthetic */ k[] G;
    public static final /* synthetic */ ss.a H;

    /* renamed from: a  reason: collision with root package name */
    public static final k f34023a = new k("VAST_AD_LOAD_INCOMPLETE_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final k f34024b = new k("VAST_AD_LOAD_XML_PARSE_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final k f34025c = new k("VAST_AD_LOAD_NO_XML_TAG_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final k f34026d = new k("VAST_AD_LOAD_NO_ADS_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final k f34027e = new k("VAST_AD_LOAD_WRAPPER_LIMIT_ERROR", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final k f34028f = new k("VAST_AD_LOAD_WRAPPER_TIMEOUT_ERROR", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final k f34029g = new k("VAST_AD_LOAD_WRAPPER_FETCH_ERROR", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final k f34030h = new k("VAST_AD_LOAD_INLINE_CREATIVES_EMPTY_ERROR", 7);

    /* renamed from: i  reason: collision with root package name */
    public static final k f34031i = new k("VAST_AD_LOAD_INLINE_CREATIVES_NO_LINEAR_ERROR", 8);

    /* renamed from: j  reason: collision with root package name */
    public static final k f34032j = new k("VAST_AD_LOAD_LINEAR_NOT_SUPPORTED_MEDIA_ERROR", 9);

    /* renamed from: k  reason: collision with root package name */
    public static final k f34033k = new k("VAST_AD_LOAD_MEDIA_FILE_CLIENT_HTTP_ERROR", 10);

    /* renamed from: l  reason: collision with root package name */
    public static final k f34034l = new k("VAST_AD_LOAD_MEDIA_FILE_SERVER_HTTP_ERROR", 11);

    /* renamed from: m  reason: collision with root package name */
    public static final k f34035m = new k("VAST_AD_LOAD_MEDIA_FILE_NO_NETWORK_HTTP_ERROR", 12);

    /* renamed from: n  reason: collision with root package name */
    public static final k f34036n = new k("VAST_AD_LOAD_MEDIA_FILE_UNKNOWN_HOST_HTTP_ERROR", 13);

    /* renamed from: o  reason: collision with root package name */
    public static final k f34037o = new k("VAST_AD_LOAD_MEDIA_FILE_SOCKET_HTTP_ERROR", 14);

    /* renamed from: p  reason: collision with root package name */
    public static final k f34038p = new k("VAST_AD_LOAD_MEDIA_FILE_HTTP_DISK_IO_ERROR", 15);

    /* renamed from: q  reason: collision with root package name */
    public static final k f34039q = new k("VAST_AD_LOAD_MEDIA_FILE_HTTP_DISK_SECURITY_ERROR", 16);

    /* renamed from: r  reason: collision with root package name */
    public static final k f34040r = new k("VAST_AD_LOAD_MEDIA_FILE_HTTP_SSL_ERROR", 17);

    /* renamed from: s  reason: collision with root package name */
    public static final k f34041s = new k("VAST_AD_LOAD_MEDIA_TMP_FILE_NOT_RENAMED_DISK_ERROR", 18);

    /* renamed from: t  reason: collision with root package name */
    public static final k f34042t = new k("VAST_AD_LOAD_MEDIA_FILE_NOT_CREATED_DISK_ERROR", 19);

    /* renamed from: u  reason: collision with root package name */
    public static final k f34043u = new k("VAST_AD_LOAD_MEDIA_FILE_NOT_CREATED_SECURITY_DISK_ERROR", 20);

    /* renamed from: v  reason: collision with root package name */
    public static final k f34044v = new k("VAST_AD_LOAD_MEDIA_FILE_NOT_CREATED_IO_DISK_ERROR", 21);

    /* renamed from: w  reason: collision with root package name */
    public static final k f34045w = new k("VAST_AD_LOAD_MEDIA_FILE_NOT_CREATED_UNKNOWN_DISK_ERROR", 22);

    /* renamed from: x  reason: collision with root package name */
    public static final k f34046x = new k("VAST_AD_LOAD_MEDIA_FILE_TIMEOUT_ERROR", 23);

    /* renamed from: y  reason: collision with root package name */
    public static final k f34047y = new k("VAST_AD_LOAD_MEDIA_FILE_TIMEOUT_NOT_ENOUGH_PLAYABLE_ERROR", 24);

    /* renamed from: z  reason: collision with root package name */
    public static final k f34048z = new k("VAST_AD_LOAD_MEDIA_FILE_UNABLE_TO_DETERMINE_TIMEOUT_ERROR", 25);
    public static final k A = new k("VAST_AD_LOAD_MEDIA_NUMBER_PARSE_ERROR", 26);
    public static final k B = new k("VAST_AD_LOAD_MEDIA_FILE_INVALID_URL_ERROR", 27);
    public static final k C = new k("VAST_AD_LOAD_MEDIA_FILE_NOT_FOUND_ERROR", 28);
    public static final k D = new k("VAST_AD_LOAD_MEDIA_FILE_UNKNOWN_MEDIA_FETCH_ERROR", 29);
    public static final k E = new k("VAST_AD_LOAD_MEDIA_FILE_UNKNOWN_ERROR", 30);
    public static final k F = new k("VAST_AD_LOAD_RENDER_AD_LOAD_ERROR", 31);

    static {
        k[] b10 = b();
        G = b10;
        H = kotlin.enums.a.a(b10);
    }

    public k(String str, int i10) {
    }

    public static final /* synthetic */ k[] b() {
        return new k[]{f34023a, f34024b, f34025c, f34026d, f34027e, f34028f, f34029g, f34030h, f34031i, f34032j, f34033k, f34034l, f34035m, f34036n, f34037o, f34038p, f34039q, f34040r, f34041s, f34042t, f34043u, f34044v, f34045w, f34046x, f34047y, f34048z, A, B, C, D, E, F};
    }

    @NotNull
    public static ss.a<k> c() {
        return H;
    }

    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    public static k[] values() {
        return (k[]) G.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }

    public final boolean d() {
        if (this != f34046x && this != f34047y && this != f34048z) {
            return false;
        }
        return true;
    }
}
