package com.moloco.sdk.acm.db;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f31845a = new c("TIMER", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final c f31846b = new c("COUNT", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ c[] f31847c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ ss.a f31848d;

    static {
        c[] a10 = a();
        f31847c = a10;
        f31848d = kotlin.enums.a.a(a10);
    }

    public c(String str, int i10) {
    }

    public static final /* synthetic */ c[] a() {
        return new c[]{f31845a, f31846b};
    }

    @NotNull
    public static ss.a<c> b() {
        return f31848d;
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f31847c.clone();
    }
}
