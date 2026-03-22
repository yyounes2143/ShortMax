package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LoginClient.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nLoginClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginClient.kt\ncom/facebook/login/LoginClient\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,704:1\n37#2,2:705\n37#2,2:721\n26#3:707\n11653#4,9:708\n13579#4:717\n13580#4:719\n11662#4:720\n1#5:718\n*S KotlinDebug\n*F\n+ 1 LoginClient.kt\ncom/facebook/login/LoginClient\n*L\n166#1:705,2\n661#1:721,2\n654#1:707\n656#1:708,9\n656#1:717\n656#1:719\n656#1:720\n656#1:718\n*E\n"})
/* loaded from: classes3.dex */
public class LoginClient implements Parcelable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private LoginMethodHandler[] f16449a;

    /* renamed from: b  reason: collision with root package name */
    private int f16450b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Fragment f16451c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private d f16452d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a f16453e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16454f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Request f16455g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f16456h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f16457i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private o f16458j;

    /* renamed from: k  reason: collision with root package name */
    private int f16459k;

    /* renamed from: l  reason: collision with root package name */
    private int f16460l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final c f16448m = new c(null);
    @NotNull
    public static final Parcelable.Creator<LoginClient> CREATOR = new b();

    /* compiled from: LoginClient.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginClient.kt\ncom/facebook/login/LoginClient$Request\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,704:1\n1#2:705\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Request implements Parcelable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final LoginBehavior f16462a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Set<String> f16463b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final DefaultAudience f16464c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f16465d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private String f16466e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f16467f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f16468g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private String f16469h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private String f16470i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f16471j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f16472k;
        @NotNull

        /* renamed from: l  reason: collision with root package name */
        private final LoginTargetApp f16473l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f16474m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f16475n;
        @NotNull

        /* renamed from: o  reason: collision with root package name */
        private final String f16476o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private final String f16477p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private final String f16478q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private final CodeChallengeMethod f16479r;
        @NotNull

        /* renamed from: s  reason: collision with root package name */
        public static final b f16461s = new b(null);
        @NotNull
        public static final Parcelable.Creator<Request> CREATOR = new a();

        /* compiled from: LoginClient.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a implements Parcelable.Creator<Request> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: a */
            public Request createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new Request(source, null);
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: b */
            public Request[] newArray(int i10) {
                return new Request[i10];
            }
        }

        /* compiled from: LoginClient.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private b() {
            }
        }

        public /* synthetic */ Request(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        public final void A(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f16466e = str;
        }

        public final void B(boolean z10) {
            this.f16474m = z10;
        }

        public final void C(@Nullable String str) {
            this.f16471j = str;
        }

        public final void D(@NotNull Set<String> set) {
            Intrinsics.checkNotNullParameter(set, "<set-?>");
            this.f16463b = set;
        }

        public final void E(boolean z10) {
            this.f16467f = z10;
        }

        public final void G(boolean z10) {
            this.f16472k = z10;
        }

        public final void H(boolean z10) {
            this.f16475n = z10;
        }

        public final boolean I() {
            return this.f16475n;
        }

        @NotNull
        public final String a() {
            return this.f16465d;
        }

        @NotNull
        public final String b() {
            return this.f16466e;
        }

        @NotNull
        public final String c() {
            return this.f16469h;
        }

        @Nullable
        public final String d() {
            return this.f16478q;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Nullable
        public final CodeChallengeMethod e() {
            return this.f16479r;
        }

        @Nullable
        public final String f() {
            return this.f16477p;
        }

        @NotNull
        public final DefaultAudience g() {
            return this.f16464c;
        }

        @Nullable
        public final String h() {
            return this.f16470i;
        }

        @Nullable
        public final String j() {
            return this.f16468g;
        }

        @NotNull
        public final LoginBehavior k() {
            return this.f16462a;
        }

        @NotNull
        public final LoginTargetApp l() {
            return this.f16473l;
        }

        @Nullable
        public final String m() {
            return this.f16471j;
        }

        @NotNull
        public final String n() {
            return this.f16476o;
        }

        @NotNull
        public final Set<String> o() {
            return this.f16463b;
        }

        public final boolean p() {
            return this.f16472k;
        }

        public final boolean w() {
            for (String str : this.f16463b) {
                if (LoginManager.f16498j.e(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i10) {
            String str;
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.f16462a.name());
            dest.writeStringList(new ArrayList(this.f16463b));
            dest.writeString(this.f16464c.name());
            dest.writeString(this.f16465d);
            dest.writeString(this.f16466e);
            dest.writeByte(this.f16467f ? (byte) 1 : (byte) 0);
            dest.writeString(this.f16468g);
            dest.writeString(this.f16469h);
            dest.writeString(this.f16470i);
            dest.writeString(this.f16471j);
            dest.writeByte(this.f16472k ? (byte) 1 : (byte) 0);
            dest.writeString(this.f16473l.name());
            dest.writeByte(this.f16474m ? (byte) 1 : (byte) 0);
            dest.writeByte(this.f16475n ? (byte) 1 : (byte) 0);
            dest.writeString(this.f16476o);
            dest.writeString(this.f16477p);
            dest.writeString(this.f16478q);
            CodeChallengeMethod codeChallengeMethod = this.f16479r;
            if (codeChallengeMethod != null) {
                str = codeChallengeMethod.name();
            } else {
                str = null;
            }
            dest.writeString(str);
        }

        public final boolean x() {
            return this.f16474m;
        }

        public final boolean y() {
            if (this.f16473l == LoginTargetApp.INSTAGRAM) {
                return true;
            }
            return false;
        }

        public final boolean z() {
            return this.f16467f;
        }

        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String authType, @NotNull String applicationId, @NotNull String authId, @Nullable LoginTargetApp loginTargetApp, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable CodeChallengeMethod codeChallengeMethod) {
            Intrinsics.checkNotNullParameter(loginBehavior, "loginBehavior");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(authId, "authId");
            this.f16462a = loginBehavior;
            this.f16463b = set == null ? new HashSet<>() : set;
            this.f16464c = defaultAudience;
            this.f16469h = authType;
            this.f16465d = applicationId;
            this.f16466e = authId;
            this.f16473l = loginTargetApp == null ? LoginTargetApp.FACEBOOK : loginTargetApp;
            if (str != null && str.length() != 0) {
                this.f16476o = str;
            } else {
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
                this.f16476o = uuid;
            }
            this.f16477p = str2;
            this.f16478q = str3;
            this.f16479r = codeChallengeMethod;
        }

        private Request(Parcel parcel) {
            DefaultAudience defaultAudience;
            LoginTargetApp loginTargetApp;
            this.f16462a = LoginBehavior.valueOf(v0.k(parcel.readString(), "loginBehavior"));
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f16463b = new HashSet(arrayList);
            String readString = parcel.readString();
            if (readString != null) {
                defaultAudience = DefaultAudience.valueOf(readString);
            } else {
                defaultAudience = DefaultAudience.NONE;
            }
            this.f16464c = defaultAudience;
            this.f16465d = v0.k(parcel.readString(), "applicationId");
            this.f16466e = v0.k(parcel.readString(), "authId");
            this.f16467f = parcel.readByte() != 0;
            this.f16468g = parcel.readString();
            this.f16469h = v0.k(parcel.readString(), "authType");
            this.f16470i = parcel.readString();
            this.f16471j = parcel.readString();
            this.f16472k = parcel.readByte() != 0;
            String readString2 = parcel.readString();
            if (readString2 != null) {
                loginTargetApp = LoginTargetApp.valueOf(readString2);
            } else {
                loginTargetApp = LoginTargetApp.FACEBOOK;
            }
            this.f16473l = loginTargetApp;
            this.f16474m = parcel.readByte() != 0;
            this.f16475n = parcel.readByte() != 0;
            this.f16476o = v0.k(parcel.readString(), "nonce");
            this.f16477p = parcel.readString();
            this.f16478q = parcel.readString();
            String readString3 = parcel.readString();
            this.f16479r = readString3 != null ? CodeChallengeMethod.valueOf(readString3) : null;
        }
    }

    /* compiled from: LoginClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Result implements Parcelable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final Code f16481a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final AccessToken f16482b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final AuthenticationToken f16483c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f16484d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f16485e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final Request f16486f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public Map<String, String> f16487g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public Map<String, String> f16488h;
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        public static final b f16480i = new b(null);
        @NotNull
        public static final Parcelable.Creator<Result> CREATOR = new a();

        /* compiled from: LoginClient.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public enum Code {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            
            @NotNull
            private final String loggingValue;

            Code(String str) {
                this.loggingValue = str;
            }

            @NotNull
            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        /* compiled from: LoginClient.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a implements Parcelable.Creator<Result> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: a */
            public Result createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new Result(source, null);
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: b */
            public Result[] newArray(int i10) {
                return new Result[i10];
            }
        }

        /* compiled from: LoginClient.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ Result d(b bVar, Request request, String str, String str2, String str3, int i10, Object obj) {
                if ((i10 & 8) != 0) {
                    str3 = null;
                }
                return bVar.c(request, str, str2, str3);
            }

            @NotNull
            public final Result a(@Nullable Request request, @Nullable String str) {
                return new Result(request, Code.CANCEL, null, str, null);
            }

            @NotNull
            public final Result b(@Nullable Request request, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken) {
                return new Result(request, Code.SUCCESS, accessToken, authenticationToken, null, null);
            }

            @NotNull
            public final Result c(@Nullable Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
                ArrayList arrayList = new ArrayList();
                if (str != null) {
                    arrayList.add(str);
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                return new Result(request, Code.ERROR, null, TextUtils.join(": ", arrayList), str3);
            }

            @NotNull
            public final Result e(@Nullable Request request, @NotNull AccessToken token) {
                Intrinsics.checkNotNullParameter(token, "token");
                return new Result(request, Code.SUCCESS, token, null, null);
            }

            private b() {
            }
        }

        public /* synthetic */ Result(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i10) {
            Intrinsics.checkNotNullParameter(dest, "dest");
            dest.writeString(this.f16481a.name());
            dest.writeParcelable(this.f16482b, i10);
            dest.writeParcelable(this.f16483c, i10);
            dest.writeString(this.f16484d);
            dest.writeString(this.f16485e);
            dest.writeParcelable(this.f16486f, i10);
            u0.H0(dest, this.f16487g);
            u0.H0(dest, this.f16488h);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable String str, @Nullable String str2) {
            this(request, code, accessToken, null, str, str2);
            Intrinsics.checkNotNullParameter(code, "code");
        }

        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(code, "code");
            this.f16486f = request;
            this.f16482b = accessToken;
            this.f16483c = authenticationToken;
            this.f16484d = str;
            this.f16481a = code;
            this.f16485e = str2;
        }

        private Result(Parcel parcel) {
            String readString = parcel.readString();
            this.f16481a = Code.valueOf(readString == null ? "error" : readString);
            this.f16482b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f16483c = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.f16484d = parcel.readString();
            this.f16485e = parcel.readString();
            this.f16486f = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f16487g = u0.s0(parcel);
            this.f16488h = u0.s0(parcel);
        }
    }

    /* compiled from: LoginClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    /* compiled from: LoginClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<LoginClient> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public LoginClient createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new LoginClient(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public LoginClient[] newArray(int i10) {
            return new LoginClient[i10];
        }
    }

    /* compiled from: LoginClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("init", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "e2e.toString()");
            return jSONObject2;
        }

        public final int b() {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        }

        private c() {
        }
    }

    /* compiled from: LoginClient.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface d {
        void a(@NotNull Result result);
    }

    public LoginClient(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f16450b = -1;
        D(fragment);
    }

    private final void A(Result result) {
        d dVar = this.f16452d;
        if (dVar != null) {
            dVar.a(result);
        }
    }

    private final void a(String str, String str2, boolean z10) {
        Map<String, String> map = this.f16456h;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.f16456h == null) {
            this.f16456h = map;
        }
        if (map.containsKey(str) && z10) {
            str2 = map.get(str) + ',' + str2;
        }
        map.put(str, str2);
    }

    private final void h() {
        f(Result.b.d(Result.f16480i, this.f16455g, "Login attempt failed.", null, null, 8, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r2) == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.facebook.login.o o() {
        /*
            r3 = this;
            com.facebook.login.o r0 = r3.f16458j
            if (r0 == 0) goto L18
            java.lang.String r1 = r0.b()
            com.facebook.login.LoginClient$Request r2 = r3.f16455g
            if (r2 == 0) goto L11
            java.lang.String r2 = r2.a()
            goto L12
        L11:
            r2 = 0
        L12:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto L38
        L18:
            com.facebook.login.o r0 = new com.facebook.login.o
            androidx.fragment.app.FragmentActivity r1 = r3.j()
            if (r1 == 0) goto L21
            goto L25
        L21:
            android.content.Context r1 = com.facebook.v.l()
        L25:
            com.facebook.login.LoginClient$Request r2 = r3.f16455g
            if (r2 == 0) goto L2f
            java.lang.String r2 = r2.a()
            if (r2 != 0) goto L33
        L2f:
            java.lang.String r2 = com.facebook.v.m()
        L33:
            r0.<init>(r1, r2)
            r3.f16458j = r0
        L38:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.o():com.facebook.login.o");
    }

    private final void w(String str, Result result, Map<String, String> map) {
        x(str, result.f16481a.getLoggingValue(), result.f16484d, result.f16485e, map);
    }

    private final void x(String str, String str2, String str3, String str4, Map<String, String> map) {
        Request request = this.f16455g;
        String str5 = "fb_mobile_login_method_complete";
        if (request == null) {
            o().j("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        o o10 = o();
        String b10 = request.b();
        if (request.x()) {
            str5 = "foa_mobile_login_method_complete";
        }
        o10.c(b10, str, str2, str3, str4, map, str5);
    }

    public final boolean B(int i10, int i11, @Nullable Intent intent) {
        this.f16459k++;
        if (this.f16455g != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f14795j, false)) {
                I();
                return false;
            }
            LoginMethodHandler k10 = k();
            if (k10 != null && (!k10.o() || intent != null || this.f16459k >= this.f16460l)) {
                return k10.k(i10, i11, intent);
            }
        }
        return false;
    }

    public final void C(@Nullable a aVar) {
        this.f16453e = aVar;
    }

    public final void D(@Nullable Fragment fragment) {
        if (this.f16451c == null) {
            this.f16451c = fragment;
            return;
        }
        throw new FacebookException("Can't set fragment once it is already set.");
    }

    public final void E(@Nullable d dVar) {
        this.f16452d = dVar;
    }

    public final void G(@Nullable Request request) {
        if (!n()) {
            b(request);
        }
    }

    public final boolean H() {
        String str;
        String str2;
        LoginMethodHandler k10 = k();
        if (k10 == null) {
            return false;
        }
        if (k10.j() && !d()) {
            a("no_internet_permission", "1", false);
            return false;
        }
        Request request = this.f16455g;
        if (request == null) {
            return false;
        }
        int p10 = k10.p(request);
        this.f16459k = 0;
        if (p10 > 0) {
            o o10 = o();
            String b10 = request.b();
            String f10 = k10.f();
            if (request.x()) {
                str2 = "foa_mobile_login_method_start";
            } else {
                str2 = "fb_mobile_login_method_start";
            }
            o10.e(b10, f10, str2);
            this.f16460l = p10;
        } else {
            o o11 = o();
            String b11 = request.b();
            String f11 = k10.f();
            if (request.x()) {
                str = "foa_mobile_login_method_not_tried";
            } else {
                str = "fb_mobile_login_method_not_tried";
            }
            o11.d(b11, f11, str);
            a("not_tried", k10.f(), true);
        }
        if (p10 <= 0) {
            return false;
        }
        return true;
    }

    public final void I() {
        LoginMethodHandler k10 = k();
        if (k10 != null) {
            x(k10.f(), "skipped", null, null, k10.e());
        }
        LoginMethodHandler[] loginMethodHandlerArr = this.f16449a;
        while (loginMethodHandlerArr != null) {
            int i10 = this.f16450b;
            if (i10 >= loginMethodHandlerArr.length - 1) {
                break;
            }
            this.f16450b = i10 + 1;
            if (H()) {
                return;
            }
        }
        if (this.f16455g != null) {
            h();
        }
    }

    public final void J(@NotNull Result pendingResult) {
        Result b10;
        Intrinsics.checkNotNullParameter(pendingResult, "pendingResult");
        if (pendingResult.f16482b != null) {
            AccessToken e10 = AccessToken.f14731l.e();
            AccessToken accessToken = pendingResult.f16482b;
            if (e10 != null) {
                try {
                    if (Intrinsics.areEqual(e10.n(), accessToken.n())) {
                        b10 = Result.f16480i.b(this.f16455g, pendingResult.f16482b, pendingResult.f16483c);
                        f(b10);
                        return;
                    }
                } catch (Exception e11) {
                    f(Result.b.d(Result.f16480i, this.f16455g, "Caught exception", e11.getMessage(), null, 8, null));
                    return;
                }
            }
            b10 = Result.b.d(Result.f16480i, this.f16455g, "User logged in as different Facebook user.", null, null, 8, null);
            f(b10);
            return;
        }
        throw new FacebookException("Can't validate without a token");
    }

    public final void b(@Nullable Request request) {
        if (request == null) {
            return;
        }
        if (this.f16455g == null) {
            if (AccessToken.f14731l.g() && !d()) {
                return;
            }
            this.f16455g = request;
            this.f16449a = m(request);
            I();
            return;
        }
        throw new FacebookException("Attempted to authorize while a request is pending.");
    }

    public final void c() {
        LoginMethodHandler k10 = k();
        if (k10 != null) {
            k10.b();
        }
    }

    public final boolean d() {
        String str;
        if (this.f16454f) {
            return true;
        }
        if (e("android.permission.INTERNET") != 0) {
            FragmentActivity j10 = j();
            String str2 = null;
            if (j10 != null) {
                str = j10.getString(com.facebook.common.e.f15305c);
            } else {
                str = null;
            }
            if (j10 != null) {
                str2 = j10.getString(com.facebook.common.e.f15304b);
            }
            f(Result.b.d(Result.f16480i, this.f16455g, str, str2, null, 8, null));
            return false;
        }
        this.f16454f = true;
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int e(@NotNull String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        FragmentActivity j10 = j();
        if (j10 != null) {
            return j10.checkCallingOrSelfPermission(permission);
        }
        return -1;
    }

    public final void f(@NotNull Result outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        LoginMethodHandler k10 = k();
        if (k10 != null) {
            w(k10.f(), outcome, k10.e());
        }
        Map<String, String> map = this.f16456h;
        if (map != null) {
            outcome.f16487g = map;
        }
        Map<String, String> map2 = this.f16457i;
        if (map2 != null) {
            outcome.f16488h = map2;
        }
        this.f16449a = null;
        this.f16450b = -1;
        this.f16455g = null;
        this.f16456h = null;
        this.f16459k = 0;
        this.f16460l = 0;
        A(outcome);
    }

    public final void g(@NotNull Result outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        if (outcome.f16482b != null && AccessToken.f14731l.g()) {
            J(outcome);
        } else {
            f(outcome);
        }
    }

    @Nullable
    public final FragmentActivity j() {
        Fragment fragment = this.f16451c;
        if (fragment != null) {
            return fragment.getActivity();
        }
        return null;
    }

    @Nullable
    public final LoginMethodHandler k() {
        LoginMethodHandler[] loginMethodHandlerArr;
        int i10 = this.f16450b;
        if (i10 < 0 || (loginMethodHandlerArr = this.f16449a) == null) {
            return null;
        }
        return loginMethodHandlerArr[i10];
    }

    @Nullable
    public final Fragment l() {
        return this.f16451c;
    }

    @Nullable
    public LoginMethodHandler[] m(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        ArrayList arrayList = new ArrayList();
        LoginBehavior k10 = request.k();
        if (request.y()) {
            if (!com.facebook.v.f16906s && k10.allowsInstagramAppAuth()) {
                arrayList.add(new InstagramAppLoginMethodHandler(this));
            }
        } else {
            if (k10.allowsGetTokenAuth()) {
                arrayList.add(new GetTokenLoginMethodHandler(this));
            }
            if (!com.facebook.v.f16906s && k10.allowsKatanaAuth()) {
                arrayList.add(new KatanaProxyLoginMethodHandler(this));
            }
        }
        if (k10.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (k10.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (!request.y() && k10.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        return (LoginMethodHandler[]) arrayList.toArray(new LoginMethodHandler[0]);
    }

    public final boolean n() {
        if (this.f16455g != null && this.f16450b >= 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Request p() {
        return this.f16455g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeParcelableArray(this.f16449a, i10);
        dest.writeInt(this.f16450b);
        dest.writeParcelable(this.f16455g, i10);
        u0.H0(dest, this.f16456h);
        u0.H0(dest, this.f16457i);
    }

    public final void y() {
        a aVar = this.f16453e;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void z() {
        a aVar = this.f16453e;
        if (aVar != null) {
            aVar.b();
        }
    }

    public LoginClient(@NotNull Parcel source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16450b = -1;
        Parcelable[] readParcelableArray = source.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        readParcelableArray = readParcelableArray == null ? new Parcelable[0] : readParcelableArray;
        ArrayList arrayList = new ArrayList();
        int length = readParcelableArray.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            Parcelable parcelable = readParcelableArray[i10];
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                loginMethodHandler.n(this);
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
            i10++;
        }
        this.f16449a = (LoginMethodHandler[]) arrayList.toArray(new LoginMethodHandler[0]);
        this.f16450b = source.readInt();
        this.f16455g = (Request) source.readParcelable(Request.class.getClassLoader());
        Map<String, String> s02 = u0.s0(source);
        this.f16456h = s02 != null ? p0.A(s02) : null;
        Map<String, String> s03 = u0.s0(source);
        this.f16457i = s03 != null ? p0.A(s03) : null;
    }
}
