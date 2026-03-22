package com.startshorts.androidplayer.manager.configure;

import android.content.Context;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigureManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2", f = "AppConfigureManager.kt", l = {48, 49, 55, 56}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AppConfigureManager$init$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42187h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f42188i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f42189j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppConfigureManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1", f = "AppConfigureManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super r>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42190h;

        /* renamed from: i  reason: collision with root package name */
        private /* synthetic */ Object f42191i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Context f42192j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppConfigureManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$1", f = "AppConfigureManager.kt", l = {50}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C06191 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f42193h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ Context f42194i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06191(Context context, c<? super C06191> cVar) {
                super(2, cVar);
                this.f42194i = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new C06191(this.f42194i, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((C06191) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = a.f();
                int i10 = this.f42193h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    AdSwitchConfigure adSwitchConfigure = AdSwitchConfigure.f42267a;
                    Context context = this.f42194i;
                    this.f42193h = 1;
                    if (adSwitchConfigure.d(context, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppConfigureManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$2", f = "AppConfigureManager.kt", l = {51}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$2  reason: invalid class name */
        /* loaded from: classes6.dex */
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f42195h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ Context f42196i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(Context context, c<? super AnonymousClass2> cVar) {
                super(2, cVar);
                this.f42196i = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new AnonymousClass2(this.f42196i, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = a.f();
                int i10 = this.f42195h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
                    Context context = this.f42196i;
                    this.f42195h = 1;
                    if (adUnitIdConfigureChooser.d(context, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppConfigureManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$3", f = "AppConfigureManager.kt", l = {52}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$1$3  reason: invalid class name */
        /* loaded from: classes6.dex */
        public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f42197h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ Context f42198i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(Context context, c<? super AnonymousClass3> cVar) {
                super(2, cVar);
                this.f42198i = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new AnonymousClass3(this.f42198i, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = a.f();
                int i10 = this.f42197h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    com.startshorts.androidplayer.manager.configure.ad.a aVar = com.startshorts.androidplayer.manager.configure.ad.a.f42306a;
                    Context context = this.f42198i;
                    this.f42197h = 1;
                    if (aVar.d(context, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f42192j = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f42192j, cVar);
            anonymousClass1.f42191i = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super r> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            r d10;
            a.f();
            if (this.f42190h == 0) {
                f.b(obj);
                g0 g0Var = (g0) this.f42191i;
                g.d(g0Var, null, null, new C06191(this.f42192j, null), 3, null);
                g.d(g0Var, null, null, new AnonymousClass2(this.f42192j, null), 3, null);
                d10 = g.d(g0Var, null, null, new AnonymousClass3(this.f42192j, null), 3, null);
                return d10;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppConfigureManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2", f = "AppConfigureManager.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAppConfigureManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2\n*L\n103#1:163,2\n*E\n"})
    /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42199h;

        /* renamed from: i  reason: collision with root package name */
        private /* synthetic */ Object f42200i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppConfigureManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$1", f = "AppConfigureManager.kt", l = {58, 59, 61, 62}, m = "invokeSuspend")
        @SourceDebugExtension({"SMAP\nAppConfigureManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1\n*L\n69#1:163,2\n*E\n"})
        /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$1  reason: invalid class name */
        /* loaded from: classes6.dex */
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f42201h;

            AnonymousClass1(c<? super AnonymousClass1> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new AnonymousClass1(cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            /* JADX WARN: Removed duplicated region for block: B:22:0x0054 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:25:0x005f A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                    int r1 = r6.f42201h
                    r2 = 4
                    r3 = 3
                    r4 = 2
                    r5 = 1
                    if (r1 == 0) goto L2c
                    if (r1 == r5) goto L28
                    if (r1 == r4) goto L24
                    if (r1 == r3) goto L20
                    if (r1 != r2) goto L18
                    kotlin.f.b(r7)
                    goto L60
                L18:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r0)
                    throw r7
                L20:
                    kotlin.f.b(r7)
                    goto L55
                L24:
                    kotlin.f.b(r7)
                    goto L45
                L28:
                    kotlin.f.b(r7)
                    goto L3a
                L2c:
                    kotlin.f.b(r7)
                    se.a r7 = se.a.f66346a
                    r6.f42201h = r5
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L3a
                    return r0
                L3a:
                    qe.a r7 = qe.a.f65321a
                    r6.f42201h = r4
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L45
                    return r0
                L45:
                    com.startshorts.androidplayer.manager.crash.CrashManager r7 = com.startshorts.androidplayer.manager.crash.CrashManager.f42349a
                    r7.e()
                    qe.b r7 = qe.b.f65324a
                    r6.f42201h = r3
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L55
                    return r0
                L55:
                    re.a r7 = re.a.f65803a
                    r6.f42201h = r2
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L60
                    return r0
                L60:
                    mf.b r7 = mf.b.f62506a
                    r7.f()
                    qe.a r7 = qe.a.f65321a
                    com.startshorts.androidplayer.bean.configure.FeatureController r7 = r7.value()
                    boolean r7 = r7.getHttpDNSApiEnable()
                    if (r7 == 0) goto La9
                    java.util.ArrayList r7 = new java.util.ArrayList
                    r7.<init>()
                    com.startshorts.androidplayer.manager.api.base.p$a r0 = com.startshorts.androidplayer.manager.api.base.p.f41802a
                    java.util.List r0 = r0.a()
                    java.util.Collection r0 = (java.util.Collection) r0
                    r7.addAll(r0)
                    java.util.ArrayList r0 = new java.util.ArrayList
                    r0.<init>()
                    java.util.Iterator r7 = r7.iterator()
                L8a:
                    boolean r1 = r7.hasNext()
                    if (r1 == 0) goto La4
                    java.lang.Object r1 = r7.next()
                    java.lang.String r1 = (java.lang.String) r1
                    java.lang.String r1 = jk.v.n(r1)
                    boolean r2 = r0.contains(r1)
                    if (r2 != 0) goto L8a
                    r0.add(r1)
                    goto L8a
                La4:
                    com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools r7 = com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools.f41818a
                    r7.j(r0)
                La9:
                    ud.a r7 = ud.a.f68411a
                    boolean r7 = r7.t()
                    if (r7 == 0) goto Lb8
                    com.startshorts.androidplayer.utils.ResourceHandler r7 = com.startshorts.androidplayer.utils.ResourceHandler.f48167a
                    r0 = 0
                    r1 = 0
                    com.startshorts.androidplayer.utils.ResourceHandler.q(r7, r0, r5, r1)
                Lb8:
                    qe.a r7 = qe.a.f65321a
                    com.startshorts.androidplayer.bean.configure.FeatureController r7 = r7.value()
                    boolean r7 = r7.getFixedReportEvent()
                    if (r7 != 0) goto Lc9
                    af.g r7 = af.g.f637a
                    r7.d()
                Lc9:
                    kotlin.Unit r7 = kotlin.Unit.f60915a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AppConfigureManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$2", f = "AppConfigureManager.kt", l = {86, 87, 88, 89}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$2  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C06202 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f42202h;

            C06202(c<? super C06202> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new C06202(cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((C06202) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            /* JADX WARN: Removed duplicated region for block: B:22:0x004f A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                    int r1 = r6.f42202h
                    r2 = 4
                    r3 = 3
                    r4 = 2
                    r5 = 1
                    if (r1 == 0) goto L2c
                    if (r1 == r5) goto L28
                    if (r1 == r4) goto L24
                    if (r1 == r3) goto L20
                    if (r1 != r2) goto L18
                    kotlin.f.b(r7)
                    goto L5b
                L18:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r0)
                    throw r7
                L20:
                    kotlin.f.b(r7)
                    goto L50
                L24:
                    kotlin.f.b(r7)
                    goto L45
                L28:
                    kotlin.f.b(r7)
                    goto L3a
                L2c:
                    kotlin.f.b(r7)
                    oe.f r7 = oe.f.f63186a
                    r6.f42202h = r5
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L3a
                    return r0
                L3a:
                    com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure r7 = com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure.f42267a
                    r6.f42202h = r4
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L45
                    return r0
                L45:
                    com.startshorts.androidplayer.manager.configure.ad.a r7 = com.startshorts.androidplayer.manager.configure.ad.a.f42306a
                    r6.f42202h = r3
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L50
                    return r0
                L50:
                    com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser r7 = com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.f42279a
                    r6.f42202h = r2
                    java.lang.Object r7 = r7.b(r6)
                    if (r7 != r0) goto L5b
                    return r0
                L5b:
                    fk.a r7 = fk.a.f51702a
                    boolean r7 = r7.a()
                    if (r7 == 0) goto L6f
                    com.startshorts.androidplayer.manager.ad.AdManager r7 = com.startshorts.androidplayer.manager.ad.AdManager.f41600a
                    com.startshorts.androidplayer.bean.ad.AdScene r0 = com.startshorts.androidplayer.bean.ad.AdScene.INTERSTITIAL
                    r7.a0(r0)
                    com.startshorts.androidplayer.bean.ad.AdScene r0 = com.startshorts.androidplayer.bean.ad.AdScene.APP_OPEN
                    r7.a0(r0)
                L6f:
                    com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure r7 = com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure.f42267a
                    com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$a r7 = r7.value()
                    com.startshorts.androidplayer.bean.ad.AdScene r0 = com.startshorts.androidplayer.bean.ad.AdScene.NATIVE
                    boolean r7 = r7.b(r0)
                    if (r7 == 0) goto L9d
                    com.startshorts.androidplayer.manager.configure.ad.a r7 = com.startshorts.androidplayer.manager.configure.ad.a.f42306a
                    com.startshorts.androidplayer.manager.configure.ad.a$a r1 = r7.value()
                    java.lang.String r2 = "shorts"
                    boolean r1 = r1.p(r2)
                    if (r1 != 0) goto L98
                    com.startshorts.androidplayer.manager.configure.ad.a$a r7 = r7.value()
                    java.lang.String r1 = "horizontal_video"
                    boolean r7 = r7.p(r1)
                    if (r7 == 0) goto L9d
                L98:
                    com.startshorts.androidplayer.manager.ad.AdManager r7 = com.startshorts.androidplayer.manager.ad.AdManager.f41600a
                    r7.a0(r0)
                L9d:
                    kotlin.Unit r7 = kotlin.Unit.f60915a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2.AnonymousClass2.C06202.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        AnonymousClass2(c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(cVar);
            anonymousClass2.f42200i = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            lc.a g10;
            a.f();
            if (this.f42199h == 0) {
                f.b(obj);
                g0 g0Var = (g0) this.f42200i;
                g.d(g0Var, null, null, new AnonymousClass1(null), 3, null);
                g.d(g0Var, null, null, new C06202(null), 3, null);
                for (ABTestConfig aBTestConfig : ABTestFactory.f42224a.x0()) {
                    g.d(g0Var, null, null, new AppConfigureManager$init$2$2$3$1(aBTestConfig, null), 3, null);
                }
                ud.a aVar = ud.a.f68411a;
                if (!aVar.e()) {
                    RemoteConfigRepo.f43788a.v();
                }
                ABTestFactory aBTestFactory = ABTestFactory.f42224a;
                if (aBTestFactory.T0().isEnable().invoke().booleanValue() && !aVar.A()) {
                    Logger.f41511a.h("Feed_Check_New_Test", "v3test AppConfigureManager init resetPageNumber()");
                    ShortsRepo.f44606a.t();
                }
                if (aBTestFactory.t1().isEnable().invoke().booleanValue() && (g10 = kc.a.g()) != null) {
                    Logger.f41511a.h("AppConfigureManager", "Env.initAppLog");
                    kc.a.k(g10);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppConfigureManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$3", f = "AppConfigureManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$3  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42205h;

        AnonymousClass3(c<? super AnonymousClass3> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass3(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f42205h == 0) {
                f.b(obj);
                ABTestFactory.f42224a.I2();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigureManager$init$2(boolean z10, Context context, c<? super AppConfigureManager$init$2> cVar) {
        super(2, cVar);
        this.f42188i = z10;
        this.f42189j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppConfigureManager$init$2(this.f42188i, this.f42189j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppConfigureManager$init$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
