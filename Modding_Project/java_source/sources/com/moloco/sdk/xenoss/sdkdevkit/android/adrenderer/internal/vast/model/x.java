package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class x {

    /* renamed from: b  reason: collision with root package name */
    public static final x f35656b = new x("XmlParsing", 0, 100);

    /* renamed from: c  reason: collision with root package name */
    public static final x f35657c = new x("Wrapper", 1, 300);

    /* renamed from: d  reason: collision with root package name */
    public static final x f35658d = new x("WrapperTimeout", 2, 301);

    /* renamed from: e  reason: collision with root package name */
    public static final x f35659e = new x("WrapperLimit", 3, 302);

    /* renamed from: f  reason: collision with root package name */
    public static final x f35660f = new x("WrapperNoAds", 4, 303);

    /* renamed from: g  reason: collision with root package name */
    public static final x f35661g = new x("Linear", 5, 400);

    /* renamed from: h  reason: collision with root package name */
    public static final x f35662h = new x("LinearFileNotFound", 6, 401);

    /* renamed from: i  reason: collision with root package name */
    public static final x f35663i = new x("LinearNotSupportedMedia", 7, 403);

    /* renamed from: j  reason: collision with root package name */
    public static final x f35664j = new x("Companion", 8, 600);

    /* renamed from: k  reason: collision with root package name */
    public static final x f35665k = new x("Undefined", 9, 900);

    /* renamed from: l  reason: collision with root package name */
    public static final /* synthetic */ x[] f35666l;

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ ss.a f35667m;

    /* renamed from: a  reason: collision with root package name */
    public final int f35668a;

    static {
        x[] a10 = a();
        f35666l = a10;
        f35667m = kotlin.enums.a.a(a10);
    }

    public x(String str, int i10, int i11) {
        this.f35668a = i11;
    }

    public static final /* synthetic */ x[] a() {
        return new x[]{f35656b, f35657c, f35658d, f35659e, f35660f, f35661g, f35662h, f35663i, f35664j, f35665k};
    }

    @NotNull
    public static ss.a<x> b() {
        return f35667m;
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f35666l.clone();
    }

    public final int c() {
        return this.f35668a;
    }
}
