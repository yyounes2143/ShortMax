package com.moloco.sdk.internal.publisher.nativead.parser;

import android.content.Context;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.publisher.nativead.model.a;
import com.moloco.sdk.internal.publisher.nativead.model.b;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.n;
import gt.g0;
import gt.k0;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AwaitKt;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nPrepareNativeAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,180:1\n1485#2:181\n1510#2,3:182\n1513#2,3:192\n381#3,7:185\n29#4:195\n*S KotlinDebug\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt\n*L\n31#1:181\n31#1:182,3\n31#1:192,3\n31#1:185,7\n119#1:195\n*E\n"})
/* loaded from: classes6.dex */
public final class c {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt", f = "PrepareNativeAssets.kt", l = {113}, m = "prepareImageAsset")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32870h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32871i;

        /* renamed from: j  reason: collision with root package name */
        public int f32872j;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32871i = obj;
            this.f32872j |= Integer.MIN_VALUE;
            return c.g(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt", f = "PrepareNativeAssets.kt", l = {37, 58}, m = "prepareNativeAssets-exY8QGI")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public long f32873h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32874i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32875j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32876k;

        /* renamed from: l  reason: collision with root package name */
        public int f32877l;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32876k = obj;
            this.f32877l |= Integer.MIN_VALUE;
            return c.b(null, null, 0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedOptionalAssets$1", f = "PrepareNativeAssets.kt", l = {61}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nPrepareNativeAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedOptionalAssets$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1557#2:181\n1628#2,3:182\n*S KotlinDebug\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedOptionalAssets$1\n*L\n59#1:181\n59#1:182,3\n*E\n"})
    /* renamed from: com.moloco.sdk.internal.publisher.nativead.parser.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0485c extends SuspendLambda implements Function2<g0, rs.c<? super List<? extends Pair<? extends a.AbstractC0482a, ? extends com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32878h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32879i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ List<a.AbstractC0482a> f32880j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ i<g> f32881k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f32882l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedOptionalAssets$1$1$1", f = "PrepareNativeAssets.kt", l = {60}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.internal.publisher.nativead.parser.c$c$a */
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Pair<? extends a.AbstractC0482a, ? extends com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public Object f32883h;

