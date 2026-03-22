package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.q0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class VastActivity extends ComponentActivity {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f35014c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f35015d = 8;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> f35016e = kt.g.b(0, 0, null, 7, null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static WeakReference<VastActivity> f35017f = new WeakReference<>(null);
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public static com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a f35018g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public static Function2<? super Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, ? extends View> f35019h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public static Function0<Unit> f35020i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public static kotlinx.coroutines.r f35021j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public static g0 f35022k;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f35023a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final gt.g0 f35024b = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());

    /* loaded from: classes6.dex */
    public static final class a {

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2", f = "VastActivity.kt", l = {166}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0551a extends SuspendLambda implements Function2<gt.g0, rs.c<? super kotlinx.coroutines.r>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35025h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a f35026i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ f0 f35027j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> f35028k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ Context f35029l;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2$1", f = "VastActivity.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0552a extends SuspendLambda implements Function2<gt.g0, rs.c<? super kotlinx.coroutines.r>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f35030h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f35031i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> f35032j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ Context f35033k;

                /* renamed from: l  reason: collision with root package name */
                public final /* synthetic */ f0 f35034l;

                @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2$1$1", f = "VastActivity.kt", l = {173}, m = "invokeSuspend")
                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public static final class C0553a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                    /* renamed from: h  reason: collision with root package name */
                    public int f35035h;

                    /* renamed from: i  reason: collision with root package name */
                    public final /* synthetic */ Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> f35036i;

                    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2$1$1$1", f = "VastActivity.kt", l = {}, m = "invokeSuspend")
                    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a$a$a$a  reason: collision with other inner class name */
                    /* loaded from: classes6.dex */
                    public static final class C0554a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, rs.c<? super Unit>, Object> {

                        /* renamed from: h  reason: collision with root package name */
                        public int f35037h;

                        /* renamed from: i  reason: collision with root package name */
                        public /* synthetic */ Object f35038i;

                        /* renamed from: j  reason: collision with root package name */
                        public final /* synthetic */ Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> f35039j;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        public C0554a(Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1, rs.c<? super C0554a> cVar) {
                            super(2, cVar);
                            this.f35039j = function1;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                            C0554a c0554a = new C0554a(this.f35039j, cVar);
                            c0554a.f35038i = obj;
                            return c0554a;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: i */
                        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super Unit> cVar) {
                            return ((C0554a) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            kotlin.coroutines.intrinsics.a.f();
                            if (this.f35037h == 0) {
                                kotlin.f.b(obj);
                                this.f35039j.invoke((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f35038i);
                                return Unit.f60915a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }

                    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2$1$1$2", f = "VastActivity.kt", l = {}, m = "invokeSuspend")
                    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a$a$a$b */
                    /* loaded from: classes6.dex */
                    public static final class b extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, rs.c<? super Boolean>, Object> {

                        /* renamed from: h  reason: collision with root package name */
                        public int f35040h;

                        /* renamed from: i  reason: collision with root package name */
                        public /* synthetic */ Object f35041i;

                        public b(rs.c<? super b> cVar) {
                            super(2, cVar);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                            b bVar = new b(cVar);
                            bVar.f35041i = obj;
                            return bVar;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: i */
                        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super Boolean> cVar) {
                            return ((b) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            kotlin.coroutines.intrinsics.a.f();
                            if (this.f35040h == 0) {
                                kotlin.f.b(obj);
                                return kotlin.coroutines.jvm.internal.a.a(VastActivity.f35014c.g((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f35041i));
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C0553a(Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1, rs.c<? super C0553a> cVar) {
                        super(2, cVar);
                        this.f35036i = function1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: a */
                    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                        return ((C0553a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                        return new C0553a(this.f35036i, cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object f10 = kotlin.coroutines.intrinsics.a.f();
                        int i10 = this.f35035h;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                kotlin.f.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            kotlin.f.b(obj);
                            kt.b O = kotlinx.coroutines.flow.c.O(VastActivity.f35016e, new C0554a(this.f35036i, null));
                            b bVar = new b(null);
                            this.f35035h = 1;
                            if (kotlinx.coroutines.flow.c.z(O, bVar, this) == f10) {
                                return f10;
                            }
                        }
                        return Unit.f60915a;
                    }
                }

                @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$Companion$showAd$2$1$2", f = "VastActivity.kt", l = {}, m = "invokeSuspend")
                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$a$a$a$b */
                /* loaded from: classes6.dex */
                public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                    /* renamed from: h  reason: collision with root package name */
                    public int f35042h;

                    /* renamed from: i  reason: collision with root package name */
                    public final /* synthetic */ Context f35043i;

                    /* renamed from: j  reason: collision with root package name */
                    public final /* synthetic */ f0 f35044j;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public b(Context context, f0 f0Var, rs.c<? super b> cVar) {
                        super(2, cVar);
                        this.f35043i = context;
                        this.f35044j = f0Var;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: a */
                    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                        return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                        return new b(this.f35043i, this.f35044j, cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        kotlin.coroutines.intrinsics.a.f();
                        if (this.f35042h == 0) {
                            kotlin.f.b(obj);
                            Context context = this.f35043i;
                            Intent intent = new Intent(this.f35043i, VastActivity.class);
                            f0 f0Var = this.f35044j;
                            q0.j(intent, f0Var.g());
                            q0.a(intent, f0Var.c());
                            q0.e(intent, f0Var.d());
                            q0.b(intent, f0Var.e());
                            q0.i(intent, f0Var.f());
                            q0.f(intent, f0Var.b());
                            q0.c(intent, f0Var.a());
                            intent.setFlags(268435456);
                            context.startActivity(intent);
                            return Unit.f60915a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0552a(Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1, Context context, f0 f0Var, rs.c<? super C0552a> cVar) {
                    super(2, cVar);
                    this.f35032j = function1;
                    this.f35033k = context;
                    this.f35034l = f0Var;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super kotlinx.coroutines.r> cVar) {
                    return ((C0552a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    C0552a c0552a = new C0552a(this.f35032j, this.f35033k, this.f35034l, cVar);
                    c0552a.f35031i = obj;
                    return c0552a;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    kotlinx.coroutines.r d10;
                    kotlinx.coroutines.r d11;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f35030h == 0) {
                        kotlin.f.b(obj);
                        gt.g0 g0Var = (gt.g0) this.f35031i;
                        a aVar = VastActivity.f35014c;
                        d10 = gt.g.d(g0Var, null, null, new C0553a(this.f35032j, null), 3, null);
                        VastActivity.f35021j = d10;
                        d11 = gt.g.d(g0Var, null, null, new b(this.f35033k, this.f35034l, null), 3, null);
                        return d11;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0551a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar, f0 f0Var, Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1, Context context, rs.c<? super C0551a> cVar) {
                super(2, cVar);
                this.f35026i = aVar;
                this.f35027j = f0Var;
                this.f35028k = function1;
                this.f35029l = context;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super kotlinx.coroutines.r> cVar) {
                return ((C0551a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0551a(this.f35026i, this.f35027j, this.f35028k, this.f35029l, cVar);
            }

            /* JADX WARN: Type inference failed for: r3v0, types: [com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f35025h;
                try {
                    if (i10 != 0) {
                        if (i10 == 1) {
                            kotlin.f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        kotlin.f.b(obj);
                        a aVar = VastActivity.f35014c;
                        VastActivity.f35018g = this.f35026i;
                        VastActivity.f35019h = this.f35027j.h();
                        C0552a c0552a = new C0552a(this.f35028k, this.f35029l, this.f35027j, null);
                        this.f35025h = 1;
                        obj = kotlinx.coroutines.i.f(c0552a, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return (kotlinx.coroutines.r) obj;
                } finally {
                    a aVar2 = VastActivity.f35014c;
                    VastActivity h10 = aVar2.h();
                    if (h10 != null) {
                        h10.finish();
                    }
                    VastActivity.f35020i = null;
                    VastActivity.f35018g = null;
                    VastActivity.f35019h = null;
                    aVar2.b();
                }
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Object a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar, @NotNull Context context, @NotNull f0 f0Var, @NotNull Function0<Unit> function0, @NotNull g0 g0Var, @NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1, @NotNull rs.c<? super Unit> cVar) {
            VastActivity.f35022k = g0Var;
            VastActivity.f35020i = function0;
            Object g10 = gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getMain(), new C0551a(aVar, f0Var, function1, context, null), cVar);
            if (g10 == kotlin.coroutines.intrinsics.a.f()) {
                return g10;
            }
            return Unit.f60915a;
        }

        public final void b() {
            kotlinx.coroutines.r rVar = VastActivity.f35021j;
            if (rVar != null && rVar.isActive()) {
                kotlinx.coroutines.r rVar2 = VastActivity.f35021j;
                if (rVar2 != null) {
                    r.a.b(rVar2, null, 1, null);
                }
                VastActivity.f35021j = null;
            }
        }

        public final void e(VastActivity vastActivity) {
            VastActivity.f35017f = new WeakReference(vastActivity);
            if (vastActivity == null) {
                b();
            }
        }

        public final boolean g(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar) {
            if (!(bVar instanceof b.f) && !Intrinsics.areEqual(bVar, b.e.f35688a)) {
                return false;
            }
            return true;
        }

        public final VastActivity h() {
            return (VastActivity) VastActivity.f35017f.get();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity$onCreate$1", f = "VastActivity.kt", l = {97}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35045h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35046i;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(cVar);
            bVar.f35046i = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super Unit> cVar) {
            return ((b) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35045h;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f35046i;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f35046i;
                kt.d dVar = VastActivity.f35016e;
                this.f35046i = bVar2;
                this.f35045h = 1;
                if (dVar.emit(bVar2, this) == f10) {
                    return f10;
                }
                bVar = bVar2;
            }
            if (VastActivity.f35014c.g(bVar)) {
                VastActivity.this.finish();
            }
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class c implements Function2<Composer, Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f35049b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Function2<Context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, View> f35050c;

        /* JADX WARN: Multi-variable type inference failed */
        public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar, Function2<? super Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, ? extends View> function2) {
            this.f35049b = aVar;
            this.f35050c = function2;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1009520481, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity.onCreate.<anonymous> (VastActivity.kt:104)");
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.c.d(VastActivity.this, this.f35049b, this.f35050c, VastActivity.f35022k, composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.moloco.sdk.internal.android_context.b.a(getApplicationContext());
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar = f35018g;
        if (aVar == null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "VastActivity", "ad is missing", null, false, 12, null);
            finish();
            return;
        }
        Function2<? super Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, ? extends View> function2 = f35019h;
        if (function2 == null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "VastActivity", "VastRenderer is missing", null, false, 12, null);
            finish();
            return;
        }
        n0 f10 = b.h.f33655a.f();
        com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a b10 = b.k.f33671a.b();
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        boolean n10 = q0.n(intent);
        Intent intent2 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
        Boolean l10 = q0.l(intent2);
        Intent intent3 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent3, "getIntent(...)");
        int m10 = q0.m(intent3);
        Intent intent4 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent4, "getIntent(...)");
        int h10 = q0.h(intent4);
        Intent intent5 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent5, "getIntent(...)");
        int k10 = q0.k(intent5);
        Intent intent6 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent6, "getIntent(...)");
        boolean g10 = q0.g(intent6);
        Intent intent7 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent7, "getIntent(...)");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a b11 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.b(aVar, f10, this, b10, n10, l10, m10, h10, k10, g10, q0.d(intent7));
        this.f35023a = b11;
        f35014c.e(this);
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(b11.a(), new b(null)), this.f35024b);
        ComponentActivityKt.setContent$default(this, null, ComposableLambdaKt.composableLambdaInstance(-1009520481, true, new c(b11, function2)), 1, null);
        b11.d();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Function0<Unit> function0 = f35020i;
        if (function0 != null) {
            function0.invoke();
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f35023a;
        if (aVar != null) {
            aVar.destroy();
        }
        this.f35023a = null;
        kotlinx.coroutines.i.e(this.f35024b, null, 1, null);
        f35014c.e(null);
    }
}
