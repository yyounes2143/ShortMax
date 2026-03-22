package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f34312a = new l("SkipOrClose", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final l f34313b = new l("ClickThrough", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ l[] f34314c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34315d;

    static {
        l[] a10 = a();
        f34314c = a10;
        f34315d = kotlin.enums.a.a(a10);
    }

    public l(String str, int i10) {
    }

    public static final /* synthetic */ l[] a() {
        return new l[]{f34312a, f34313b};
    }

    @NotNull
    public static ss.a<l> b() {
        return f34315d;
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f34314c.clone();
    }
}
