package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0528a f34530a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f34531b = new a("Portrait", 0);

    /* renamed from: c  reason: collision with root package name */
    public static final a f34532c = new a("Landscape", 1);

    /* renamed from: d  reason: collision with root package name */
    public static final a f34533d = new a("None", 2);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ a[] f34534e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34535f;

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0528a {
        public /* synthetic */ C0528a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0528a() {
        }
    }

    static {
        a[] a10 = a();
        f34534e = a10;
        f34535f = kotlin.enums.a.a(a10);
        f34530a = new C0528a(null);
    }

    public a(String str, int i10) {
    }

    public static final /* synthetic */ a[] a() {
        return new a[]{f34531b, f34532c, f34533d};
    }

    @NotNull
    public static ss.a<a> b() {
        return f34535f;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f34534e.clone();
    }
}
