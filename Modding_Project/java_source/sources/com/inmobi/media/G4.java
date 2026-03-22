package com.inmobi.media;

import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import com.inmobi.sdk.InMobiSdk;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class G4 {

    /* renamed from: a  reason: collision with root package name */
    public static final G4 f23672a = new G4();

    /* renamed from: b  reason: collision with root package name */
    public static JSONObject f23673b;

    /* renamed from: c  reason: collision with root package name */
    public static JSONObject f23674c;

    /* renamed from: d  reason: collision with root package name */
    public static JSONObject f23675d;

    /* renamed from: e  reason: collision with root package name */
    public static RootConfig f23676e;

    /* JADX WARN: Removed duplicated region for block: B:39:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00df A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final org.json.JSONObject c() {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.G4.c():org.json.JSONObject");
    }

    @VisibleForTesting
    @WorkerThread
    public static final byte e() {
        JSONObject c10 = c();
        if (c10 == null) {
            return (byte) -1;
        }
        if (!c10.has(InMobiSdk.IM_GDPR_CONSENT_IAB)) {
            if (!c10.has(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE)) {
                return (byte) -1;
            }
            try {
                return c10.getBoolean(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE) ? (byte) 1 : (byte) 0;
            } catch (JSONException unused) {
                return (byte) -1;
            }
        }
        return (byte) 1;
    }

    @VisibleForTesting
    public static final void h() {
        HashMap hashMap = D3.f23561a;
        Config a10 = D3.a(Uc.b(), "root");
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig");
        f23676e = (RootConfig) a10;
    }

    public static final void i() {
        f23673b = null;
        f23674c = null;
        f23675d = null;
        f23676e = null;
    }

    public final void a(@Nullable JSONObject jSONObject) {
        f23675d = jSONObject;
    }

    @Nullable
    public final JSONObject b() {
        return f23675d;
    }

    @Nullable
    public final JSONObject g() {
        return f23673b;
    }

    public final void j() {
        LinkedHashMap linkedHashMap = O2.f23923a;
        f23676e = (RootConfig) AbstractC3110p5.a("root", "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
    }

    public static /* synthetic */ boolean a(G4 g42, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return g42.a(z10);
    }

    public static final void b(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            f23673b = jSONObject;
        }
    }

    public final boolean a(boolean z10) {
        if (f23676e == null) {
            j();
        }
        byte e10 = e();
        RootConfig rootConfig = f23676e;
        return e10 == 1 || Intrinsics.areEqual(rootConfig != null ? Boolean.valueOf(rootConfig.shouldTransmitRequest()) : null, Boolean.TRUE) || z10;
    }

    public final boolean a() {
        return a(this, false, 1, null);
    }

    public static /* synthetic */ void d() {
    }

    public static /* synthetic */ void f() {
    }

    public static final void c(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            f23674c = jSONObject;
        }
    }
}
