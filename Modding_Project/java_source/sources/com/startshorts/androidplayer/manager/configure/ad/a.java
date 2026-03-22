package com.startshorts.androidplayer.manager.configure.ad;

import android.content.Context;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdHelper;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.vungle.ads.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AdActionCountConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements me.b<C0621a> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42306a = new a();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final C0621a f42307b = new C0621a(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, false, false, 0, false, 0, 0, 268435455, null);

    /* renamed from: c  reason: collision with root package name */
    private static boolean f42308c;

    /* compiled from: AdActionCountConfigure.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.configure.ad.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0621a {
        private int A;
        private int B;

        /* renamed from: a  reason: collision with root package name */
        private int f42309a;

        /* renamed from: b  reason: collision with root package name */
        private int f42310b;

        /* renamed from: c  reason: collision with root package name */
        private int f42311c;

        /* renamed from: d  reason: collision with root package name */
        private int f42312d;

        /* renamed from: e  reason: collision with root package name */
        private int f42313e;

        /* renamed from: f  reason: collision with root package name */
        private int f42314f;

        /* renamed from: g  reason: collision with root package name */
        private int f42315g;

        /* renamed from: h  reason: collision with root package name */
        private int f42316h;

        /* renamed from: i  reason: collision with root package name */
        private int f42317i;

        /* renamed from: j  reason: collision with root package name */
        private int f42318j;

        /* renamed from: k  reason: collision with root package name */
        private int f42319k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f42320l;

        /* renamed from: m  reason: collision with root package name */
        private int f42321m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f42322n;

        /* renamed from: o  reason: collision with root package name */
        private int f42323o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f42324p;

        /* renamed from: q  reason: collision with root package name */
        private int f42325q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f42326r;

        /* renamed from: s  reason: collision with root package name */
        private int f42327s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f42328t;

        /* renamed from: u  reason: collision with root package name */
        private int f42329u;

        /* renamed from: v  reason: collision with root package name */
        private boolean f42330v;

        /* renamed from: w  reason: collision with root package name */
        private boolean f42331w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f42332x;

        /* renamed from: y  reason: collision with root package name */
        private int f42333y;

        /* renamed from: z  reason: collision with root package name */
        private boolean f42334z;

        public C0621a() {
            this(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false, 0, false, 0, false, 0, false, 0, false, 0, false, false, false, 0, false, 0, 0, 268435455, null);
        }

        public final void A(int i10) {
            this.B = i10;
        }

        public final void B(boolean z10) {
            this.f42334z = z10;
        }

        public final void C(int i10) {
            this.A = i10;
        }

        public final void D(boolean z10) {
            this.f42332x = z10;
        }

        public final void E(int i10) {
            this.f42333y = i10;
        }

        public final void F(int i10) {
            this.f42312d = i10;
        }

        public final void G(int i10) {
            this.f42311c = i10;
        }

        public final void H(int i10) {
            this.f42310b = i10;
        }

        public final void I(int i10) {
            this.f42313e = i10;
        }

        public final void J(boolean z10) {
            this.f42328t = z10;
        }

        public final void K(int i10) {
            this.f42329u = i10;
        }

        public final void L(int i10) {
            this.f42323o = i10;
        }

        public final void M(boolean z10) {
            this.f42322n = z10;
        }

        public final void N(int i10) {
            this.f42325q = i10;
        }

        public final void O(boolean z10) {
            this.f42324p = z10;
        }

        public final int a() {
            return this.f42317i;
        }

        public final int b() {
            return this.f42316h;
        }

        public final int c() {
            return this.f42318j;
        }

        public final int d() {
            return this.f42314f;
        }

        public final int e() {
            return this.f42319k;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0621a)) {
                return false;
            }
            C0621a c0621a = (C0621a) obj;
            if (this.f42309a == c0621a.f42309a && this.f42310b == c0621a.f42310b && this.f42311c == c0621a.f42311c && this.f42312d == c0621a.f42312d && this.f42313e == c0621a.f42313e && this.f42314f == c0621a.f42314f && this.f42315g == c0621a.f42315g && this.f42316h == c0621a.f42316h && this.f42317i == c0621a.f42317i && this.f42318j == c0621a.f42318j && this.f42319k == c0621a.f42319k && this.f42320l == c0621a.f42320l && this.f42321m == c0621a.f42321m && this.f42322n == c0621a.f42322n && this.f42323o == c0621a.f42323o && this.f42324p == c0621a.f42324p && this.f42325q == c0621a.f42325q && this.f42326r == c0621a.f42326r && this.f42327s == c0621a.f42327s && this.f42328t == c0621a.f42328t && this.f42329u == c0621a.f42329u && this.f42330v == c0621a.f42330v && this.f42331w == c0621a.f42331w && this.f42332x == c0621a.f42332x && this.f42333y == c0621a.f42333y && this.f42334z == c0621a.f42334z && this.A == c0621a.A && this.B == c0621a.B) {
                return true;
            }
            return false;
        }

        public final int f() {
            return this.f42315g;
        }

        public final int g() {
            return this.f42309a;
        }

        public final int h() {
            return this.B;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((((((((((((((Integer.hashCode(this.f42309a) * 31) + Integer.hashCode(this.f42310b)) * 31) + Integer.hashCode(this.f42311c)) * 31) + Integer.hashCode(this.f42312d)) * 31) + Integer.hashCode(this.f42313e)) * 31) + Integer.hashCode(this.f42314f)) * 31) + Integer.hashCode(this.f42315g)) * 31) + Integer.hashCode(this.f42316h)) * 31) + Integer.hashCode(this.f42317i)) * 31) + Integer.hashCode(this.f42318j)) * 31) + Integer.hashCode(this.f42319k)) * 31) + Boolean.hashCode(this.f42320l)) * 31) + Integer.hashCode(this.f42321m)) * 31) + Boolean.hashCode(this.f42322n)) * 31) + Integer.hashCode(this.f42323o)) * 31) + Boolean.hashCode(this.f42324p)) * 31) + Integer.hashCode(this.f42325q)) * 31) + Boolean.hashCode(this.f42326r)) * 31) + Integer.hashCode(this.f42327s)) * 31) + Boolean.hashCode(this.f42328t)) * 31) + Integer.hashCode(this.f42329u)) * 31) + Boolean.hashCode(this.f42330v)) * 31) + Boolean.hashCode(this.f42331w)) * 31) + Boolean.hashCode(this.f42332x)) * 31) + Integer.hashCode(this.f42333y)) * 31) + Boolean.hashCode(this.f42334z)) * 31) + Integer.hashCode(this.A)) * 31) + Integer.hashCode(this.B);
        }

        public final int i() {
            return this.A;
        }

        public final int j() {
            return this.f42333y;
        }

        public final int k() {
            return this.f42312d;
        }

        public final int l() {
            return this.f42311c;
        }

        public final int m() {
            return this.f42310b;
        }

        public final int n() {
            return this.f42313e;
        }

        public final int o(@NotNull String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            switch (scene.hashCode()) {
                case -903148681:
                    if (scene.equals("shorts")) {
                        return this.f42329u;
                    }
                    break;
                case -751795804:
                    if (scene.equals("exit_immersion_page")) {
                        return this.f42321m;
                    }
                    break;
                case -346952694:
                    if (scene.equals("switch_tab")) {
                        return this.f42323o;
                    }
                    break;
                case -277221745:
                    if (scene.equals("home_reward")) {
                        return this.f42327s;
                    }
                    break;
                case -205611905:
                    if (scene.equals("watch_continuous")) {
                        return this.f42325q;
                    }
                    break;
            }
            return Integer.MAX_VALUE;
        }

        public final boolean p(@NotNull String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            switch (scene.hashCode()) {
                case -1933635474:
                    if (scene.equals("immersion_full_screen_native")) {
                        return this.f42331w;
                    }
                    break;
                case -1294748519:
                    if (scene.equals("pre_roll")) {
                        return this.f42332x;
                    }
                    break;
                case -1198958432:
                    if (scene.equals("horizontal_video")) {
                        return this.f42330v;
                    }
                    break;
                case -903148681:
                    if (scene.equals("shorts")) {
                        return this.f42328t;
                    }
                    break;
                case -751795804:
                    if (scene.equals("exit_immersion_page")) {
                        return this.f42320l;
                    }
                    break;
                case -346952694:
                    if (scene.equals("switch_tab")) {
                        return this.f42322n;
                    }
                    break;
                case -277221745:
                    if (scene.equals("home_reward")) {
                        return this.f42326r;
                    }
                    break;
                case -205611905:
                    if (scene.equals("watch_continuous")) {
                        return this.f42324p;
                    }
                    break;
                case 2002912444:
                    if (scene.equals("post_roll")) {
                        return this.f42334z;
                    }
                    break;
            }
            return false;
        }

        public final void q(int i10) {
            this.f42316h = i10;
        }

        public final void r(int i10) {
            this.f42318j = i10;
        }

        public final void s(int i10) {
            this.f42314f = i10;
        }

        public final void t(boolean z10) {
            this.f42330v = z10;
        }

        @NotNull
        public String toString() {
            return "ActionCount(exitImmersionPage=" + this.f42309a + ", noPaidUnlockVideo=" + this.f42310b + ", noPaidAndWatchAdEarnBonus=" + this.f42311c + ", interstitialGap=" + this.f42312d + ", preloadAppOpenGap=" + this.f42313e + ", appOpenGapSub=" + this.f42314f + ", appOpenSubShowMax=" + this.f42315g + ", appOpenGapCoins=" + this.f42316h + ", appOpenCoinsShowMax=" + this.f42317i + ", appOpenGapOther=" + this.f42318j + ", appOpenOtherShowMax=" + this.f42319k + ", exitImmersionPageEnable=" + this.f42320l + ", exitImmersionPageCount=" + this.f42321m + ", switchTabEnable=" + this.f42322n + ", switchTabCount=" + this.f42323o + ", unlockVideoEnable=" + this.f42324p + ", unlockVideoCount=" + this.f42325q + ", homeRewardIconEnable=" + this.f42326r + ", homeRewardIconCount=" + this.f42327s + ", shortsEnable=" + this.f42328t + ", shortsIntervalCount=" + this.f42329u + ", discoverHorizontalVideoPreviewEnable=" + this.f42330v + ", immersionFullScreenNativeEnable=" + this.f42331w + ", immersionPreRollEnable=" + this.f42332x + ", immersionPreRollUnlockCount=" + this.f42333y + ", immersionPostRollEnable=" + this.f42334z + ", immersionPostRollUnlockCount=" + this.A + ", immersionMediaVideoLoadTimeout=" + this.B + ')';
        }

        public final void u(int i10) {
            this.f42309a = i10;
        }

        public final void v(int i10) {
            this.f42321m = i10;
        }

        public final void w(boolean z10) {
            this.f42320l = z10;
        }

        public final void x(int i10) {
            this.f42327s = i10;
        }

        public final void y(boolean z10) {
            this.f42326r = z10;
        }

        public final void z(boolean z10) {
            this.f42331w = z10;
        }

        public C0621a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, boolean z10, int i21, boolean z11, int i22, boolean z12, int i23, boolean z13, int i24, boolean z14, int i25, boolean z15, boolean z16, boolean z17, int i26, boolean z18, int i27, int i28) {
            this.f42309a = i10;
            this.f42310b = i11;
            this.f42311c = i12;
            this.f42312d = i13;
            this.f42313e = i14;
            this.f42314f = i15;
            this.f42315g = i16;
            this.f42316h = i17;
            this.f42317i = i18;
            this.f42318j = i19;
            this.f42319k = i20;
            this.f42320l = z10;
            this.f42321m = i21;
            this.f42322n = z11;
            this.f42323o = i22;
            this.f42324p = z12;
            this.f42325q = i23;
            this.f42326r = z13;
            this.f42327s = i24;
            this.f42328t = z14;
            this.f42329u = i25;
            this.f42330v = z15;
            this.f42331w = z16;
            this.f42332x = z17;
            this.f42333y = i26;
            this.f42334z = z18;
            this.A = i27;
            this.B = i28;
        }

        public /* synthetic */ C0621a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, boolean z10, int i21, boolean z11, int i22, boolean z12, int i23, boolean z13, int i24, boolean z14, int i25, boolean z15, boolean z16, boolean z17, int i26, boolean z18, int i27, int i28, int i29, DefaultConstructorMarker defaultConstructorMarker) {
            this((i29 & 1) != 0 ? 3 : i10, (i29 & 2) != 0 ? 1 : i11, (i29 & 4) != 0 ? 2 : i12, (i29 & 8) != 0 ? 60000 : i13, (i29 & 16) != 0 ? 600000 : i14, (i29 & 32) != 0 ? 0 : i15, (i29 & 64) != 0 ? 0 : i16, (i29 & 128) != 0 ? 0 : i17, (i29 & 256) != 0 ? 0 : i18, (i29 & 512) != 0 ? 0 : i19, (i29 & 1024) != 0 ? 0 : i20, (i29 & 2048) != 0 ? true : z10, (i29 & 4096) != 0 ? 1 : i21, (i29 & 8192) == 0 ? z11 : false, (i29 & 16384) != 0 ? 1 : i22, (i29 & 32768) != 0 ? true : z12, (i29 & 65536) != 0 ? 2 : i23, (i29 & 131072) != 0 ? true : z13, (i29 & 262144) != 0 ? 1 : i24, (i29 & 524288) != 0 ? true : z14, (i29 & 1048576) != 0 ? 5 : i25, (i29 & 2097152) != 0 ? true : z15, (i29 & 4194304) != 0 ? true : z16, (i29 & 8388608) != 0 ? true : z17, (i29 & 16777216) != 0 ? 1 : i26, (i29 & 33554432) != 0 ? true : z18, (i29 & 67108864) != 0 ? 1 : i27, (i29 & 134217728) != 0 ? 2000 : i28);
        }
    }

    private a() {
    }

    private final void g(JSONObject jSONObject) {
        C0621a c0621a = f42307b;
        JSONObject optJSONObject = jSONObject.optJSONObject(TextureRenderKeys.KEY_IS_ACTION);
        if (optJSONObject != null) {
            c0621a.u(optJSONObject.optInt("exitImmersionPage", 3));
            c0621a.H(optJSONObject.optInt("noPaidUnlockVideo", 1));
            c0621a.G(optJSONObject.optInt("noPaidAndWatchAdEarnBonus", 2));
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("gap");
        if (optJSONObject2 != null) {
            c0621a.F(optJSONObject2.optInt(Constants.PLACEMENT_TYPE_INTERSTITIAL, 60000));
            c0621a.I(optJSONObject2.optInt("preloadAppOpen", 600000));
            c0621a.s(optJSONObject2.optInt("appOpenGapSub", 0));
            c0621a.s(optJSONObject2.optInt("appOpenSubShowMax", 0));
            c0621a.q(optJSONObject2.optInt("appOpenGapCoins", 0));
            c0621a.q(optJSONObject2.optInt("appOpenCoinsShowMax", 0));
            c0621a.r(optJSONObject2.optInt("appOpenGapOther", 0));
            c0621a.r(optJSONObject2.optInt("appOpenOtherShowMax", 0));
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("scene");
        if (optJSONObject3 != null) {
            c0621a.w(optJSONObject3.optBoolean("exitImmersionPageEnable", true));
            c0621a.v(optJSONObject3.optInt("exitImmersionPageCount", 1));
            c0621a.M(optJSONObject3.optBoolean("switchTabEnable", false));
            c0621a.L(optJSONObject3.optInt("switchTabCount", 1));
            c0621a.O(optJSONObject3.optBoolean("unlockVideoEnable", true));
            c0621a.N(optJSONObject3.optInt("unlockVideoCount", 2));
            c0621a.y(optJSONObject3.optBoolean("homeRewardIconEnable", true));
            c0621a.x(optJSONObject3.optInt("homeRewardIconCount", 1));
            c0621a.J(optJSONObject3.optBoolean("shortsEnable", true));
            c0621a.K(optJSONObject3.optInt("shortsIntervalCount", 5));
            c0621a.t(optJSONObject3.optBoolean("discoverHorizontalVideoPreviewEnable", true));
            c0621a.z(optJSONObject3.optBoolean("immersionFullScreenNativeEnable", true));
            c0621a.D(optJSONObject3.optBoolean("immersionPreRollEnable", true));
            c0621a.E(optJSONObject3.optInt("immersionPreRollUnlockCount", 1));
            c0621a.B(optJSONObject3.optBoolean("immersionPostRollEnable", true));
            c0621a.C(optJSONObject3.optInt("immersionPostRollUnlockCount", 1));
            c0621a.A(optJSONObject3.optInt("immersionMediaVideoLoadTimeout", 2000));
        }
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
        boolean z10;
        try {
            g(new JSONObject(str));
            z10 = true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AdActionCountJsonConfigure", "init json failed " + str + "-> " + e10.getMessage());
            z10 = false;
        }
        return kotlin.coroutines.jvm.internal.a.a(z10);
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull rs.c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h(AdHelper.f41598a.c(), this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f42308c = z10;
    }

    @Override // me.b
    @Nullable
    public Object d(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = AppConfigureUtil.f42209a.g(context, AdHelper.f41598a.c(), this, cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public boolean e() {
        return f42308c;
    }

    @NotNull
    public final C0621a f() {
        return f42307b;
    }

    @Override // me.b
    @NotNull
    /* renamed from: h */
    public C0621a value() {
        return f42307b;
    }
}
