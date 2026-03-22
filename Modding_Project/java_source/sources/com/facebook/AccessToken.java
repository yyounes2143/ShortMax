package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.c0;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.google.ads.mediation.vungle.VungleConstants;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AccessToken.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AccessToken implements Parcelable {
    @NotNull
    public static final Parcelable.Creator<AccessToken> CREATOR;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final c f14731l = new c(null);
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final Date f14732m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final Date f14733n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final Date f14734o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final AccessTokenSource f14735p;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Date f14736a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Set<String> f14737b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f14738c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f14739d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f14740e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final AccessTokenSource f14741f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Date f14742g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final String f14743h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final String f14744i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Date f14745j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final String f14746k;

    /* compiled from: AccessToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(@Nullable FacebookException facebookException);

        void b(@Nullable AccessToken accessToken);
    }

    /* compiled from: AccessToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<AccessToken> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public AccessToken createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new AccessToken(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public AccessToken[] newArray(int i10) {
            return new AccessToken[i10];
        }
    }

    /* compiled from: AccessToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AccessToken a(@NotNull AccessToken current) {
            Intrinsics.checkNotNullParameter(current, "current");
            return new AccessToken(current.m(), current.c(), current.n(), current.k(), current.e(), current.f(), current.l(), new Date(), new Date(), current.d(), null, 1024, null);
        }

        @NotNull
        public final AccessToken b(@NotNull JSONObject jsonObject) throws JSONException {
            Collection h02;
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            if (jsonObject.getInt("version") <= 1) {
                String token = jsonObject.getString(BidResponsed.KEY_TOKEN);
                Date date = new Date(jsonObject.getLong("expires_at"));
                JSONArray permissionsArray = jsonObject.getJSONArray("permissions");
                JSONArray declinedPermissionsArray = jsonObject.getJSONArray("declined_permissions");
                JSONArray optJSONArray = jsonObject.optJSONArray("expired_permissions");
                Date date2 = new Date(jsonObject.getLong("last_refresh"));
                String string = jsonObject.getString("source");
                Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(SOURCE_KEY)");
                AccessTokenSource valueOf = AccessTokenSource.valueOf(string);
                String applicationId = jsonObject.getString("application_id");
                String userId = jsonObject.getString(TTVideoEngineInterface.PLAY_API_KEY_USERID);
                Date date3 = new Date(jsonObject.optLong("data_access_expiration_time", 0L));
                String optString = jsonObject.optString("graph_domain", null);
                Intrinsics.checkNotNullExpressionValue(token, "token");
                Intrinsics.checkNotNullExpressionValue(applicationId, "applicationId");
                Intrinsics.checkNotNullExpressionValue(userId, "userId");
                Intrinsics.checkNotNullExpressionValue(permissionsArray, "permissionsArray");
                List<String> h03 = u0.h0(permissionsArray);
                Intrinsics.checkNotNullExpressionValue(declinedPermissionsArray, "declinedPermissionsArray");
                List<String> h04 = u0.h0(declinedPermissionsArray);
                if (optJSONArray == null) {
                    h02 = new ArrayList();
                } else {
                    h02 = u0.h0(optJSONArray);
                }
                return new AccessToken(token, applicationId, userId, h03, h04, h02, valueOf, date, date2, date3, optString);
            }
            throw new FacebookException("Unknown AccessToken serialization format.");
        }

        @Nullable
        public final AccessToken c(@NotNull Bundle bundle) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            List<String> f10 = f(bundle, "com.facebook.TokenCachingStrategy.Permissions");
            List<String> f11 = f(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
            List<String> f12 = f(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
            c0.a aVar = c0.f15224c;
            String a10 = aVar.a(bundle);
            if (u0.d0(a10)) {
                a10 = v.m();
            }
            String str = a10;
            String f13 = aVar.f(bundle);
            if (f13 == null) {
                return null;
            }
            JSONObject f14 = u0.f(f13);
            if (f14 != null) {
                try {
                    string = f14.getString("id");
                } catch (JSONException unused) {
                    return null;
                }
            } else {
                string = null;
            }
            if (str == null || string == null) {
                return null;
            }
            return new AccessToken(f13, str, string, f10, f11, f12, aVar.e(bundle), aVar.c(bundle), aVar.d(bundle), null, null, 1024, null);
        }

        public final void d() {
            AccessToken i10 = f.f15529f.e().i();
            if (i10 != null) {
                i(a(i10));
            }
        }

        @Nullable
        public final AccessToken e() {
            return f.f15529f.e().i();
        }

        @NotNull
        public final List<String> f(@NotNull Bundle bundle, @Nullable String str) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
            if (stringArrayList == null) {
                return CollectionsKt.n();
            }
            List<String> unmodifiableList = Collections.unmodifiableList(new ArrayList(stringArrayList));
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "{\n            Collection…Permissions))\n          }");
            return unmodifiableList;
        }

        public final boolean g() {
            AccessToken i10 = f.f15529f.e().i();
            if (i10 != null && !i10.o()) {
                return true;
            }
            return false;
        }

        public final boolean h() {
            AccessToken i10 = f.f15529f.e().i();
            if (i10 != null && !i10.o() && i10.p()) {
                return true;
            }
            return false;
        }

        public final void i(@Nullable AccessToken accessToken) {
            f.f15529f.e().r(accessToken);
        }

        private c() {
        }
    }

    /* compiled from: AccessToken.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class d {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccessTokenSource.values().length];
            try {
                iArr[AccessTokenSource.FACEBOOK_APPLICATION_WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccessTokenSource.CHROME_CUSTOM_TAB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccessTokenSource.WEB_VIEW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Date date = new Date(Long.MAX_VALUE);
        f14732m = date;
        f14733n = date;
        f14734o = new Date();
        f14735p = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        CREATOR = new b();
    }

    public /* synthetic */ AccessToken(String str, String str2, String str3, Collection collection, Collection collection2, Collection collection3, AccessTokenSource accessTokenSource, Date date, Date date2, Date date3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, collection, collection2, collection3, accessTokenSource, date, date2, date3, (i10 & 1024) != 0 ? "facebook" : str4);
    }

    private final void a(StringBuilder sb2) {
        sb2.append(" permissions:");
        sb2.append("[");
        sb2.append(TextUtils.join(", ", this.f14737b));
        sb2.append("]");
    }

    private final AccessTokenSource b(AccessTokenSource accessTokenSource, String str) {
        if (str != null && str.equals("instagram")) {
            int i10 = d.$EnumSwitchMapping$0[accessTokenSource.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return AccessTokenSource.INSTAGRAM_WEB_VIEW;
                    }
                    return accessTokenSource;
                }
                return AccessTokenSource.INSTAGRAM_CUSTOM_CHROME_TAB;
            }
            return AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
        }
        return accessTokenSource;
    }

    private final String x() {
        if (v.I(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.f14740e;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    @NotNull
    public final String c() {
        return this.f14743h;
    }

    @NotNull
    public final Date d() {
        return this.f14745j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NotNull
    public final Set<String> e() {
        return this.f14738c;
    }

    public boolean equals(@Nullable Object obj) {
        boolean areEqual;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (Intrinsics.areEqual(this.f14736a, accessToken.f14736a) && Intrinsics.areEqual(this.f14737b, accessToken.f14737b) && Intrinsics.areEqual(this.f14738c, accessToken.f14738c) && Intrinsics.areEqual(this.f14739d, accessToken.f14739d) && Intrinsics.areEqual(this.f14740e, accessToken.f14740e) && this.f14741f == accessToken.f14741f && Intrinsics.areEqual(this.f14742g, accessToken.f14742g) && Intrinsics.areEqual(this.f14743h, accessToken.f14743h) && Intrinsics.areEqual(this.f14744i, accessToken.f14744i) && Intrinsics.areEqual(this.f14745j, accessToken.f14745j)) {
            String str = this.f14746k;
            String str2 = accessToken.f14746k;
            if (str == null) {
                if (str2 == null) {
                    areEqual = true;
                } else {
                    areEqual = false;
                }
            } else {
                areEqual = Intrinsics.areEqual(str, str2);
            }
            if (areEqual) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Set<String> f() {
        return this.f14739d;
    }

    @NotNull
    public final Date g() {
        return this.f14736a;
    }

    @Nullable
    public final String h() {
        return this.f14746k;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f14736a.hashCode()) * 31) + this.f14737b.hashCode()) * 31) + this.f14738c.hashCode()) * 31) + this.f14739d.hashCode()) * 31) + this.f14740e.hashCode()) * 31) + this.f14741f.hashCode()) * 31) + this.f14742g.hashCode()) * 31) + this.f14743h.hashCode()) * 31) + this.f14744i.hashCode()) * 31) + this.f14745j.hashCode()) * 31;
        String str = this.f14746k;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public final Date j() {
        return this.f14742g;
    }

    @NotNull
    public final Set<String> k() {
        return this.f14737b;
    }

    @NotNull
    public final AccessTokenSource l() {
        return this.f14741f;
    }

    @NotNull
    public final String m() {
        return this.f14740e;
    }

    @NotNull
    public final String n() {
        return this.f14744i;
    }

    public final boolean o() {
        return new Date().after(this.f14736a);
    }

    public final boolean p() {
        String str = this.f14746k;
        if (str != null && str.equals("instagram")) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{AccessToken");
        sb2.append(" token:");
        sb2.append(x());
        a(sb2);
        sb2.append("}");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "builder.toString()");
        return sb3;
    }

    @NotNull
    public final JSONObject w() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put(BidResponsed.KEY_TOKEN, this.f14740e);
        jSONObject.put("expires_at", this.f14736a.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f14737b));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f14738c));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f14739d));
        jSONObject.put("last_refresh", this.f14742g.getTime());
        jSONObject.put("source", this.f14741f.name());
        jSONObject.put("application_id", this.f14743h);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.f14744i);
        jSONObject.put("data_access_expiration_time", this.f14745j.getTime());
        String str = this.f14746k;
        if (str != null) {
            jSONObject.put("graph_domain", str);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.f14736a.getTime());
        dest.writeStringList(new ArrayList(this.f14737b));
        dest.writeStringList(new ArrayList(this.f14738c));
        dest.writeStringList(new ArrayList(this.f14739d));
        dest.writeString(this.f14740e);
        dest.writeString(this.f14741f.name());
        dest.writeLong(this.f14742g.getTime());
        dest.writeString(this.f14743h);
        dest.writeString(this.f14744i);
        dest.writeLong(this.f14745j.getTime());
        dest.writeString(this.f14746k);
    }

    public AccessToken(@NotNull String accessToken, @NotNull String applicationId, @NotNull String userId, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable Collection<String> collection3, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2, @Nullable Date date3, @Nullable String str) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        v0.g(accessToken, CommonConstant.KEY_ACCESS_TOKEN);
        v0.g(applicationId, "applicationId");
        v0.g(userId, VungleConstants.KEY_USER_ID);
        this.f14736a = date == null ? f14733n : date;
        Set<String> unmodifiableSet = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(if (perm…missions) else HashSet())");
        this.f14737b = unmodifiableSet;
        Set<String> unmodifiableSet2 = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet2, "unmodifiableSet(\n       …missions) else HashSet())");
        this.f14738c = unmodifiableSet2;
        Set<String> unmodifiableSet3 = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet3, "unmodifiableSet(\n       …missions) else HashSet())");
        this.f14739d = unmodifiableSet3;
        this.f14740e = accessToken;
        this.f14741f = b(accessTokenSource == null ? f14735p : accessTokenSource, str);
        this.f14742g = date2 == null ? f14734o : date2;
        this.f14743h = applicationId;
        this.f14744i = userId;
        this.f14745j = (date3 == null || date3.getTime() == 0) ? f14733n : date3;
        this.f14746k = str == null ? "facebook" : str;
    }

    public AccessToken(@NotNull Parcel parcel) {
        AccessTokenSource accessTokenSource;
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f14736a = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet = Collections.unmodifiableSet(new HashSet(arrayList));
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(HashSet(permissionsList))");
        this.f14737b = unmodifiableSet;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet2 = Collections.unmodifiableSet(new HashSet(arrayList));
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet2, "unmodifiableSet(HashSet(permissionsList))");
        this.f14738c = unmodifiableSet2;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set<String> unmodifiableSet3 = Collections.unmodifiableSet(new HashSet(arrayList));
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet3, "unmodifiableSet(HashSet(permissionsList))");
        this.f14739d = unmodifiableSet3;
        this.f14740e = v0.k(parcel.readString(), BidResponsed.KEY_TOKEN);
        String readString = parcel.readString();
        if (readString != null) {
            accessTokenSource = AccessTokenSource.valueOf(readString);
        } else {
            accessTokenSource = f14735p;
        }
        this.f14741f = accessTokenSource;
        this.f14742g = new Date(parcel.readLong());
        this.f14743h = v0.k(parcel.readString(), "applicationId");
        this.f14744i = v0.k(parcel.readString(), VungleConstants.KEY_USER_ID);
        this.f14745j = new Date(parcel.readLong());
        this.f14746k = parcel.readString();
    }
}
