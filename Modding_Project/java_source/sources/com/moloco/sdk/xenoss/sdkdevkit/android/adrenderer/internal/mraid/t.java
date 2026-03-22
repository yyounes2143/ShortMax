package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import androidx.webkit.Profile;
import com.ss.ttvideoengine.DataLoaderHelper;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class t {

    /* renamed from: b  reason: collision with root package name */
    public static final t f34334b = new t("Loading", 0, "loading");

    /* renamed from: c  reason: collision with root package name */
    public static final t f34335c = new t(Profile.DEFAULT_PROFILE_NAME, 1, DataLoaderHelper.PRELOAD_DEFAULT_SCENE);

    /* renamed from: d  reason: collision with root package name */
    public static final t f34336d = new t("Resized", 2, "resized");

    /* renamed from: e  reason: collision with root package name */
    public static final t f34337e = new t("Expanded", 3, "expanded");

    /* renamed from: f  reason: collision with root package name */
    public static final t f34338f = new t("Hidden", 4, "hidden");

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ t[] f34339g;

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34340h;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f34341a;

    static {
        t[] a10 = a();
        f34339g = a10;
        f34340h = kotlin.enums.a.a(a10);
    }

    public t(String str, int i10, String str2) {
        this.f34341a = str2;
    }

    public static final /* synthetic */ t[] a() {
        return new t[]{f34334b, f34335c, f34336d, f34337e, f34338f};
    }

    @NotNull
    public static ss.a<t> b() {
        return f34340h;
    }

    public static t valueOf(String str) {
        return (t) Enum.valueOf(t.class, str);
    }

    public static t[] values() {
        return (t[]) f34339g.clone();
    }

    @NotNull
    public final String c() {
        return this.f34341a;
    }
}
