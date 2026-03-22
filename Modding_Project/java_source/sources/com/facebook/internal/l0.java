package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginTargetApp;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeProtocol.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNativeProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeProtocol.kt\ncom/facebook/internal/NativeProtocol\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,908:1\n1603#2,9:909\n1855#2:918\n1856#2:920\n1612#2:921\n1#3:919\n*S KotlinDebug\n*F\n+ 1 NativeProtocol.kt\ncom/facebook/internal/NativeProtocol\n*L\n396#1:909,9\n396#1:918\n396#1:920\n396#1:921\n396#1:919\n*E\n"})
/* loaded from: classes3.dex */
public final class l0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l0 f16235a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f16236b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<e> f16237c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final List<e> f16238d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, List<e>> f16239e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f16240f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final Integer[] f16241g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a extends e {
        @Override // com.facebook.internal.l0.e
        public /* bridge */ /* synthetic */ String c() {
            return (String) g();
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String d() {
            return "com.facebook.arstudio.player";
        }

        @Nullable
        public Void g() {
            return null;
        }
    }

    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private static final class b extends e {
        @Override // com.facebook.internal.l0.e
        @NotNull
        public String c() {
            return "com.instagram.platform.AppAuthorizeActivity";
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String d() {
            return "com.instagram.android";
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String e() {
            return "token,signed_request,graph_domain,granted_scopes";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends e {
        private final boolean g() {
            if (com.facebook.v.l().getApplicationInfo().targetSdkVersion >= 30) {
                return true;
            }
            return false;
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String c() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String d() {
            return FbValidationUtils.FB_PACKAGE;
        }

        @Override // com.facebook.internal.l0.e
        public void f() {
            if (g()) {
                Log.w(l0.c(), "Apps that target Android API 30+ (Android 11+) cannot call Facebook native apps unless the package visibility needs are declared. Please follow https://developers.facebook.com/docs/android/troubleshooting/#faq_267321845055988 to make the declaration.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class d extends e {
        @Override // com.facebook.internal.l0.e
        public /* bridge */ /* synthetic */ String c() {
            return (String) g();
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String d() {
            return "com.facebook.orca";
        }

        @Nullable
        public Void g() {
            return null;
        }
    }

    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f16243c = new a(null);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private e f16244a;

        /* renamed from: b  reason: collision with root package name */
        private int f16245b;

        /* compiled from: NativeProtocol.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final f a(@Nullable e eVar, int i10) {
                f fVar = new f(null);
                fVar.f16244a = eVar;
                fVar.f16245b = i10;
                return fVar;
            }

            @NotNull
            public final f b() {
                f fVar = new f(null);
                fVar.f16245b = -1;
                return fVar;
            }

            private a() {
            }
        }

        public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int c() {
            return this.f16245b;
        }

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class g extends e {
        @Override // com.facebook.internal.l0.e
        @NotNull
        public String c() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.l0.e
        @NotNull
        public String d() {
            return FbValidationUtils.DEBUG_FB_PACKAGE;
        }
    }

    static {
        l0 l0Var = new l0();
        f16235a = l0Var;
        f16236b = l0.class.getName();
        f16237c = l0Var.f();
        f16238d = l0Var.e();
        f16239e = l0Var.d();
        f16240f = new AtomicBoolean(false);
        f16241g = new Integer[]{20210906, 20171115, 20170417, 20170411, 20170213, 20161017, 20160327, 20150702, 20150401, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140313, 20140204, 20131107, 20131024, 20130618, 20130502, 20121101};
    }

    private l0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A() {
        if (o4.a.d(l0.class)) {
            return;
        }
        try {
            for (e eVar : f16237c) {
                eVar.a(true);
            }
            f16240f.set(false);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
        }
    }

    @Nullable
    public static final Intent B(@NotNull Context context, @Nullable Intent intent, @Nullable e eVar) {
        ResolveInfo resolveActivity;
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null) {
                return null;
            }
            String str = resolveActivity.activityInfo.packageName;
            Intrinsics.checkNotNullExpressionValue(str, "resolveInfo.activityInfo.packageName");
            if (!j.a(context, str)) {
                return null;
            }
            return intent;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @Nullable
    public static final Intent C(@NotNull Context context, @Nullable Intent intent, @Nullable e eVar) {
        ResolveInfo resolveService;
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null) {
                return null;
            }
            String str = resolveService.serviceInfo.packageName;
            Intrinsics.checkNotNullExpressionValue(str, "resolveInfo.serviceInfo.packageName");
            if (!j.a(context, str)) {
                return null;
            }
            return intent;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    public static final /* synthetic */ TreeSet b(l0 l0Var, e eVar) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            return l0Var.o(eVar);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    public static final /* synthetic */ String c() {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            return f16236b;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    private final Map<String, List<e>> d() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new d());
            List<e> list = f16237c;
            hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f16238d);
            hashMap.put("com.facebook.platform.action.request.SHARE_STORY", list);
            return hashMap;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final List<e> e() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            ArrayList h10 = CollectionsKt.h(new a());
            h10.addAll(f());
            return h10;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final List<e> f() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return CollectionsKt.h(new c(), new g());
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final Uri g(e eVar) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Uri parse = Uri.parse("content://" + eVar.d() + ".provider.PlatformProvider/versions");
            Intrinsics.checkNotNullExpressionValue(parse, "parse(CONTENT_SCHEME + a…ATFORM_PROVIDER_VERSIONS)");
            return parse;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final int h(@Nullable TreeSet<Integer> treeSet, int i10, @NotNull int[] versionSpec) {
        if (o4.a.d(l0.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(versionSpec, "versionSpec");
            if (treeSet == null) {
                return -1;
            }
            int length = versionSpec.length - 1;
            Iterator<Integer> descendingIterator = treeSet.descendingIterator();
            int i11 = -1;
            while (descendingIterator.hasNext()) {
                Integer fbAppVersion = descendingIterator.next();
                Intrinsics.checkNotNullExpressionValue(fbAppVersion, "fbAppVersion");
                i11 = Math.max(i11, fbAppVersion.intValue());
                while (length >= 0 && versionSpec[length] > fbAppVersion.intValue()) {
                    length--;
                }
                if (length < 0) {
                    return -1;
                }
                if (versionSpec[length] == fbAppVersion.intValue()) {
                    if (length % 2 != 0) {
                        return -1;
                    }
                    return Math.min(i11, i10);
                }
            }
            return -1;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return 0;
        }
    }

    @Nullable
    public static final Bundle i(@Nullable FacebookException facebookException) {
        if (o4.a.d(l0.class) || facebookException == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("error_description", facebookException.toString());
            if (facebookException instanceof FacebookOperationCanceledException) {
                bundle.putString("error_type", "UserCanceled");
            }
            return bundle;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @Nullable
    public static final Intent j(@NotNull Context context, @NotNull String applicationId, @NotNull Collection<String> permissions, @NotNull String e2e, boolean z10, boolean z11, @NotNull DefaultAudience defaultAudience, @NotNull String clientState, @NotNull String authType, @Nullable String str, boolean z12, boolean z13, boolean z14) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            Intrinsics.checkNotNullParameter(e2e, "e2e");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(clientState, "clientState");
            Intrinsics.checkNotNullParameter(authType, "authType");
            b bVar = new b();
            return B(context, f16235a.k(bVar, applicationId, permissions, e2e, z11, defaultAudience, clientState, authType, false, str, z12, LoginTargetApp.INSTAGRAM, z13, z14, "", null, null), bVar);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    private final Intent k(e eVar, String str, Collection<String> collection, String str2, boolean z10, DefaultAudience defaultAudience, String str3, String str4, boolean z11, String str5, boolean z12, LoginTargetApp loginTargetApp, boolean z13, boolean z14, String str6, String str7, String str8) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            String c10 = eVar.c();
            if (c10 == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(eVar.d(), c10).putExtra(CommonConstant.ReqAccessTokenParam.CLIENT_ID, str);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent()\n            .se…PP_ID_KEY, applicationId)");
            putExtra.putExtra("facebook_sdk_version", com.facebook.v.C());
            if (!u0.e0(collection)) {
                putExtra.putExtra(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, TextUtils.join(",", collection));
            }
            if (!u0.d0(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra("state", str3);
            putExtra.putExtra(CommonConstant.ReqAccessTokenParam.RESPONSE_TYPE, eVar.e());
            putExtra.putExtra("nonce", str6);
            putExtra.putExtra("return_scopes", "true");
            if (z10) {
                putExtra.putExtra("default_audience", defaultAudience.getNativeProtocolAudience());
            }
            putExtra.putExtra("legacy_override", com.facebook.v.x());
            putExtra.putExtra("auth_type", str4);
            if (z11) {
                putExtra.putExtra("fail_on_logged_out", true);
            }
            putExtra.putExtra("messenger_page_id", str5);
            putExtra.putExtra("reset_messenger_state", z12);
            if (z13) {
                putExtra.putExtra("fx_app", loginTargetApp.toString());
            }
            if (z14) {
                putExtra.putExtra("skip_dedupe", true);
            }
            return putExtra;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public static final Intent l(@NotNull Context context) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            for (e eVar : f16237c) {
                Intent C = C(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(eVar.d()).addCategory("android.intent.category.DEFAULT"), eVar);
                if (C != null) {
                    return C;
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @Nullable
    public static final Intent m(@NotNull Intent requestIntent, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(requestIntent, "requestIntent");
            UUID q10 = q(requestIntent);
            if (q10 == null) {
                return null;
            }
            Intent intent = new Intent();
            intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", w(requestIntent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", q10.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", i(facebookException));
            }
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle != null) {
                intent.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            }
            return intent;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @NotNull
    public static final List<Intent> n(@Nullable Context context, @NotNull String applicationId, @NotNull Collection<String> permissions, @NotNull String e2e, boolean z10, boolean z11, @NotNull DefaultAudience defaultAudience, @NotNull String clientState, @NotNull String authType, boolean z12, @Nullable String str, boolean z13, boolean z14, boolean z15, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            Intrinsics.checkNotNullParameter(e2e, "e2e");
            Intrinsics.checkNotNullParameter(defaultAudience, "defaultAudience");
            Intrinsics.checkNotNullParameter(clientState, "clientState");
            Intrinsics.checkNotNullParameter(authType, "authType");
            ArrayList arrayList = new ArrayList();
            for (e eVar : f16237c) {
                ArrayList arrayList2 = arrayList;
                Intent k10 = f16235a.k(eVar, applicationId, permissions, e2e, z11, defaultAudience, clientState, authType, z12, str, z13, LoginTargetApp.FACEBOOK, z14, z15, str2, str3, str4);
                if (k10 != null) {
                    arrayList2.add(k10);
                }
                arrayList = arrayList2;
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008b A[Catch: all -> 0x008f, TRY_ENTER, TryCatch #6 {all -> 0x008f, blocks: (B:5:0x000c, B:38:0x0094, B:39:0x0097, B:33:0x008b), top: B:49:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0094 A[Catch: all -> 0x008f, TryCatch #6 {all -> 0x008f, blocks: (B:5:0x000c, B:38:0x0094, B:39:0x0097, B:33:0x008b), top: B:49:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006d A[EXC_TOP_SPLITTER, LOOP:0: B:42:0x006d->B:27:0x0073, LOOP_START, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.TreeSet<java.lang.Integer> o(com.facebook.internal.l0.e r13) {
        /*
            r12 = this;
            java.lang.String r0 = "version"
            java.lang.String r1 = "Failed to query content resolver."
            boolean r2 = o4.a.d(r12)
            r3 = 0
            if (r2 == 0) goto Lc
            return r3
        Lc:
            java.util.TreeSet r2 = new java.util.TreeSet     // Catch: java.lang.Throwable -> L8f
            r2.<init>()     // Catch: java.lang.Throwable -> L8f
            android.content.Context r4 = com.facebook.v.l()     // Catch: java.lang.Throwable -> L8f
            android.content.ContentResolver r5 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L8f
            java.lang.String[] r7 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L8f
            android.net.Uri r6 = r12.g(r13)     // Catch: java.lang.Throwable -> L8f
            android.content.Context r4 = com.facebook.v.l()     // Catch: java.lang.Throwable -> L44
            android.content.pm.PackageManager r4 = r4.getPackageManager()     // Catch: java.lang.Throwable -> L44
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
            r8.<init>()     // Catch: java.lang.Throwable -> L44
            java.lang.String r13 = r13.d()     // Catch: java.lang.Throwable -> L44
            r8.append(r13)     // Catch: java.lang.Throwable -> L44
            java.lang.String r13 = ".provider.PlatformProvider"
            r8.append(r13)     // Catch: java.lang.Throwable -> L44
            java.lang.String r13 = r8.toString()     // Catch: java.lang.Throwable -> L44
            r8 = 0
            android.content.pm.ProviderInfo r13 = r4.resolveContentProvider(r13, r8)     // Catch: java.lang.Throwable -> L44 java.lang.RuntimeException -> L47
            goto L4e
        L44:
            r13 = move-exception
            r0 = r3
            goto L92
        L47:
            r13 = move-exception
            java.lang.String r4 = com.facebook.internal.l0.f16236b     // Catch: java.lang.Throwable -> L44
            android.util.Log.e(r4, r1, r13)     // Catch: java.lang.Throwable -> L44
            r13 = r3
        L4e:
            if (r13 == 0) goto L88
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r13 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L44 java.lang.IllegalArgumentException -> L58 java.lang.SecurityException -> L5f java.lang.NullPointerException -> L65
            goto L6b
        L58:
            java.lang.String r13 = com.facebook.internal.l0.f16236b     // Catch: java.lang.Throwable -> L44
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L44
        L5d:
            r13 = r3
            goto L6b
        L5f:
            java.lang.String r13 = com.facebook.internal.l0.f16236b     // Catch: java.lang.Throwable -> L44
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L44
            goto L5d
        L65:
            java.lang.String r13 = com.facebook.internal.l0.f16236b     // Catch: java.lang.Throwable -> L44
            android.util.Log.e(r13, r1)     // Catch: java.lang.Throwable -> L44
            goto L5d
        L6b:
            if (r13 == 0) goto L89
        L6d:
            boolean r1 = r13.moveToNext()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L89
            int r1 = r13.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L83
            int r1 = r13.getInt(r1)     // Catch: java.lang.Throwable -> L83
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L83
            r2.add(r1)     // Catch: java.lang.Throwable -> L83
            goto L6d
        L83:
            r0 = move-exception
            r11 = r0
            r0 = r13
            r13 = r11
            goto L92
        L88:
            r13 = r3
        L89:
            if (r13 == 0) goto L91
            r13.close()     // Catch: java.lang.Throwable -> L8f
            goto L91
        L8f:
            r13 = move-exception
            goto L98
        L91:
            return r2
        L92:
            if (r0 == 0) goto L97
            r0.close()     // Catch: java.lang.Throwable -> L8f
        L97:
            throw r13     // Catch: java.lang.Throwable -> L8f
        L98:
            o4.a.b(r13, r12)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.l0.o(com.facebook.internal.l0$e):java.util.TreeSet");
    }

    @Nullable
    public static final Bundle p(@NotNull Intent intent) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (!y(w(intent))) {
                return null;
            }
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @Nullable
    public static final UUID q(@Nullable Intent intent) {
        String stringExtra;
        if (o4.a.d(l0.class) || intent == null) {
            return null;
        }
        try {
            if (y(w(intent))) {
                Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
                if (bundleExtra != null) {
                    stringExtra = bundleExtra.getString("action_id");
                } else {
                    stringExtra = null;
                }
            } else {
                stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
            }
            if (stringExtra == null) {
                return null;
            }
            try {
                return UUID.fromString(stringExtra);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    @Nullable
    public static final FacebookException r(@Nullable Bundle bundle) {
        if (o4.a.d(l0.class) || bundle == null) {
            return null;
        }
        try {
            String string = bundle.getString("error_type");
            if (string == null) {
                string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
            }
            String string2 = bundle.getString("error_description");
            if (string2 == null) {
                string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
            }
            if (string != null && StringsKt.G(string, "UserCanceled", true)) {
                return new FacebookOperationCanceledException(string2);
            }
            return new FacebookException(string2);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    private final f s(List<? extends e> list, int[] iArr) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            z();
            if (list == null) {
                return f.f16243c.b();
            }
            for (e eVar : list) {
                int h10 = h(eVar.b(), u(), iArr);
                if (h10 != -1) {
                    return f.f16243c.a(eVar, h10);
                }
            }
            return f.f16243c.b();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final int t(int i10) {
        if (o4.a.d(l0.class)) {
            return 0;
        }
        try {
            return f16235a.s(f16237c, new int[]{i10}).c();
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return 0;
        }
    }

    public static final int u() {
        if (o4.a.d(l0.class)) {
            return 0;
        }
        try {
            return f16241g[0].intValue();
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return 0;
        }
    }

    @Nullable
    public static final Bundle v(@NotNull Intent intent) {
        if (o4.a.d(l0.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (!y(w(intent))) {
                return intent.getExtras();
            }
            return intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return null;
        }
    }

    public static final int w(@NotNull Intent intent) {
        if (o4.a.d(l0.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return 0;
        }
    }

    public static final boolean x(@NotNull Intent resultIntent) {
        if (o4.a.d(l0.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(resultIntent, "resultIntent");
            Bundle p10 = p(resultIntent);
            if (p10 != null) {
                return p10.containsKey("error");
            }
            return resultIntent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return false;
        }
    }

    public static final boolean y(int i10) {
        if (o4.a.d(l0.class)) {
            return false;
        }
        try {
            if (!kotlin.collections.n.f0(f16241g, Integer.valueOf(i10)) || i10 < 20140701) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
            return false;
        }
    }

    public static final void z() {
        if (o4.a.d(l0.class)) {
            return;
        }
        try {
            if (!f16240f.compareAndSet(false, true)) {
                return;
            }
            com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.internal.k0
                @Override // java.lang.Runnable
                public final void run() {
                    l0.A();
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, l0.class);
        }
    }

    /* compiled from: NativeProtocol.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static abstract class e {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private TreeSet<Integer> f16242a;

        public final synchronized void a(boolean z10) {
            TreeSet<Integer> treeSet;
            if (!z10) {
                try {
                    TreeSet<Integer> treeSet2 = this.f16242a;
                    if (treeSet2 != null && treeSet2 != null && !treeSet2.isEmpty()) {
                        treeSet = this.f16242a;
                        if (treeSet != null || treeSet.isEmpty()) {
                            f();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f16242a = l0.b(l0.f16235a, this);
            treeSet = this.f16242a;
            if (treeSet != null) {
            }
            f();
        }

        @Nullable
        public final TreeSet<Integer> b() {
            TreeSet<Integer> treeSet = this.f16242a;
            if (treeSet == null || treeSet == null || treeSet.isEmpty()) {
                a(false);
            }
            return this.f16242a;
        }

        @Nullable
        public abstract String c();

        @NotNull
        public abstract String d();

        @NotNull
        public String e() {
            return "id_token,token,signed_request,graph_domain";
        }

        public void f() {
        }
    }
}
