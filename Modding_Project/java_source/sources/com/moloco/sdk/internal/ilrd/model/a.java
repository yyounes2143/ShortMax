package com.moloco.sdk.internal.ilrd.model;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32281a = new a("MAX", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f32282b = new a("LEVELPLAY", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ a[] f32283c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32284d;

    static {
        a[] a10 = a();
        f32283c = a10;
        f32284d = kotlin.enums.a.a(a10);
    }

    public a(String str, int i10) {
    }

    public static final /* synthetic */ a[] a() {
        return new a[]{f32281a, f32282b};
    }

    @NotNull
    public static ss.a<a> b() {
        return f32284d;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f32283c.clone();
    }
}
