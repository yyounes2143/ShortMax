package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f33712a = new i("VAST", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final i f33713b = new i("MRAID", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final i f33714c = new i("STATIC", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ i[] f33715d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ ss.a f33716e;

    static {
        i[] a10 = a();
        f33715d = a10;
        f33716e = kotlin.enums.a.a(a10);
    }

    public i(String str, int i10) {
    }

    public static final /* synthetic */ i[] a() {
        return new i[]{f33712a, f33713b, f33714c};
    }

    @NotNull
    public static ss.a<i> b() {
        return f33716e;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f33715d.clone();
    }
}
