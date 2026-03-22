package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.a0;
import com.facebook.f;
import com.facebook.internal.u0;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AccessTokenManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f15529f = new a(null);
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static f f15530g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final LocalBroadcastManager f15531a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.a f15532b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AccessToken f15533c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f15534d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Date f15535e;

    /* compiled from: AccessTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final GraphRequest c(AccessToken accessToken, GraphRequest.b bVar) {
            e f10 = f(accessToken);
            Bundle bundle = new Bundle();
            bundle.putString("grant_type", f10.a());
            bundle.putString(CommonConstant.ReqAccessTokenParam.CLIENT_ID, accessToken.c());
            bundle.putString("fields", "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            GraphRequest x10 = GraphRequest.f14841n.x(accessToken, f10.b(), bVar);
            x10.H(bundle);
            x10.G(HttpMethod.GET);
            return x10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final GraphRequest d(AccessToken accessToken, GraphRequest.b bVar) {
            Bundle bundle = new Bundle();
            bundle.putString("fields", "permission,status");
            GraphRequest x10 = GraphRequest.f14841n.x(accessToken, "me/permissions", bVar);
            x10.H(bundle);
            x10.G(HttpMethod.GET);
            return x10;
        }

        private final e f(AccessToken accessToken) {
            String h10 = accessToken.h();
            if (h10 == null) {
                h10 = "facebook";
            }
            if (Intrinsics.areEqual(h10, "instagram")) {
                return new c();
            }
            return new b();
        }

        @NotNull
        public final f e() {
            f fVar;
            f fVar2 = f.f15530g;
            if (fVar2 == null) {
                synchronized (this) {
                    fVar = f.f15530g;
                    if (fVar == null) {
                        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(v.l());
                        Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
                        f fVar3 = new f(localBroadcastManager, new com.facebook.a());
                        f.f15530g = fVar3;
                        fVar = fVar3;
                    }
                }
                return fVar;
            }
            return fVar2;
        }

        private a() {
        }
    }

    /* compiled from: AccessTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f15536a = "oauth/access_token";
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f15537b = "fb_extend_sso_token";

        @Override // com.facebook.f.e
        @NotNull
        public String a() {
            return this.f15537b;
        }

        @Override // com.facebook.f.e
        @NotNull
        public String b() {
            return this.f15536a;
        }
    }

    /* compiled from: AccessTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c implements e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f15538a = "refresh_access_token";
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f15539b = "ig_refresh_token";

        @Override // com.facebook.f.e
        @NotNull
        public String a() {
            return this.f15539b;
        }

        @Override // com.facebook.f.e
        @NotNull
        public String b() {
            return this.f15538a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f15540a;

        /* renamed from: b  reason: collision with root package name */
        private int f15541b;

        /* renamed from: c  reason: collision with root package name */
        private int f15542c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Long f15543d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f15544e;

        @Nullable
        public final String a() {
            return this.f15540a;
        }

        @Nullable
        public final Long b() {
            return this.f15543d;
        }

        public final int c() {
            return this.f15541b;
        }

        public final int d() {
            return this.f15542c;
        }

        @Nullable
        public final String e() {
            return this.f15544e;
        }

        public final void f(@Nullable String str) {
            this.f15540a = str;
        }

        public final void g(@Nullable Long l10) {
            this.f15543d = l10;
        }

        public final void h(int i10) {
            this.f15541b = i10;
        }

        public final void i(int i10) {
            this.f15542c = i10;
        }

        public final void j(@Nullable String str) {
            this.f15544e = str;
        }
    }

    /* compiled from: AccessTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface e {
        @NotNull
        String a();

        @NotNull
        String b();
    }

    public f(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull com.facebook.a accessTokenCache) {
        Intrinsics.checkNotNullParameter(localBroadcastManager, "localBroadcastManager");
        Intrinsics.checkNotNullParameter(accessTokenCache, "accessTokenCache");
        this.f15531a = localBroadcastManager;
        this.f15532b = accessTokenCache;
        this.f15534d = new AtomicBoolean(false);
        this.f15535e = new Date(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(f this$0, AccessToken.a aVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m(aVar);
    }

    private final void m(final AccessToken.a aVar) {
        final AccessToken i10 = i();
        if (i10 == null) {
            if (aVar != null) {
                aVar.a(new FacebookException("No current access token to refresh"));
            }
        } else if (!this.f15534d.compareAndSet(false, true)) {
            if (aVar != null) {
                aVar.a(new FacebookException("Refresh already in progress"));
            }
        } else {
            this.f15535e = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final d dVar = new d();
            a aVar2 = f15529f;
            a0 a0Var = new a0(aVar2.d(i10, new GraphRequest.b() { // from class: com.facebook.c
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    f.n(atomicBoolean, hashSet, hashSet2, hashSet3, b0Var);
                }
            }), aVar2.c(i10, new GraphRequest.b() { // from class: com.facebook.d
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    f.o(f.d.this, b0Var);
                }
            }));
            a0Var.d(new a0.a(i10, aVar, atomicBoolean, hashSet, hashSet2, hashSet3, this) { // from class: com.facebook.e

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ AccessToken f15518b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ AtomicBoolean f15519c;

                /* renamed from: d  reason: collision with root package name */
                public final /* synthetic */ Set f15520d;

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ Set f15521e;

                /* renamed from: f  reason: collision with root package name */
                public final /* synthetic */ Set f15522f;

                /* renamed from: g  reason: collision with root package name */
                public final /* synthetic */ f f15523g;

                {
                    this.f15519c = atomicBoolean;
                    this.f15520d = hashSet;
                    this.f15521e = hashSet2;
                    this.f15522f = hashSet3;
                    this.f15523g = this;
                }

                @Override // com.facebook.a0.a
                public final void a(a0 a0Var2) {
                    f.p(f.d.this, this.f15518b, null, this.f15519c, this.f15520d, this.f15521e, this.f15522f, this.f15523g, a0Var2);
                }
            });
            a0Var.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AtomicBoolean permissionsCallSucceeded, Set permissions, Set declinedPermissions, Set expiredPermissions, b0 response) {
        JSONArray optJSONArray;
        Intrinsics.checkNotNullParameter(permissionsCallSucceeded, "$permissionsCallSucceeded");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(declinedPermissions, "$declinedPermissions");
        Intrinsics.checkNotNullParameter(expiredPermissions, "$expiredPermissions");
        Intrinsics.checkNotNullParameter(response, "response");
        JSONObject d10 = response.d();
        if (d10 == null || (optJSONArray = d10.optJSONArray("data")) == null) {
            return;
        }
        permissionsCallSucceeded.set(true);
        int length = optJSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("permission");
                String status = optJSONObject.optString("status");
                if (!u0.d0(optString) && !u0.d0(status)) {
                    Intrinsics.checkNotNullExpressionValue(status, "status");
                    Locale US = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US, "US");
                    String status2 = status.toLowerCase(US);
                    Intrinsics.checkNotNullExpressionValue(status2, "this as java.lang.String).toLowerCase(locale)");
                    Intrinsics.checkNotNullExpressionValue(status2, "status");
                    int hashCode = status2.hashCode();
                    if (hashCode != -1309235419) {
                        if (hashCode != 280295099) {
                            if (hashCode == 568196142 && status2.equals("declined")) {
                                declinedPermissions.add(optString);
                            }
                            Log.w("AccessTokenManager", "Unexpected status: " + status2);
                        } else {
                            if (status2.equals("granted")) {
                                permissions.add(optString);
                            }
                            Log.w("AccessTokenManager", "Unexpected status: " + status2);
                        }
                    } else {
                        if (status2.equals("expired")) {
                            expiredPermissions.add(optString);
                        }
                        Log.w("AccessTokenManager", "Unexpected status: " + status2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(d refreshResult, b0 response) {
        Intrinsics.checkNotNullParameter(refreshResult, "$refreshResult");
        Intrinsics.checkNotNullParameter(response, "response");
        JSONObject d10 = response.d();
        if (d10 == null) {
            return;
        }
        refreshResult.f(d10.optString("access_token"));
        refreshResult.h(d10.optInt("expires_at"));
        refreshResult.i(d10.optInt("expires_in"));
        refreshResult.g(Long.valueOf(d10.optLong("data_access_expiration_time")));
        refreshResult.j(d10.optString("graph_domain", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void p(d refreshResult, AccessToken accessToken, AccessToken.a aVar, AtomicBoolean permissionsCallSucceeded, Set permissions, Set declinedPermissions, Set set, f this$0, a0 it) {
        boolean z10;
        AccessToken accessToken2;
        String str;
        Set<String> k10;
        Set<String> e10;
        Date d10;
        Intrinsics.checkNotNullParameter(refreshResult, "$refreshResult");
        Intrinsics.checkNotNullParameter(permissionsCallSucceeded, "$permissionsCallSucceeded");
        Intrinsics.checkNotNullParameter(permissions, "$permissions");
        Intrinsics.checkNotNullParameter(declinedPermissions, "$declinedPermissions");
        Set expiredPermissions = set;
        Intrinsics.checkNotNullParameter(expiredPermissions, "$expiredPermissions");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        String a10 = refreshResult.a();
        int c10 = refreshResult.c();
        Long b10 = refreshResult.b();
        String e11 = refreshResult.e();
        try {
            a aVar2 = f15529f;
            if (aVar2.e().i() != null) {
                try {
                    AccessToken i10 = aVar2.e().i();
                    if (i10 != null) {
                        str = i10.n();
                    } else {
                        str = null;
                    }
                    if (str == accessToken.n()) {
                        if (!permissionsCallSucceeded.get() && a10 == null && c10 == 0) {
                            if (aVar != null) {
                                aVar.a(new FacebookException("Failed to refresh access token"));
                            }
                            this$0.f15534d.set(false);
                            return;
                        }
                        Date g10 = accessToken.g();
                        if (refreshResult.c() != 0) {
                            g10 = new Date(refreshResult.c() * 1000);
                        } else if (refreshResult.d() != 0) {
                            g10 = new Date((refreshResult.d() * 1000) + new Date().getTime());
                        }
                        Date date = g10;
                        if (a10 == null) {
                            a10 = accessToken.m();
                        }
                        String str2 = a10;
                        String c11 = accessToken.c();
                        String n10 = accessToken.n();
                        if (permissionsCallSucceeded.get()) {
                            k10 = permissions;
                        } else {
                            k10 = accessToken.k();
                        }
                        Set<String> set2 = k10;
                        if (permissionsCallSucceeded.get()) {
                            e10 = declinedPermissions;
                        } else {
                            e10 = accessToken.e();
                        }
                        Set<String> set3 = e10;
                        Set f10 = permissionsCallSucceeded.get() ? expiredPermissions : accessToken.f();
                        AccessTokenSource l10 = accessToken.l();
                        Date date2 = new Date();
                        if (b10 != null) {
                            d10 = new Date(b10.longValue() * 1000);
                        } else {
                            d10 = accessToken.d();
                        }
                        Date date3 = d10;
                        if (e11 == null) {
                            e11 = accessToken.h();
                        }
                        AccessToken accessToken3 = new AccessToken(str2, c11, n10, set2, set3, f10, l10, date, date2, date3, e11);
                        try {
                            aVar2.e().r(accessToken3);
                            this$0.f15534d.set(false);
                            if (aVar != null) {
                                aVar.b(accessToken3);
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            accessToken2 = accessToken3;
                            z10 = false;
                            this$0.f15534d.set(z10);
                            if (aVar != null && accessToken2 != null) {
                                aVar.b(accessToken2);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z10 = false;
                    accessToken2 = null;
                    this$0.f15534d.set(z10);
                    if (aVar != null) {
                        aVar.b(accessToken2);
                    }
                    throw th;
                }
            }
            if (aVar != null) {
                aVar.a(new FacebookException("No current access token to refresh"));
            }
            this$0.f15534d.set(false);
        } catch (Throwable th4) {
            th = th4;
            z10 = false;
        }
    }

    private final void q(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(v.l(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f15531a.sendBroadcast(intent);
    }

    private final void s(AccessToken accessToken, boolean z10) {
        AccessToken accessToken2 = this.f15533c;
        this.f15533c = accessToken;
        this.f15534d.set(false);
        this.f15535e = new Date(0L);
        if (z10) {
            if (accessToken != null) {
                this.f15532b.g(accessToken);
            } else {
                this.f15532b.a();
                u0.i(v.l());
            }
        }
        if (!u0.e(accessToken2, accessToken)) {
            q(accessToken2, accessToken);
            t();
        }
    }

    private final void t() {
        Date date;
        Context l10 = v.l();
        AccessToken.c cVar = AccessToken.f14731l;
        AccessToken e10 = cVar.e();
        AlarmManager alarmManager = (AlarmManager) l10.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (cVar.g()) {
            if (e10 != null) {
                date = e10.g();
            } else {
                date = null;
            }
            if (date != null && alarmManager != null) {
                Intent intent = new Intent(l10, CurrentAccessTokenExpirationBroadcastReceiver.class);
                intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
                try {
                    alarmManager.set(1, e10.g().getTime(), PendingIntent.getBroadcast(l10, 0, intent, 67108864));
                } catch (Exception unused) {
                }
            }
        }
    }

    private final boolean u() {
        AccessToken i10 = i();
        if (i10 == null) {
            return false;
        }
        long time = new Date().getTime();
        if (!i10.l().canExtendToken() || time - this.f15535e.getTime() <= 3600000 || time - i10.j().getTime() <= SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
            return false;
        }
        return true;
    }

    public final void g() {
        q(i(), i());
    }

    public final void h() {
        if (!u()) {
            return;
        }
        k(null);
    }

    @Nullable
    public final AccessToken i() {
        return this.f15533c;
    }

    public final boolean j() {
        AccessToken f10 = this.f15532b.f();
        if (f10 == null) {
            return false;
        }
        s(f10, false);
        return true;
    }

    public final void k(@Nullable final AccessToken.a aVar) {
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            m(aVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable(aVar) { // from class: com.facebook.b
                @Override // java.lang.Runnable
                public final void run() {
                    f.l(f.this, null);
                }
            });
        }
    }

    public final void r(@Nullable AccessToken accessToken) {
        s(accessToken, true);
    }
}
