package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f35638a = new v("CreativeView", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final v f35639b = new v("Start", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final v f35640c = new v("FirstQuartile", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final v f35641d = new v("Midpoint", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final v f35642e = new v("ThirdQuartile", 4);

    /* renamed from: f  reason: collision with root package name */
    public static final v f35643f = new v("Complete", 5);

    /* renamed from: g  reason: collision with root package name */
    public static final v f35644g = new v("Mute", 6);

    /* renamed from: h  reason: collision with root package name */
    public static final v f35645h = new v("UnMute", 7);

    /* renamed from: i  reason: collision with root package name */
    public static final v f35646i = new v("Pause", 8);

    /* renamed from: j  reason: collision with root package name */
    public static final v f35647j = new v("Rewind", 9);

    /* renamed from: k  reason: collision with root package name */
    public static final v f35648k = new v("Resume", 10);

    /* renamed from: l  reason: collision with root package name */
    public static final v f35649l = new v("CloseLinear", 11);

    /* renamed from: m  reason: collision with root package name */
    public static final v f35650m = new v("Skip", 12);

    /* renamed from: n  reason: collision with root package name */
    public static final v f35651n = new v("Progress", 13);

    /* renamed from: o  reason: collision with root package name */
    public static final /* synthetic */ v[] f35652o;

    /* renamed from: p  reason: collision with root package name */
    public static final /* synthetic */ ss.a f35653p;

    static {
        v[] a10 = a();
        f35652o = a10;
        f35653p = kotlin.enums.a.a(a10);
    }

    public v(String str, int i10) {
    }

    public static final /* synthetic */ v[] a() {
        return new v[]{f35638a, f35639b, f35640c, f35641d, f35642e, f35643f, f35644g, f35645h, f35646i, f35647j, f35648k, f35649l, f35650m, f35651n};
    }

    @NotNull
    public static ss.a<v> b() {
        return f35653p;
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) f35652o.clone();
    }
}
