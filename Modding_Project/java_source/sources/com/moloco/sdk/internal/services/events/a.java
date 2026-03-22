package com.moloco.sdk.internal.services.events;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.UserIntent$UserAdInteractionExt;
import com.moloco.sdk.internal.services.a;
import com.moloco.sdk.internal.services.f;
import com.moloco.sdk.internal.services.i0;
import com.moloco.sdk.internal.services.j0;
import com.moloco.sdk.internal.services.p;
import com.moloco.sdk.internal.services.w;
import com.moloco.sdk.internal.services.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@SourceDebugExtension({"SMAP\nCustomUserEventBuilderServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomUserEventBuilderServiceImpl.kt\ncom/moloco/sdk/internal/services/events/CustomUserEventBuilderServiceImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n1557#2:226\n1628#2,3:227\n*S KotlinDebug\n*F\n+ 1 CustomUserEventBuilderServiceImpl.kt\ncom/moloco/sdk/internal/services/events/CustomUserEventBuilderServiceImpl\n*L\n168#1:226\n168#1:227,3\n*E\n"})
/* loaded from: classes6.dex */
public final class a implements com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final x f33357a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.b f33358b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final j0 f33359c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final f f33360d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.usertracker.e f33361e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final p f33362f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.proto.a f33363g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b f33364h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final String f33365i;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.events.CustomUserEventBuilderServiceImpl", f = "CustomUserEventBuilderServiceImpl.kt", l = {67}, m = "userAdInteractionExt")
    /* renamed from: com.moloco.sdk.internal.services.events.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0491a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33366h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33367i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33368j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33369k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33370l;

        /* renamed from: m  reason: collision with root package name */
        public long f33371m;

        /* renamed from: n  reason: collision with root package name */
        public /* synthetic */ Object f33372n;

        /* renamed from: p  reason: collision with root package name */
        public int f33374p;

        public C0491a(rs.c<? super C0491a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33372n = obj;
            this.f33374p |= Integer.MIN_VALUE;
            return a.this.g(0L, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.events.CustomUserEventBuilderServiceImpl", f = "CustomUserEventBuilderServiceImpl.kt", l = {52}, m = "userAdInteractionExtAsQueryParameter")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33375h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33376i;

        /* renamed from: k  reason: collision with root package name */
        public int f33378k;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33376i = obj;
            this.f33378k |= Integer.MIN_VALUE;
            return a.this.a(0L, null, null, this);
        }
    }

    public a(@NotNull x appInfoService, @NotNull com.moloco.sdk.internal.services.b networkInfoService, @NotNull j0 deviceInfoService, @NotNull f screenInfoService, @NotNull com.moloco.sdk.internal.services.usertracker.e userIdentifierService, @NotNull p adDataService, @NotNull com.moloco.sdk.internal.services.proto.a encoderService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b userEventConfigService, @NotNull String sdkVersion) {
        Intrinsics.checkNotNullParameter(appInfoService, "appInfoService");
        Intrinsics.checkNotNullParameter(networkInfoService, "networkInfoService");
        Intrinsics.checkNotNullParameter(deviceInfoService, "deviceInfoService");
        Intrinsics.checkNotNullParameter(screenInfoService, "screenInfoService");
        Intrinsics.checkNotNullParameter(userIdentifierService, "userIdentifierService");
        Intrinsics.checkNotNullParameter(adDataService, "adDataService");
        Intrinsics.checkNotNullParameter(encoderService, "encoderService");
        Intrinsics.checkNotNullParameter(userEventConfigService, "userEventConfigService");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        this.f33357a = appInfoService;
        this.f33358b = networkInfoService;
        this.f33359c = deviceInfoService;
        this.f33360d = screenInfoService;
        this.f33361e = userIdentifierService;
        this.f33362f = adDataService;
        this.f33363g = encoderService;
        this.f33364h = userEventConfigService;
        this.f33365i = sdkVersion;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(long r11, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a r13, @org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.String> r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof com.moloco.sdk.internal.services.events.a.b
            if (r0 == 0) goto L13
            r0 = r15
            com.moloco.sdk.internal.services.events.a$b r0 = (com.moloco.sdk.internal.services.events.a.b) r0
            int r1 = r0.f33378k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f33378k = r1
            goto L18
        L13:
            com.moloco.sdk.internal.services.events.a$b r0 = new com.moloco.sdk.internal.services.events.a$b
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f33376i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f33378k
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r11 = r0.f33375h
            r14 = r11
            java.lang.String r14 = (java.lang.String) r14
            kotlin.f.b(r15)
            goto L59
        L2e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L36:
            kotlin.f.b(r15)
            com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b r15 = r10.f33364h
            boolean r15 = r15.c()
            if (r15 != 0) goto L4e
            com.moloco.sdk.internal.MolocoLogger r4 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r8 = 4
            r9 = 0
            java.lang.String r5 = "CustomUserEventBuilderServiceImpl"
            java.lang.String r6 = "Event reporting config disabled, UserAdInteractionExt not reporting"
            r7 = 0
            com.moloco.sdk.internal.MolocoLogger.debug$default(r4, r5, r6, r7, r8, r9)
            return r14
        L4e:
            r0.f33375h = r14
            r0.f33378k = r3
            java.lang.Object r15 = r10.g(r11, r13, r0)
            if (r15 != r1) goto L59
            return r1
        L59:
            java.lang.String r15 = (java.lang.String) r15
            android.net.Uri r11 = android.net.Uri.parse(r14)
            android.net.Uri$Builder r11 = r11.buildUpon()
            java.lang.String r12 = "user_ad_interaction_ext"
            android.net.Uri$Builder r11 = r11.appendQueryParameter(r12, r15)
            android.net.Uri r11 = r11.build()
            java.lang.String r11 = r11.toString()
            java.lang.String r12 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.events.a.a(long, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a, java.lang.String, rs.c):java.lang.Object");
    }

    public final UserIntent$UserAdInteractionExt.a b(UserIntent$UserAdInteractionExt.a aVar) {
        UserIntent$UserAdInteractionExt.MolocoSDK.a newBuilder = UserIntent$UserAdInteractionExt.MolocoSDK.newBuilder();
        newBuilder.a(this.f33365i);
        aVar.l(newBuilder.build());
        return aVar;
    }

    public final UserIntent$UserAdInteractionExt.a c(UserIntent$UserAdInteractionExt.a aVar, com.moloco.sdk.internal.services.a aVar2) {
        UserIntent$UserAdInteractionExt.Network.a newBuilder = UserIntent$UserAdInteractionExt.Network.newBuilder();
        if (aVar2 instanceof a.C0488a) {
            newBuilder.b(UserIntent$UserAdInteractionExt.Network.ConnectionType.CELLULAR);
            newBuilder.a(((a.C0488a) aVar2).a());
        } else if (Intrinsics.areEqual(aVar2, a.b.f33095a)) {
            newBuilder.b(UserIntent$UserAdInteractionExt.Network.ConnectionType.UNKNOWN);
        } else if (Intrinsics.areEqual(aVar2, a.c.f33096a)) {
            newBuilder.b(UserIntent$UserAdInteractionExt.Network.ConnectionType.WIFI);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        aVar.k(newBuilder.build());
        return aVar;
    }

    public final UserIntent$UserAdInteractionExt.a d(UserIntent$UserAdInteractionExt.a aVar, w wVar) {
        UserIntent$UserAdInteractionExt.App.a newBuilder = UserIntent$UserAdInteractionExt.App.newBuilder();
        newBuilder.a(wVar.a());
        newBuilder.b(wVar.b());
        aVar.b(newBuilder.build());
        return aVar;
    }

    public final UserIntent$UserAdInteractionExt.a e(UserIntent$UserAdInteractionExt.a aVar, i0 i0Var) {
        UserIntent$UserAdInteractionExt.Device.a newBuilder = UserIntent$UserAdInteractionExt.Device.newBuilder();
        newBuilder.c(i0Var.j());
        newBuilder.a(i0Var.h());
        newBuilder.b(UserIntent$UserAdInteractionExt.Device.OsType.ANDROID);
        newBuilder.e(i0Var.k());
        aVar.h(newBuilder.build());
        return aVar;
    }

    public final UserIntent$UserAdInteractionExt.a f(UserIntent$UserAdInteractionExt.a aVar, a.AbstractC0597a abstractC0597a, com.moloco.sdk.internal.services.e eVar) {
        if (abstractC0597a instanceof a.AbstractC0597a.e) {
            aVar.i(UserIntent$UserAdInteractionExt.ImpressionInteraction.newBuilder().build());
        } else if (abstractC0597a instanceof a.AbstractC0597a.d) {
            UserIntent$UserAdInteractionExt.ClickInteraction.a newBuilder = UserIntent$UserAdInteractionExt.ClickInteraction.newBuilder();
            a.AbstractC0597a.d dVar = (a.AbstractC0597a.d) abstractC0597a;
            newBuilder.b(com.moloco.sdk.internal.services.events.b.b(dVar.b()));
            newBuilder.c(com.moloco.sdk.internal.services.events.b.c(eVar));
            a.AbstractC0597a.g d10 = dVar.d();
            if (d10 != null) {
                newBuilder.f(com.moloco.sdk.internal.services.events.b.d(d10));
            }
            a.AbstractC0597a.f c10 = dVar.c();
            if (c10 != null) {
                newBuilder.e(com.moloco.sdk.internal.services.events.b.b(c10));
            }
            List<a.AbstractC0597a.c> a10 = dVar.a();
            ArrayList arrayList = new ArrayList(CollectionsKt.z(a10, 10));
            for (a.AbstractC0597a.c cVar : a10) {
                UserIntent$UserAdInteractionExt.Button.a newBuilder2 = UserIntent$UserAdInteractionExt.Button.newBuilder();
                newBuilder2.c(com.moloco.sdk.internal.services.events.b.a(cVar.c()));
                newBuilder2.a(com.moloco.sdk.internal.services.events.b.b(cVar.d()));
                newBuilder2.b(com.moloco.sdk.internal.services.events.b.d(cVar.e()));
                arrayList.add(newBuilder2.build());
            }
            newBuilder.a(arrayList);
            aVar.f((UserIntent$UserAdInteractionExt.ClickInteraction) newBuilder.build());
        } else if (abstractC0597a instanceof a.AbstractC0597a.b) {
            UserIntent$UserAdInteractionExt.AppForegroundingInteraction.a newBuilder3 = UserIntent$UserAdInteractionExt.AppForegroundingInteraction.newBuilder();
            newBuilder3.a(((a.AbstractC0597a.b) abstractC0597a).a());
            aVar.e(newBuilder3.build());
        } else if (abstractC0597a instanceof a.AbstractC0597a.C0598a) {
            aVar.c(UserIntent$UserAdInteractionExt.AppBackgroundingInteraction.newBuilder().build());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(long r8, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a r10, rs.c<? super java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.events.a.g(long, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a$a, rs.c):java.lang.Object");
    }
}
