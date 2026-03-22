package ca;

import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import c.m;
import c.n;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import gt.q0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p000admanager.b.a0;
import p000admanager.b.d0;
import p000admanager.b.g0;
import p000admanager.b.h0;
import p000admanager.b.z;
@Metadata
@SourceDebugExtension({"SMAP\nGDPRManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GDPRManager.kt\ncom/hades/aar/admanager/core/GDPRManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n426#2,11:285\n426#2,11:296\n426#2,11:307\n1#3:318\n*S KotlinDebug\n*F\n+ 1 GDPRManager.kt\ncom/hades/aar/admanager/core/GDPRManager\n*L\n53#1:285,11\n173#1:296,11\n198#1:307,11\n*E\n"})
/* loaded from: classes5.dex */
public final class i {
    @NotNull

    /* renamed from: a */
    public static final i f3408a = new i();
    @NotNull

    /* renamed from: b */
    private static final kt.e<Boolean> f3409b;
    @NotNull

    /* renamed from: c */
    private static final kt.i<Boolean> f3410c;
    @NotNull

    /* renamed from: d */
    private static final kt.e<Boolean> f3411d;
    @NotNull

    /* renamed from: e */
    private static final AtomicBoolean f3412e;
    @NotNull

    /* renamed from: f */
    private static String f3413f;

    static {
        Boolean bool = Boolean.FALSE;
        kt.e<Boolean> a10 = o.a(bool);
        f3409b = a10;
        f3410c = kotlinx.coroutines.flow.c.d(a10);
        f3411d = o.a(bool);
        f3412e = new AtomicBoolean(false);
        f3413f = "";
    }

    private i() {
    }

