package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final f f33997a = new f("NATIVE_AD_ORTB_RESPONSE_NULL_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final f f33998b = new f("NATIVE_AD_IMAGE_ASSET_MEDIA_FETCH_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final f f33999c = new f("NATIVE_AD_IMAGE_PREPARE_ASSET_UNKNOWN_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final f f34000d = new f("NATIVE_AD_VIDEO_ASSET_MEDIA_NOT_ENOUGH_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final f f34001e = new f("NATIVE_AD_VIDEO_ASSET_MEDIA_FETCH_ERROR", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ f[] f34002f;

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34003g;

    static {
        f[] b10 = b();
        f34002f = b10;
        f34003g = kotlin.enums.a.a(b10);
    }

    public f(String str, int i10) {
    }

    public static final /* synthetic */ f[] b() {
        return new f[]{f33997a, f33998b, f33999c, f34000d, f34001e};
    }

    @NotNull
    public static ss.a<f> c() {
        return f34003g;
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f34002f.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
