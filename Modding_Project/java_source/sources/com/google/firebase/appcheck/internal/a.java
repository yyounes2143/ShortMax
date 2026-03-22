package com.google.firebase.appcheck.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import r7.a;
/* compiled from: DefaultAppCheckToken.java */
/* loaded from: classes5.dex */
public final class a extends p7.c {

    /* renamed from: d  reason: collision with root package name */
    private static final String f20352d = "com.google.firebase.appcheck.internal.a";

    /* renamed from: a  reason: collision with root package name */
    private final String f20353a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20354b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20355c;

    @VisibleForTesting
    a(@NonNull String str, long j10) {
        this(str, j10, new a.C0914a().currentTimeMillis());
    }

    @NonNull
    public static a c(@NonNull q7.a aVar) {
        long g10;
        Preconditions.checkNotNull(aVar);
        try {
            g10 = (long) (Double.parseDouble(aVar.b().replace("s", "")) * 1000.0d);
        } catch (NumberFormatException unused) {
            Map<String, Object> b10 = r7.c.b(aVar.c());
            g10 = 1000 * (g(b10, "exp") - g(b10, "iat"));
        }
        return new a(aVar.c(), g10);
    }

    @NonNull
    public static a d(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Map<String, Object> b10 = r7.c.b(str);
        long g10 = g(b10, "iat");
        return new a(str, (g(b10, "exp") - g10) * 1000, g10 * 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a e(@NonNull String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new a(jSONObject.getString(BidResponsed.KEY_TOKEN), jSONObject.getLong("expiresIn"), jSONObject.getLong("receivedAt"));
        } catch (JSONException e10) {
            String str2 = f20352d;
            Log.e(str2, "Could not deserialize token: " + e10.getMessage());
            return null;
        }
    }

    private static long g(@NonNull Map<String, Object> map, @NonNull String str) {
        Preconditions.checkNotNull(map);
        Preconditions.checkNotEmpty(str);
        Integer num = (Integer) map.get(str);
        if (num == null) {
            return 0L;
        }
        return num.longValue();
    }

    @Override // p7.c
    public long a() {
        return this.f20354b + this.f20355c;
    }

    @Override // p7.c
    @NonNull
    public String b() {
        return this.f20353a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        return this.f20355c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.f20354b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(BidResponsed.KEY_TOKEN, this.f20353a);
            jSONObject.put("receivedAt", this.f20354b);
            jSONObject.put("expiresIn", this.f20355c);
            return jSONObject.toString();
        } catch (JSONException e10) {
            String str = f20352d;
            Log.e(str, "Could not serialize token: " + e10.getMessage());
            return null;
        }
    }

    @VisibleForTesting
    a(@NonNull String str, long j10, long j11) {
        Preconditions.checkNotEmpty(str);
        this.f20353a = str;
        this.f20355c = j10;
        this.f20354b = j11;
    }
}
