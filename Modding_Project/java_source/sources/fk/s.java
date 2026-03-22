package fk;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.net.URLEncoder;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: ExternalBrowserUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final s f51749a = new s();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f51750b;

    private s() {
    }

    private final String b() {
        String str;
        String str2;
        ActResource p10 = ud.a.f68411a.p();
        String str3 = "";
        if (p10 == null) {
            return "";
        }
        ActResourceExtraInfo extendInfo = p10.getExtendInfo();
        String str4 = null;
        if (extendInfo != null) {
            str = extendInfo.getCampaignId();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str3 = "&activityId=" + str;
        }
        ActResourceExtraInfo extendInfo2 = p10.getExtendInfo();
        if (extendInfo2 != null) {
            str2 = extendInfo2.getCampaignName();
        } else {
            str2 = null;
        }
        if (str2 != null && str2.length() != 0) {
            str3 = "&activityName=" + str2;
        }
        ActResourceExtraInfo extendInfo3 = p10.getExtendInfo();
        if (extendInfo3 != null) {
            str4 = extendInfo3.getCampaignType();
        }
        if (str4 != null && str4.length() != 0) {
            return "&activityType=" + str4;
        }
        return str3;
    }

    private final String k(final JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
        return kotlin.sequences.j.D(kotlin.sequences.j.F(kotlin.sequences.j.e(keys), new Function1() { // from class: fk.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String l10;
                l10 = s.l(jSONObject, (String) obj);
                return l10;
            }
        }), ContainerUtils.FIELD_DELIMITER, null, null, 0, null, null, 62, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String l(JSONObject jSONObject, String str) {
        return str + '=' + URLEncoder.encode(jSONObject.optString(str), "UTF-8");
    }

    private final String m() {
        String str;
        String str2;
        String str3;
        AccountRepo accountRepo = AccountRepo.f43052a;
        Account a02 = accountRepo.a0();
        Integer num = null;
        if (a02 != null) {
            str = a02.getUserCode();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = "&userCode=" + str;
        } else {
            str2 = "";
        }
        if (a02 != null) {
            str3 = a02.getCurrentSubscriptionOrderNo();
        } else {
            str3 = null;
        }
        if (str3 != null && str3.length() != 0) {
            str2 = str2 + "&currentSubscriptionOrderNo=" + str3;
        }
        if (a02 != null) {
            num = a02.getSubscriptionOrderType();
        }
        if (num != null && num.intValue() > 0) {
            str2 = str2 + "&subscriptionOrderType=" + num;
        }
        String str4 = str2 + "&language=" + DeviceUtil.f48146a.s();
        String r02 = accountRepo.r0();
        if (r02 != null && r02.length() != 0) {
            return str4 + "&token=" + URLEncoder.encode(r02, "UTF-8");
        }
        return str4;
    }

    @NotNull
    public final String c(int i10, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable Integer num5, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16) {
        String str17;
        if (i10 != 1 && i10 != 2) {
            return "";
        }
        if (str == null || str.length() == 0) {
            return "";
        }
        String str18 = "?incomeType=" + i10 + "&skuID=" + str + "&version=" + DeviceUtil.f48146a.V();
        String m10 = m();
        if (StringsKt.b0(m10, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            str18 = str18 + m10;
        }
        String b10 = b();
        if (StringsKt.b0(b10, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            str18 = str18 + b10;
        }
        if (str11 != null && str11.length() != 0) {
            str18 = str18 + "&payStylePayType=" + str11;
        }
        if (num != null && num.intValue() > 0) {
            str18 = str18 + "&payType=" + num;
        }
        if (!TextUtils.isEmpty(str14)) {
            str18 = str18 + "&action=" + str14;
        }
        if (str2 != null && str2.length() != 0) {
            str18 = str18 + "&productId=" + str2;
        }
        if (str3 != null && str3.length() != 0) {
            str18 = str18 + "&currencyUnit=" + str3;
        }
        if (str4 != null && str4.length() != 0) {
            str18 = str18 + "&templateStyleId=" + str4;
        }
        if (str5 != null && str5.length() != 0) {
            str18 = str18 + "&skuModelConfigId=" + str5;
        }
        if (num2 != null && num2.intValue() > 0) {
            str18 = str18 + "&shortPlayerID=" + num2;
        }
        if (num3 != null && num3.intValue() > 0) {
            str18 = str18 + "&detailShortID=" + num3;
        }
        if (num4 != null && num4.intValue() > 0) {
            str18 = str18 + "&episodeNum=" + num4;
        }
        if (str6 != null && str6.length() != 0) {
            str18 = str18 + "&reelPlaySource=" + str6;
        }
        if (str7 != null && str7.length() != 0) {
            str18 = str18 + "&upack=" + str7;
        }
        if (str8 != null && str8.length() != 0) {
            str18 = str18 + "&planId=" + str8;
        }
        if (str9 != null && str9.length() != 0) {
            str18 = str18 + "&countryCode=" + str9;
        }
        if (str10 != null && str10.length() != 0) {
            str18 = str18 + "&scene=" + str10;
        }
        if (num5 != null && num5.intValue() >= 0) {
            str18 = str18 + "&defaultPayTag=" + num5;
        }
        if (str12 != null && str12.length() != 0) {
            str18 = str18 + "&experimentKey=" + str12;
        }
        if (str13 != null && str13.length() != 0) {
            str18 = str18 + "&experimentValue=" + str13;
        }
        if (str15 != null && str15.length() != 0) {
            str18 = str18 + "&ev=" + URLEncoder.encode(str15, "UTF-8");
        }
        if (str16 != null && str16.length() != 0) {
            str18 = str18 + "&h5JsonParam=" + URLEncoder.encode(str16, "UTF-8");
        }
        Account a02 = AccountRepo.f43052a.a0();
        if (!(a02 != null ? Intrinsics.areEqual(a02.getOneTouchPayOpen(), Boolean.TRUE) : false)) {
            str17 = (String) ng.e.f62912a.i("tpUrlHost", "");
        } else {
            str17 = (Intrinsics.areEqual(bool, Boolean.TRUE) && num != null && num.intValue() == 4) ? (String) ng.e.f62912a.i("payV3UrlHost", "") : (String) ng.e.f62912a.i("tpUrlHost", "");
        }
        Logger.f41511a.e("ExternalBrowserUtil", "create Url ==> " + str17 + str18);
        return str17 + str18;
    }

    public final boolean d() {
        return f51750b;
    }

    public final void e(int i10, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable Integer num5, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16) {
        String c10 = c(i10, num, str, str2, str3, str4, str5, num2, num3, num4, str6, str7, bool, str8, str9, str10, str11, num5, str12, str13, str14, str15, str16);
        Logger logger = Logger.f41511a;
        logger.e("ExternalBrowserUtil", "External Browser Url ==> " + c10);
        if (c10.length() > 0) {
            f51750b = true;
            j(c10);
        }
    }

    public final void f(@NotNull a data) {
        Intrinsics.checkNotNullParameter(data, "data");
        e(data.o(), data.l(), data.t(), data.n(), data.c(), data.v(), data.u(), data.s(), data.e(), data.f(), data.p(), data.w(), data.q(), data.m(), data.b(), data.r(), data.k(), data.d(), data.h(), data.i(), data.a(), data.g(), data.j());
    }

    public final void h(@NotNull JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        String str = ((String) ng.e.f62912a.i("tpUrlHost", "")) + "?version=" + DeviceUtil.f48146a.V();
        String m10 = m();
        if (StringsKt.b0(m10, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            str = str + m10;
        }
        String b10 = b();
        if (StringsKt.b0(b10, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            str = str + b10;
        }
        if (json.length() > 0) {
            str = str + '&' + k(json);
        }
        Logger.f41511a.e("ExternalBrowserUtil", "External Browser Url (H5ActivitySkuToPay) ==> " + str);
        if (str.length() > 0) {
            f51750b = true;
            j(str);
        }
    }

    public final void i(boolean z10) {
        f51750b = z10;
    }

    public final void j(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(url));
            intent.setFlags(268435456);
            u.f51776a.b().startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    /* compiled from: ExternalBrowserUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f51751a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Integer f51752b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f51753c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f51754d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f51755e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final String f51756f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f51757g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Integer f51758h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private final Integer f51759i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private final Integer f51760j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final String f51761k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final String f51762l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final Boolean f51763m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private final String f51764n;
        @Nullable

        /* renamed from: o  reason: collision with root package name */
        private final String f51765o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private final String f51766p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private final String f51767q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private final String f51768r;
        @Nullable

        /* renamed from: s  reason: collision with root package name */
        private final String f51769s;
        @Nullable

        /* renamed from: t  reason: collision with root package name */
        private final String f51770t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private final Integer f51771u;
        @Nullable

        /* renamed from: v  reason: collision with root package name */
        private final String f51772v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private final String f51773w;

        public a(int i10, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str6, @Nullable String str7, @Nullable Boolean bool, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable Integer num5, @Nullable String str15, @Nullable String str16) {
            this.f51751a = i10;
            this.f51752b = num;
            this.f51753c = str;
            this.f51754d = str2;
            this.f51755e = str3;
            this.f51756f = str4;
            this.f51757g = str5;
            this.f51758h = num2;
            this.f51759i = num3;
            this.f51760j = num4;
            this.f51761k = str6;
            this.f51762l = str7;
            this.f51763m = bool;
            this.f51764n = str8;
            this.f51765o = str9;
            this.f51766p = str10;
            this.f51767q = str11;
            this.f51768r = str12;
            this.f51769s = str13;
            this.f51770t = str14;
            this.f51771u = num5;
            this.f51772v = str15;
            this.f51773w = str16;
        }

        @Nullable
        public final String a() {
            return this.f51768r;
        }

        @Nullable
        public final String b() {
            return this.f51765o;
        }

        @Nullable
        public final String c() {
            return this.f51755e;
        }

        @Nullable
        public final Integer d() {
            return this.f51771u;
        }

        @Nullable
        public final Integer e() {
            return this.f51759i;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f51751a == aVar.f51751a && Intrinsics.areEqual(this.f51752b, aVar.f51752b) && Intrinsics.areEqual(this.f51753c, aVar.f51753c) && Intrinsics.areEqual(this.f51754d, aVar.f51754d) && Intrinsics.areEqual(this.f51755e, aVar.f51755e) && Intrinsics.areEqual(this.f51756f, aVar.f51756f) && Intrinsics.areEqual(this.f51757g, aVar.f51757g) && Intrinsics.areEqual(this.f51758h, aVar.f51758h) && Intrinsics.areEqual(this.f51759i, aVar.f51759i) && Intrinsics.areEqual(this.f51760j, aVar.f51760j) && Intrinsics.areEqual(this.f51761k, aVar.f51761k) && Intrinsics.areEqual(this.f51762l, aVar.f51762l) && Intrinsics.areEqual(this.f51763m, aVar.f51763m) && Intrinsics.areEqual(this.f51764n, aVar.f51764n) && Intrinsics.areEqual(this.f51765o, aVar.f51765o) && Intrinsics.areEqual(this.f51766p, aVar.f51766p) && Intrinsics.areEqual(this.f51767q, aVar.f51767q) && Intrinsics.areEqual(this.f51768r, aVar.f51768r) && Intrinsics.areEqual(this.f51769s, aVar.f51769s) && Intrinsics.areEqual(this.f51770t, aVar.f51770t) && Intrinsics.areEqual(this.f51771u, aVar.f51771u) && Intrinsics.areEqual(this.f51772v, aVar.f51772v) && Intrinsics.areEqual(this.f51773w, aVar.f51773w)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer f() {
            return this.f51760j;
        }

        @Nullable
        public final String g() {
            return this.f51772v;
        }

        @Nullable
        public final String h() {
            return this.f51769s;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int hashCode9;
            int hashCode10;
            int hashCode11;
            int hashCode12;
            int hashCode13;
            int hashCode14;
            int hashCode15;
            int hashCode16;
            int hashCode17;
            int hashCode18;
            int hashCode19;
            int hashCode20;
            int hashCode21;
            int hashCode22 = Integer.hashCode(this.f51751a) * 31;
            Integer num = this.f51752b;
            int i10 = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i11 = (hashCode22 + hashCode) * 31;
            String str = this.f51753c;
            if (str == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            String str2 = this.f51754d;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str3 = this.f51755e;
            if (str3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str3.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str4 = this.f51756f;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            String str5 = this.f51757g;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i16 = (i15 + hashCode6) * 31;
            Integer num2 = this.f51758h;
            if (num2 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = num2.hashCode();
            }
            int i17 = (i16 + hashCode7) * 31;
            Integer num3 = this.f51759i;
            if (num3 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = num3.hashCode();
            }
            int i18 = (i17 + hashCode8) * 31;
            Integer num4 = this.f51760j;
            if (num4 == null) {
                hashCode9 = 0;
            } else {
                hashCode9 = num4.hashCode();
            }
            int i19 = (i18 + hashCode9) * 31;
            String str6 = this.f51761k;
            if (str6 == null) {
                hashCode10 = 0;
            } else {
                hashCode10 = str6.hashCode();
            }
            int i20 = (i19 + hashCode10) * 31;
            String str7 = this.f51762l;
            if (str7 == null) {
                hashCode11 = 0;
            } else {
                hashCode11 = str7.hashCode();
            }
            int i21 = (i20 + hashCode11) * 31;
            Boolean bool = this.f51763m;
            if (bool == null) {
                hashCode12 = 0;
            } else {
                hashCode12 = bool.hashCode();
            }
            int i22 = (i21 + hashCode12) * 31;
            String str8 = this.f51764n;
            if (str8 == null) {
                hashCode13 = 0;
            } else {
                hashCode13 = str8.hashCode();
            }
            int i23 = (i22 + hashCode13) * 31;
            String str9 = this.f51765o;
            if (str9 == null) {
                hashCode14 = 0;
            } else {
                hashCode14 = str9.hashCode();
            }
            int i24 = (i23 + hashCode14) * 31;
            String str10 = this.f51766p;
            if (str10 == null) {
                hashCode15 = 0;
            } else {
                hashCode15 = str10.hashCode();
            }
            int i25 = (i24 + hashCode15) * 31;
            String str11 = this.f51767q;
            if (str11 == null) {
                hashCode16 = 0;
            } else {
                hashCode16 = str11.hashCode();
            }
            int i26 = (i25 + hashCode16) * 31;
            String str12 = this.f51768r;
            if (str12 == null) {
                hashCode17 = 0;
            } else {
                hashCode17 = str12.hashCode();
            }
            int i27 = (i26 + hashCode17) * 31;
            String str13 = this.f51769s;
            if (str13 == null) {
                hashCode18 = 0;
            } else {
                hashCode18 = str13.hashCode();
            }
            int i28 = (i27 + hashCode18) * 31;
            String str14 = this.f51770t;
            if (str14 == null) {
                hashCode19 = 0;
            } else {
                hashCode19 = str14.hashCode();
            }
            int i29 = (i28 + hashCode19) * 31;
            Integer num5 = this.f51771u;
            if (num5 == null) {
                hashCode20 = 0;
            } else {
                hashCode20 = num5.hashCode();
            }
            int i30 = (i29 + hashCode20) * 31;
            String str15 = this.f51772v;
            if (str15 == null) {
                hashCode21 = 0;
            } else {
                hashCode21 = str15.hashCode();
            }
            int i31 = (i30 + hashCode21) * 31;
            String str16 = this.f51773w;
            if (str16 != null) {
                i10 = str16.hashCode();
            }
            return i31 + i10;
        }

        @Nullable
        public final String i() {
            return this.f51770t;
        }

        @Nullable
        public final String j() {
            return this.f51773w;
        }

        @Nullable
        public final String k() {
            return this.f51767q;
        }

        @Nullable
        public final Integer l() {
            return this.f51752b;
        }

        @Nullable
        public final String m() {
            return this.f51764n;
        }

        @Nullable
        public final String n() {
            return this.f51754d;
        }

        public final int o() {
            return this.f51751a;
        }

        @Nullable
        public final String p() {
            return this.f51761k;
        }

        @Nullable
        public final Boolean q() {
            return this.f51763m;
        }

        @Nullable
        public final String r() {
            return this.f51766p;
        }

        @Nullable
        public final Integer s() {
            return this.f51758h;
        }

        @Nullable
        public final String t() {
            return this.f51753c;
        }

        @NotNull
        public String toString() {
            return "ExternalBrowserData(purchaseType=" + this.f51751a + ", payType=" + this.f51752b + ", skuId=" + this.f51753c + ", productId=" + this.f51754d + ", currencyUnit=" + this.f51755e + ", templateStyleId=" + this.f51756f + ", skuModelConfigId=" + this.f51757g + ", shortPlayerID=" + this.f51758h + ", detailShortID=" + this.f51759i + ", episodeNum=" + this.f51760j + ", reelPlaySource=" + this.f51761k + ", uPack=" + this.f51762l + ", rememberPaypal=" + this.f51763m + ", planId=" + this.f51764n + ", countryCode=" + this.f51765o + ", scene=" + this.f51766p + ", payStylePayType=" + this.f51767q + ", action=" + this.f51768r + ", experimentKey=" + this.f51769s + ", experimentValue=" + this.f51770t + ", defaultPayTag=" + this.f51771u + ", ev=" + this.f51772v + ", h5JsonParam=" + this.f51773w + ')';
        }

        @Nullable
        public final String u() {
            return this.f51757g;
        }

        @Nullable
        public final String v() {
            return this.f51756f;
        }

        @Nullable
        public final String w() {
            return this.f51762l;
        }

        public /* synthetic */ a(int i10, Integer num, String str, String str2, String str3, String str4, String str5, Integer num2, Integer num3, Integer num4, String str6, String str7, Boolean bool, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Integer num5, String str15, String str16, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, (i11 & 2) != 0 ? null : num, str, str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : num2, (i11 & 256) != 0 ? null : num3, (i11 & 512) != 0 ? null : num4, (i11 & 1024) != 0 ? null : str6, (i11 & 2048) != 0 ? null : str7, (i11 & 4096) != 0 ? Boolean.FALSE : bool, (i11 & 8192) != 0 ? null : str8, (i11 & 16384) != 0 ? null : str9, (32768 & i11) != 0 ? null : str10, (65536 & i11) != 0 ? null : str11, (131072 & i11) != 0 ? "other" : str12, (262144 & i11) != 0 ? null : str13, (524288 & i11) != 0 ? null : str14, (1048576 & i11) != 0 ? -1 : num5, (2097152 & i11) != 0 ? "" : str15, (i11 & 4194304) != 0 ? "" : str16);
        }
    }
}
