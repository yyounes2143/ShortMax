package com.moloco.sdk.internal.client_metrics_data;

import com.appsflyer.AdRevenueScheme;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f32055b = new c("Reason", 0, "reason");

    /* renamed from: c  reason: collision with root package name */
    public static final c f32056c = new c("AdType", 1, "ad_type");

    /* renamed from: d  reason: collision with root package name */
    public static final c f32057d = new c("Result", 2, "result");

    /* renamed from: e  reason: collision with root package name */
    public static final c f32058e = new c("Country", 3, AdRevenueScheme.COUNTRY);

    /* renamed from: f  reason: collision with root package name */
    public static final c f32059f = new c("RetryAttempt", 4, "attempt");

    /* renamed from: g  reason: collision with root package name */
    public static final c f32060g = new c("Step", 5, "step");

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ c[] f32061h;

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32062i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32063a;

    static {
        c[] a10 = a();
        f32061h = a10;
        f32062i = kotlin.enums.a.a(a10);
    }

    public c(String str, int i10, String str2) {
        this.f32063a = str2;
    }

    public static final /* synthetic */ c[] a() {
        return new c[]{f32055b, f32056c, f32057d, f32058e, f32059f, f32060g};
    }

    @NotNull
    public static ss.a<c> b() {
        return f32062i;
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f32061h.clone();
    }

    @NotNull
    public final String c() {
        return this.f32063a;
    }
}
