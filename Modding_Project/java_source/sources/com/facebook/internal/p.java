package com.facebook.internal;

import android.net.Uri;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: FetchedAppSettings.kt */
@Metadata
/* loaded from: classes3.dex */
public final class p {
    @NotNull
    public static final a G = new a(null);
    @Nullable
    private final JSONArray A;
    @Nullable
    private final List<String> B;
    @Nullable
    private final List<String> C;
    @Nullable
    private final List<Pair<String, List<String>>> D;
    @Nullable
    private final List<Pair<String, List<String>>> E;
    @Nullable
    private final Long F;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f16272a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f16273b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f16274c;

    /* renamed from: d  reason: collision with root package name */
    private final int f16275d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final EnumSet<SmartLoginOption> f16276e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Map<String, b>> f16277f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f16278g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final i f16279h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final String f16280i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final String f16281j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f16282k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f16283l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final JSONArray f16284m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final String f16285n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f16286o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f16287p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final String f16288q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final String f16289r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final String f16290s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final JSONArray f16291t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private final JSONArray f16292u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private final Map<String, Boolean> f16293v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final JSONArray f16294w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final JSONArray f16295x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private final JSONArray f16296y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private final JSONArray f16297z;

    /* compiled from: FetchedAppSettings.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FetchedAppSettings.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final a f16298e = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f16299a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f16300b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Uri f16301c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final int[] f16302d;

        /* compiled from: FetchedAppSettings.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final int[] b(JSONArray jSONArray) {
                if (jSONArray != null) {
                    int length = jSONArray.length();
                    int[] iArr = new int[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        int i11 = -1;
                        int optInt = jSONArray.optInt(i10, -1);
                        if (optInt == -1) {
                            String versionString = jSONArray.optString(i10);
                            if (!u0.d0(versionString)) {
                                try {
                                    Intrinsics.checkNotNullExpressionValue(versionString, "versionString");
                                    i11 = Integer.parseInt(versionString);
                                } catch (NumberFormatException e10) {
                                    u0.j0("FacebookSDK", e10);
                                }
                                optInt = i11;
                            }
                        }
                        iArr[i10] = optInt;
                    }
                    return iArr;
                }
                return null;
            }

            @Nullable
            public final b a(@NotNull JSONObject dialogConfigJSON) {
                Intrinsics.checkNotNullParameter(dialogConfigJSON, "dialogConfigJSON");
                String dialogNameWithFeature = dialogConfigJSON.optString("name");
                Uri uri = null;
                if (u0.d0(dialogNameWithFeature)) {
                    return null;
                }
                Intrinsics.checkNotNullExpressionValue(dialogNameWithFeature, "dialogNameWithFeature");
                List split$default = StringsKt.split$default(dialogNameWithFeature, new String[]{HiAnalyticsConstant.REPORT_VAL_SEPARATOR}, false, 0, 6, null);
                if (split$default.size() != 2) {
                    return null;
                }
                String str = (String) CollectionsKt.r0(split$default);
                String str2 = (String) CollectionsKt.C0(split$default);
                if (u0.d0(str) || u0.d0(str2)) {
                    return null;
                }
                String optString = dialogConfigJSON.optString("url");
                if (!u0.d0(optString)) {
                    uri = Uri.parse(optString);
                }
                return new b(str, str2, uri, b(dialogConfigJSON.optJSONArray("versions")), null);
            }

            private a() {
            }
        }

        public /* synthetic */ b(String str, String str2, Uri uri, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, uri, iArr);
        }

        @NotNull
        public final String a() {
            return this.f16299a;
        }

        @NotNull
        public final String b() {
            return this.f16300b;
        }

        private b(String str, String str2, Uri uri, int[] iArr) {
            this.f16299a = str;
            this.f16300b = str2;
            this.f16301c = uri;
            this.f16302d = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(boolean z10, @NotNull String nuxContent, boolean z11, int i10, @NotNull EnumSet<SmartLoginOption> smartLoginOptions, @NotNull Map<String, ? extends Map<String, b>> dialogConfigurations, boolean z12, @NotNull i errorClassification, @NotNull String smartLoginBookmarkIconURL, @NotNull String smartLoginMenuIconURL, boolean z13, boolean z14, @Nullable JSONArray jSONArray, @NotNull String sdkUpdateMessage, boolean z15, boolean z16, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable JSONArray jSONArray2, @Nullable JSONArray jSONArray3, @Nullable Map<String, Boolean> map, @Nullable JSONArray jSONArray4, @Nullable JSONArray jSONArray5, @Nullable JSONArray jSONArray6, @Nullable JSONArray jSONArray7, @Nullable JSONArray jSONArray8, @Nullable List<String> list, @Nullable List<String> list2, @Nullable List<? extends Pair<String, ? extends List<String>>> list3, @Nullable List<? extends Pair<String, ? extends List<String>>> list4, @Nullable Long l10) {
        Intrinsics.checkNotNullParameter(nuxContent, "nuxContent");
        Intrinsics.checkNotNullParameter(smartLoginOptions, "smartLoginOptions");
        Intrinsics.checkNotNullParameter(dialogConfigurations, "dialogConfigurations");
        Intrinsics.checkNotNullParameter(errorClassification, "errorClassification");
        Intrinsics.checkNotNullParameter(smartLoginBookmarkIconURL, "smartLoginBookmarkIconURL");
        Intrinsics.checkNotNullParameter(smartLoginMenuIconURL, "smartLoginMenuIconURL");
        Intrinsics.checkNotNullParameter(sdkUpdateMessage, "sdkUpdateMessage");
        this.f16272a = z10;
        this.f16273b = nuxContent;
        this.f16274c = z11;
        this.f16275d = i10;
        this.f16276e = smartLoginOptions;
        this.f16277f = dialogConfigurations;
        this.f16278g = z12;
        this.f16279h = errorClassification;
        this.f16280i = smartLoginBookmarkIconURL;
        this.f16281j = smartLoginMenuIconURL;
        this.f16282k = z13;
        this.f16283l = z14;
        this.f16284m = jSONArray;
        this.f16285n = sdkUpdateMessage;
        this.f16286o = z15;
        this.f16287p = z16;
        this.f16288q = str;
        this.f16289r = str2;
        this.f16290s = str3;
        this.f16291t = jSONArray2;
        this.f16292u = jSONArray3;
        this.f16293v = map;
        this.f16294w = jSONArray4;
        this.f16295x = jSONArray5;
        this.f16296y = jSONArray6;
        this.f16297z = jSONArray7;
        this.A = jSONArray8;
        this.B = list;
        this.C = list2;
        this.D = list3;
        this.E = list4;
        this.F = l10;
    }

    public final boolean a() {
        return this.f16278g;
    }

    @Nullable
    public final JSONArray b() {
        return this.A;
    }

    @Nullable
    public final JSONArray c() {
        return this.f16294w;
    }

    public final boolean d() {
        return this.f16283l;
    }

    @Nullable
    public final List<String> e() {
        return this.B;
    }

    @Nullable
    public final Long f() {
        return this.F;
    }

    @NotNull
    public final i g() {
        return this.f16279h;
    }

    @Nullable
    public final JSONArray h() {
        return this.f16284m;
    }

    public final boolean i() {
        return this.f16282k;
    }

    @Nullable
    public final JSONArray j() {
        return this.f16292u;
    }

    @NotNull
    public final String k() {
        return this.f16273b;
    }

    public final boolean l() {
        return this.f16274c;
    }

    @Nullable
    public final List<Pair<String, List<String>>> m() {
        return this.D;
    }

    @Nullable
    public final JSONArray n() {
        return this.f16291t;
    }

    @Nullable
    public final List<String> o() {
        return this.C;
    }

    @Nullable
    public final String p() {
        return this.f16288q;
    }

    @Nullable
    public final JSONArray q() {
        return this.f16295x;
    }

    @Nullable
    public final String r() {
        return this.f16290s;
    }

    @Nullable
    public final JSONArray s() {
        return this.f16297z;
    }

    @NotNull
    public final String t() {
        return this.f16285n;
    }

    @Nullable
    public final JSONArray u() {
        return this.f16296y;
    }

    public final int v() {
        return this.f16275d;
    }

    @NotNull
    public final EnumSet<SmartLoginOption> w() {
        return this.f16276e;
    }

    @Nullable
    public final String x() {
        return this.f16289r;
    }

    @Nullable
    public final List<Pair<String, List<String>>> y() {
        return this.E;
    }

    public final boolean z() {
        return this.f16272a;
    }
}
