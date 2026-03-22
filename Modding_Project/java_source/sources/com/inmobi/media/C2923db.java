package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.db  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2923db {

    /* renamed from: a  reason: collision with root package name */
    public static String f24603a;

    /* renamed from: b  reason: collision with root package name */
    public static C3195ub f24604b;

    /* renamed from: c  reason: collision with root package name */
    public static final SignalsConfig f24605c;

    /* renamed from: d  reason: collision with root package name */
    public static int f24606d;

    /* renamed from: e  reason: collision with root package name */
    public static final ms.i f24607e;

    static {
        LinkedHashMap linkedHashMap = O2.f23923a;
        f24605c = (SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null);
        f24607e = kotlin.c.b(C2906cb.f24555a);
    }

    public static boolean a(Context context) {
        boolean z10;
        short s10;
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!L3.G()) {
            return false;
        }
        if (!((Boolean) f24607e.getValue()).booleanValue()) {
            AbstractC3036kb.a(new C2972gb((short) 2230));
            return false;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                str = bundle.getString("com.google.android.play.billingclient.version");
            } else {
                str = null;
            }
            z10 = CollectionsKt.g0(f24605c.getPurchases().getVersionList(), str);
            if (!z10) {
                AbstractC3036kb.a(new C3004ib(str));
            }
        } catch (Exception unused) {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        int i10 = f24606d;
        if (i10 != 1 && i10 != 2) {
            return true;
        }
        if (i10 != 1) {
            if (i10 != 2) {
                s10 = 0;
            } else {
                s10 = 2232;
            }
        } else {
            s10 = 2231;
        }
        AbstractC3036kb.a(new C2972gb(s10));
        return false;
    }
}