            /* renamed from: i  reason: collision with root package name */
            public int f32884i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ a.AbstractC0482a f32885j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ i<g> f32886k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ long f32887l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(a.AbstractC0482a abstractC0482a, i<? extends g> iVar, long j10, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f32885j = abstractC0482a;
                this.f32886k = iVar;
                this.f32887l = j10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Pair<? extends a.AbstractC0482a, ? extends com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f32885j, this.f32886k, this.f32887l, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                a.AbstractC0482a abstractC0482a;
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f32884i;
                if (i10 != 0) {
                    if (i10 == 1) {
                        abstractC0482a = (a.AbstractC0482a) this.f32883h;
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    a.AbstractC0482a abstractC0482a2 = this.f32885j;
                    i<g> iVar = this.f32886k;
                    long j10 = this.f32887l;
                    this.f32883h = abstractC0482a2;
                    this.f32884i = 1;
                    Object i11 = c.i(abstractC0482a2, iVar, j10, this);
                    if (i11 == f10) {
                        return f10;
                    }
                    abstractC0482a = abstractC0482a2;
                    obj = i11;
                }
                return k.a(abstractC0482a, obj);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0485c(List<? extends a.AbstractC0482a> list, i<? extends g> iVar, long j10, rs.c<? super C0485c> cVar) {
            super(2, cVar);
            this.f32880j = list;
            this.f32881k = iVar;
            this.f32882l = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super List<? extends Pair<? extends a.AbstractC0482a, ? extends com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>> cVar) {
            return ((C0485c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C0485c c0485c = new C0485c(this.f32880j, this.f32881k, this.f32882l, cVar);
            c0485c.f32879i = obj;
            return c0485c;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            k0 b10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32878h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.f32879i;
                List<a.AbstractC0482a> list = this.f32880j;
                i<g> iVar = this.f32881k;
                long j10 = this.f32882l;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (a.AbstractC0482a abstractC0482a : list) {
                    b10 = gt.g.b(g0Var, null, null, new a(abstractC0482a, iVar, j10, null), 3, null);
                    arrayList.add(b10);
                }
                this.f32878h = 1;
                obj = AwaitKt.a(arrayList, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1", f = "PrepareNativeAssets.kt", l = {51}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nPrepareNativeAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1557#2:181\n1628#2,3:182\n*S KotlinDebug\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1\n*L\n38#1:181\n38#1:182,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super List<? extends Pair<? extends a.AbstractC0482a, ? extends g0.b<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32888h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32889i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ List<a.AbstractC0482a> f32890j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ i<g> f32891k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f32892l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt$prepareNativeAssets$preparedRequiredAssets$1$1$1", f = "PrepareNativeAssets.kt", l = {40}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Pair<? extends a.AbstractC0482a, ? extends g0.b<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32893h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ a.AbstractC0482a f32894i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ i<g> f32895j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ long f32896k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(a.AbstractC0482a abstractC0482a, i<? extends g> iVar, long j10, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f32894i = abstractC0482a;
                this.f32895j = iVar;
                this.f32896k = j10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Pair<? extends a.AbstractC0482a, g0.b<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f32894i, this.f32895j, this.f32896k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f32893h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    a.AbstractC0482a abstractC0482a = this.f32894i;
                    i<g> iVar = this.f32895j;
                    long j10 = this.f32896k;
                    this.f32893h = 1;
                    obj = c.i(abstractC0482a, iVar, j10, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) obj;
                if (g0Var instanceof g0.b) {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger, "PrepareNativeAssets", "Successfully prepared native asset: " + this.f32894i.a(), null, false, 12, null);
                    return k.a(this.f32894i, g0Var);
                } else if (g0Var instanceof g0.a) {
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.warn$default(molocoLogger2, "PrepareNativeAssets", "Failed to prepare required native asset: " + this.f32894i.a(), null, false, 12, null);
                    throw new com.moloco.sdk.internal.publisher.nativead.parser.b(this.f32894i.a(), (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) ((g0.a) g0Var).a());
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(List<? extends a.AbstractC0482a> list, i<? extends g> iVar, long j10, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f32890j = list;
            this.f32891k = iVar;
            this.f32892l = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super List<? extends Pair<? extends a.AbstractC0482a, g0.b<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>>> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(this.f32890j, this.f32891k, this.f32892l, cVar);
            dVar.f32889i = obj;
            return dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            k0 b10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32888h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                gt.g0 g0Var = (gt.g0) this.f32889i;
                List<a.AbstractC0482a> list = this.f32890j;
                i<g> iVar = this.f32891k;
                long j10 = this.f32892l;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (a.AbstractC0482a abstractC0482a : list) {
                    b10 = gt.g.b(g0Var, null, null, new a(abstractC0482a, iVar, j10, null), 3, null);
                    arrayList.add(b10);
                }
                this.f32888h = 1;
                obj = AwaitKt.a(arrayList, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.parser.PrepareNativeAssetsKt", f = "PrepareNativeAssets.kt", l = {148, 155}, m = "prepareVideoAsset-exY8QGI")
    /* loaded from: classes6.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32897h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32898i;

        /* renamed from: j  reason: collision with root package name */
        public long f32899j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32900k;

        /* renamed from: l  reason: collision with root package name */
        public int f32901l;

        public e(rs.c<? super e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32900k = obj;
            this.f32901l |= Integer.MIN_VALUE;
            return c.h(null, null, 0L, this);
        }
    }

    public static final g a(Context context) {
        return n.a(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull final android.content.Context r11, @org.jetbrains.annotations.NotNull java.util.List<? extends com.moloco.sdk.internal.publisher.nativead.model.a.AbstractC0482a> r12, long r13, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.d, com.moloco.sdk.internal.publisher.nativead.parser.b>> r15) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.parser.c.b(android.content.Context, java.util.List, long, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object d(a.AbstractC0482a.b bVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n nVar, rs.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            nVar = b.g.f33651a.a();
        }
        return g(bVar, nVar, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object g(com.moloco.sdk.internal.publisher.nativead.model.a.AbstractC0482a.b r7, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n r8, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> r9) {
        /*
            boolean r0 = r9 instanceof com.moloco.sdk.internal.publisher.nativead.parser.c.a
            if (r0 == 0) goto L13
            r0 = r9
            com.moloco.sdk.internal.publisher.nativead.parser.c$a r0 = (com.moloco.sdk.internal.publisher.nativead.parser.c.a) r0
            int r1 = r0.f32872j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32872j = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.nativead.parser.c$a r0 = new com.moloco.sdk.internal.publisher.nativead.parser.c$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f32871i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32872j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r7 = r0.f32870h
            com.moloco.sdk.internal.publisher.nativead.model.a$a$b r7 = (com.moloco.sdk.internal.publisher.nativead.model.a.AbstractC0482a.b) r7
            kotlin.f.b(r9)
            goto L47
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            kotlin.f.b(r9)
            java.lang.String r9 = r7.c()
            r0.f32870h = r7
            r0.f32872j = r3
            java.lang.Object r9 = r8.b(r9, r0)
            if (r9 != r1) goto L47
            return r1
        L47:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n$a r9 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n.a) r9
            boolean r8 = r9 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n.a.b
            if (r8 == 0) goto L95
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE     // Catch: java.lang.Exception -> L7e
            java.lang.String r1 = "PrepareNativeAssets"
            java.lang.String r2 = "Successfully loaded image asset media"
            r5 = 12
            r6 = 0
            r3 = 0
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L7e
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n$a$b r9 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n.a.b) r9     // Catch: java.lang.Exception -> L7e
            java.io.File r8 = r9.a()     // Catch: java.lang.Exception -> L7e
            java.lang.String r8 = r8.getAbsolutePath()     // Catch: java.lang.Exception -> L7e
            java.lang.String r9 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)     // Catch: java.lang.Exception -> L7e
            android.net.Uri r8 = android.net.Uri.parse(r8)     // Catch: java.lang.Exception -> L7e
            java.lang.String r9 = "parse(this)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)     // Catch: java.lang.Exception -> L7e
            com.moloco.sdk.internal.g0$b r9 = new com.moloco.sdk.internal.g0$b
            com.moloco.sdk.internal.publisher.nativead.model.b$b r0 = new com.moloco.sdk.internal.publisher.nativead.model.b$b
            r0.<init>(r7, r8)
            r9.<init>(r0)
            goto Laa
        L7e:
            r7 = move-exception
            r3 = r7
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r5 = 8
            r6 = 0
            java.lang.String r1 = "PrepareNativeAssets"
            java.lang.String r2 = "Failed to prepare image asset"
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.warn$default(r0, r1, r2, r3, r4, r5, r6)
            com.moloco.sdk.internal.g0$a r7 = new com.moloco.sdk.internal.g0$a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f.f33999c
            r7.<init>(r8)
            return r7
        L95:
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r5 = 12
            r6 = 0
            java.lang.String r1 = "PrepareNativeAssets"
            java.lang.String r2 = "Failed to fetch image asset media"
            r3 = 0
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.warn$default(r0, r1, r2, r3, r4, r5, r6)
            com.moloco.sdk.internal.g0$a r9 = new com.moloco.sdk.internal.g0$a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f.f33998b
            r9.<init>(r7)
        Laa:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.parser.c.g(com.moloco.sdk.internal.publisher.nativead.model.a$a$b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object h(com.moloco.sdk.internal.publisher.nativead.model.a.AbstractC0482a.d r11, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g r12, long r13, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> r15) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.parser.c.h(com.moloco.sdk.internal.publisher.nativead.model.a$a$d, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g, long, rs.c):java.lang.Object");
    }

    public static final Object i(a.AbstractC0482a abstractC0482a, i<? extends g> iVar, long j10, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> cVar) {
        if (abstractC0482a instanceof a.AbstractC0482a.C0483a) {
            return new g0.b(new b.a((a.AbstractC0482a.C0483a) abstractC0482a));
        }
        if (abstractC0482a instanceof a.AbstractC0482a.b) {
            return d((a.AbstractC0482a.b) abstractC0482a, null, cVar, 2, null);
        }
        if (abstractC0482a instanceof a.AbstractC0482a.c) {
            return new g0.b(new b.c((a.AbstractC0482a.c) abstractC0482a));
        }
        if (abstractC0482a instanceof a.AbstractC0482a.d) {
            return h((a.AbstractC0482a.d) abstractC0482a, iVar.getValue(), j10, cVar);
        }
        throw new NoWhenBranchMatchedException();
    }
}
