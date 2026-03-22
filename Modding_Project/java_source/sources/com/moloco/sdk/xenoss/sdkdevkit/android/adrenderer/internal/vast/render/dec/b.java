package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f36168a = new b("DisplayStarted", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final b f36169b = new b("ClickThrough", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ b[] f36170c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ ss.a f36171d;

    static {
        b[] a10 = a();
        f36170c = a10;
        f36171d = kotlin.enums.a.a(a10);
    }

    public b(String str, int i10) {
    }

    public static final /* synthetic */ b[] a() {
        return new b[]{f36168a, f36169b};
    }

    @NotNull
    public static ss.a<b> b() {
        return f36171d;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f36170c.clone();
    }
}
