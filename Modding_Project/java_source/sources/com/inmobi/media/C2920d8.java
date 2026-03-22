package com.inmobi.media;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.d8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2920d8 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24578a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24579b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24580c;

    /* renamed from: d  reason: collision with root package name */
    public final C2937e8 f24581d;

    /* renamed from: e  reason: collision with root package name */
    public Object f24582e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f24583f;

    /* renamed from: g  reason: collision with root package name */
    public String f24584g;

    /* renamed from: h  reason: collision with root package name */
    public String f24585h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f24586i;

    /* renamed from: j  reason: collision with root package name */
    public byte f24587j;

    /* renamed from: k  reason: collision with root package name */
    public byte f24588k;

    /* renamed from: l  reason: collision with root package name */
    public byte f24589l;

    /* renamed from: m  reason: collision with root package name */
    public byte f24590m;

    /* renamed from: n  reason: collision with root package name */
    public int f24591n;

    /* renamed from: o  reason: collision with root package name */
    public int f24592o;

    /* renamed from: p  reason: collision with root package name */
    public String f24593p;

    /* renamed from: q  reason: collision with root package name */
    public String f24594q;

    /* renamed from: r  reason: collision with root package name */
    public C2985h8 f24595r;

    /* renamed from: s  reason: collision with root package name */
    public final ArrayList f24596s;

    /* renamed from: t  reason: collision with root package name */
    public final HashMap f24597t;

    /* renamed from: u  reason: collision with root package name */
    public Object f24598u;

    /* renamed from: v  reason: collision with root package name */
    public int f24599v;

    /* renamed from: w  reason: collision with root package name */
    public C2920d8 f24600w;

    public C2920d8(String assetId, String assetName, String assetType, C2937e8 assetStyle, List trackers) {
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f24578a = assetId;
        this.f24579b = assetName;
        this.f24580c = assetType;
        this.f24581d = assetStyle;
        this.f24584g = "NO_ACTION";
        this.f24585h = "";
        this.f24590m = (byte) 2;
        this.f24591n = -1;
        this.f24593p = "";
        this.f24594q = "";
        ArrayList arrayList = new ArrayList();
        this.f24596s = arrayList;
        this.f24597t = new HashMap();
        arrayList.addAll(trackers);
    }

    public static void a(U8 tracker, HashMap hashMap, L7 l72, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        C3234x2.f25412a.a(T9.a(tracker.f24263d, hashMap), tracker.f24262c, true, l72, Ta.f24218b, interfaceC3269z5);
    }

    public static void d(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    public final void b(byte b10) {
        this.f24590m = b10;
    }

    public final void c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    public final void b(int i10) {
        this.f24591n = i10;
    }

    public final void b(String str) {
        String str2;
        if (str != null) {
            int length = str.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            str2 = str.subSequence(i10, length + 1).toString();
        } else {
            str2 = null;
        }
        this.f24593p = str2;
    }

    public final void a(byte b10) {
        this.f24587j = b10;
    }

    public final void a(int i10) {
        this.f24592o = i10;
    }

    public final void a(C2985h8 c2985h8) {
        this.f24595r = c2985h8;
    }

    public final HashMap a() {
        return this.f24597t;
    }

    public final void a(String eventType, HashMap hashMap, L7 l72, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Iterator it = this.f24596s.iterator();
        while (it.hasNext()) {
            U8 u82 = (U8) it.next();
            if (Intrinsics.areEqual(eventType, u82.f24261b)) {
                a(u82, hashMap, l72, interfaceC3269z5);
            }
        }
    }

    public /* synthetic */ C2920d8(String str, String str2, String str3, C2937e8 c2937e8, int i10) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "root" : str2, (i10 & 4) != 0 ? "CONTAINER" : str3, (i10 & 8) != 0 ? new C2937e8() : c2937e8, new LinkedList());
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) value.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        this.f24594q = value.subSequence(i10, length + 1).toString();
    }
}
