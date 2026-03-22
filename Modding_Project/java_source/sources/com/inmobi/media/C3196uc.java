package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.uc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3196uc {

    /* renamed from: a  reason: collision with root package name */
    public final String f25333a;

    /* renamed from: b  reason: collision with root package name */
    public final EnumC3148rc f25334b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f25335c;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f25336d;

    /* renamed from: e  reason: collision with root package name */
    public final String f25337e;

    /* renamed from: f  reason: collision with root package name */
    public final EnumC3164sc f25338f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f25339g;

    /* renamed from: h  reason: collision with root package name */
    public final C3180tc f25340h;

    /* renamed from: i  reason: collision with root package name */
    public final int f25341i;

    /* renamed from: j  reason: collision with root package name */
    public final int f25342j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f25343k;

    /* renamed from: l  reason: collision with root package name */
    public M9 f25344l;

    /* renamed from: m  reason: collision with root package name */
    public int f25345m;

    public C3196uc(C3133qc c3133qc) {
        boolean z10;
        int i10;
        boolean z11;
        Intrinsics.checkNotNullExpressionValue(C3196uc.class.getSimpleName(), "getSimpleName(...)");
        this.f25333a = c3133qc.f25205a;
        this.f25334b = c3133qc.f25206b;
        this.f25335c = c3133qc.f25207c;
        this.f25336d = c3133qc.f25208d;
        String str = c3133qc.f25209e;
        this.f25337e = str == null ? "" : str;
        this.f25338f = EnumC3164sc.f25271a;
        Boolean bool = c3133qc.f25210f;
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = true;
        }
        this.f25339g = z10;
        this.f25340h = c3133qc.f25211g;
        Integer num = c3133qc.f25212h;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 60000;
        }
        this.f25341i = i10;
        Integer num2 = c3133qc.f25213i;
        this.f25342j = num2 != null ? num2.intValue() : 60000;
        Boolean bool2 = c3133qc.f25214j;
        if (bool2 != null) {
            z11 = bool2.booleanValue();
        } else {
            z11 = false;
        }
        this.f25343k = z11;
    }

    public final String toString() {
        return "URL:" + J9.a(this.f25333a, this.f25336d) + " | TAG:null | METHOD:" + this.f25334b + " | PAYLOAD:" + this.f25337e + " | HEADERS:" + this.f25335c + " | RETRY_POLICY:" + this.f25340h;
    }
}
