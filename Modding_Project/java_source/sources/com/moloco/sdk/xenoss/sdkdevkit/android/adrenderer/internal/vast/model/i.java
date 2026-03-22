package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f35581a = new i("Image", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final i f35582b = new i("JS", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ i[] f35583c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ ss.a f35584d;

    static {
        i[] a10 = a();
        f35583c = a10;
        f35584d = kotlin.enums.a.a(a10);
    }

    public i(String str, int i10) {
    }

    public static final /* synthetic */ i[] a() {
        return new i[]{f35581a, f35582b};
    }

    @NotNull
    public static ss.a<i> b() {
        return f35584d;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f35583c.clone();
    }
}