    public final Object B(Activity activity, rs.c<? super Boolean> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        UserMessagingPlatform.showPrivacyOptionsForm(activity, new c.f(activity, eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public final void C(ConsentInformation consentInformation) {
        if (consentInformation.canRequestAds()) {
            kt.e<Boolean> eVar = f3409b;
            if (!eVar.getValue().booleanValue()) {
                eVar.setValue(Boolean.TRUE);
            }
        }
    }

    public final ConsentRequestParameters l(Activity activity) {
        ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
        if (!StringsKt.t0(f3413f)) {
            m("Debug Mode Enabled -> testDeviceID=" + f3413f);
            builder.setConsentDebugSettings(new ConsentDebugSettings.Builder(activity).setDebugGeography(1).addTestDeviceHashedId(f3413f).build());
        }
        ConsentRequestParameters build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }

    public final void m(String str) {
        ga.a.f52235a.c("AdManagerGDPRManager", str);
    }

    public final void o(String str) {
        ga.a.f52235a.d("AdManagerGDPRManager", str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r4 == null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String t(com.google.android.ump.ConsentInformation r3, com.google.android.ump.FormError r4) {
        /*
            r2 = this;
            if (r4 == 0) goto L27
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Error(code="
            r0.<init>(r1)
            int r1 = r4.getErrorCode()
            r0.append(r1)
            java.lang.String r1 = ", msg="
            r0.append(r1)
            java.lang.String r4 = r4.getMessage()
            r0.append(r4)
            r4 = 41
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            if (r4 != 0) goto L29
        L27:
            java.lang.String r4 = "Success"
        L29:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "["
            r0.<init>(r1)
            r0.append(r4)
            java.lang.String r4 = "] canRequestAds="
            r0.append(r4)
            boolean r4 = r3.canRequestAds()
            r0.append(r4)
            java.lang.String r4 = ", status="
            r0.append(r4)
            int r3 = r3.getConsentStatus()
            r0.append(r3)
            java.lang.String r3 = ", managerState="
            r0.append(r3)
            kt.e<java.lang.Boolean> r3 = ca.i.f3409b
            java.lang.Object r3 = r3.getValue()
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.i.t(com.google.android.ump.ConsentInformation, com.google.android.ump.FormError):java.lang.String");
    }

    public static /* synthetic */ String u(i iVar, ConsentInformation consentInformation, FormError formError, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            formError = null;
        }
        return iVar.t(consentInformation, formError);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void w(i iVar, Activity activity, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = z.f424d;
        }
        iVar.v(activity, function1);
    }

    public final Object y(Activity activity, rs.c<? super Boolean> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        if (!((Boolean) f3411d.getValue()).booleanValue()) {
            f3408a.o("showConsentForm ignore -> isUpdateSuccess=false (Call requestConsentInfoUpdate first)");
            if (eVar.isActive()) {
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(kotlin.coroutines.jvm.internal.a.a(false)));
            }
        } else {
            f3408a.o("showConsentForm start");
            UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity, new c.d(activity, eVar));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public final void A(@NotNull Activity activity, @NotNull Function1<? super Boolean, Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        gt.g.d(kotlinx.coroutines.i.a(q0.c()), null, null, new g0(activity, onDismiss, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof p000admanager.b.t
            if (r0 == 0) goto L13
            r0 = r9
            ad-manager.b.t r0 = (p000admanager.b.t) r0
            int r1 = r0.f415m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f415m = r1
            goto L18
        L13:
            ad-manager.b.t r0 = new ad-manager.b.t
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f413k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f415m
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            long r1 = r0.f412j
            java.lang.String r8 = r0.f411i
            ca.i r0 = r0.f410h
            kotlin.f.b(r9)
            goto L79
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            kotlin.f.b(r9)
            kt.e<java.lang.Boolean> r9 = ca.i.f3409b
            java.lang.Object r9 = r9.getValue()
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L4b
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L4b:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r2 = "awaitCanRequestAd start -> taskName="
            r9.<init>(r2)
            r9.append(r8)
            java.lang.String r9 = r9.toString()
            r7.o(r9)
            long r4 = java.lang.System.currentTimeMillis()
            kt.i<java.lang.Boolean> r9 = ca.i.f3410c
            ad-manager.b.u r2 = new ad-manager.b.u
            r6 = 0
            r2.<init>(r6)
            r0.f410h = r7
            r0.f411i = r8
            r0.f412j = r4
            r0.f415m = r3
            java.lang.Object r9 = kotlinx.coroutines.flow.c.x(r9, r2, r0)
            if (r9 != r1) goto L77
            return r1
        L77:
            r0 = r7
            r1 = r4
        L79:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r3 = "awaitCanRequestAd end -> taskName="
            r9.<init>(r3)
            r9.append(r8)
            java.lang.String r8 = ", cost="
            r9.append(r8)
            long r3 = java.lang.System.currentTimeMillis()
            long r3 = r3 - r1
            r9.append(r3)
            java.lang.String r8 = "ms"
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            r0.o(r8)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.i.j(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof p000admanager.b.v
            if (r0 == 0) goto L13
            r0 = r9
            ad-manager.b.v r0 = (p000admanager.b.v) r0
            int r1 = r0.f422m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f422m = r1
            goto L18
        L13:
            ad-manager.b.v r0 = new ad-manager.b.v
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f420k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f422m
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            long r1 = r0.f419j
            java.lang.String r8 = r0.f418i
            ca.i r0 = r0.f417h
            kotlin.f.b(r9)
            goto L77
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            kotlin.f.b(r9)
            kt.e<java.lang.Boolean> r9 = ca.i.f3411d
            java.lang.Object r2 = r9.getValue()
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L4b
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        L4b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r4 = "awaitUpdateSucceedDeferred start -> taskName="
            r2.<init>(r4)
            r2.append(r8)
            java.lang.String r2 = r2.toString()
            r7.o(r2)
            long r4 = java.lang.System.currentTimeMillis()
            ad-manager.b.w r2 = new ad-manager.b.w
            r6 = 0
            r2.<init>(r6)
            r0.f417h = r7
            r0.f418i = r8
            r0.f419j = r4
            r0.f422m = r3
            java.lang.Object r9 = kotlinx.coroutines.flow.c.x(r9, r2, r0)
            if (r9 != r1) goto L75
            return r1
        L75:
            r0 = r7
            r1 = r4
        L77:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r3 = "awaitUpdateSucceedDeferred end -> taskName="
            r9.<init>(r3)
            r9.append(r8)
            java.lang.String r8 = ",cost="
            r9.append(r8)
            long r3 = java.lang.System.currentTimeMillis()
            long r3 = r3 - r1
            r9.append(r3)
            java.lang.String r8 = "ms"
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            r0.o(r8)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ca.i.k(java.lang.String, rs.c):java.lang.Object");
    }

    public final void n() {
        o("forceSetAdRequestAble invoked");
        f3409b.setValue(Boolean.TRUE);
    }

    public final boolean p() {
        return f3409b.getValue().booleanValue();
    }

    public final boolean q(@NotNull Context context) {
        String str = "";
        Intrinsics.checkNotNullParameter(context, "context");
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(context);
        if (consentInformation.getConsentStatus() == 1) {
            return true;
        }
        if (!consentInformation.canRequestAds()) {
            return false;
        }
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("IABTCF_PurposeConsents", "");
            if (string != null) {
                str = string;
            }
            Character D1 = StringsKt.D1(str);
            o("IAB Check -> IABTCF_PurposeConsents=[" + str + "], Purpose1=" + D1);
            if (D1 != null) {
                if (D1.charValue() == '1') {
                    return true;
                }
            }
        } catch (Exception e10) {
            m("IAB Check exception -> " + e10.getMessage());
        }
        return false;
    }

    public final boolean r() {
        return f3411d.getValue().booleanValue();
    }

    @Nullable
    public final Object s(@NotNull Activity activity, @NotNull rs.c<? super Boolean> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        UserMessagingPlatform.loadConsentForm(activity, new m(eVar), new n(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public final void v(@NotNull Activity activity, @NotNull Function1<? super Boolean, Unit> onUpdate) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onUpdate, "onUpdate");
        gt.g.d(kotlinx.coroutines.i.a(q0.c()), null, null, new a0(activity, onUpdate, null), 3, null);
    }

    @Nullable
    public final Object x(@NotNull Activity activity, @NotNull rs.c<? super Boolean> cVar) {
        return gt.e.g(q0.c(), new d0(activity, null), cVar);
    }

    @Nullable
    public final Object z(@NotNull Activity activity, @NotNull rs.c<? super Boolean> cVar) {
        return gt.e.g(q0.c(), new h0(activity, null), cVar);
    }
}
