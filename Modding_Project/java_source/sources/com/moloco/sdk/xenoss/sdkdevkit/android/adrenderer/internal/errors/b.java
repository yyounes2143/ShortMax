package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f33977a = new b("FULLSCREEN_AD_SHOW_FAILED_NO_SUPPORTED_TYPE", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ b[] f33978b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33979c;

    static {
        b[] b10 = b();
        f33978b = b10;
        f33979c = kotlin.enums.a.a(b10);
    }

    public b(String str, int i10) {
    }

    public static final /* synthetic */ b[] b() {
        return new b[]{f33977a};
    }

    @NotNull
    public static ss.a<b> c() {
        return f33979c;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f33978b.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
