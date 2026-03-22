package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nAdPlaylistControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdPlaylistControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdPlaylistControllerImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,436:1\n49#2:437\n51#2:441\n49#2:442\n51#2:446\n46#3:438\n51#3:440\n46#3:443\n51#3:445\n105#4:439\n105#4:444\n2642#5:447\n1#6:448\n*S KotlinDebug\n*F\n+ 1 AdPlaylistControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdPlaylistControllerImpl\n*L\n141#1:437\n141#1:441\n153#1:442\n153#1:446\n141#1:438\n141#1:440\n153#1:443\n153#1:445\n141#1:439\n153#1:444\n315#1:447\n315#1:448\n*E\n"})
/* loaded from: classes6.dex */
public final class f implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final List<k> f35697a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h f35698b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f35699c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.e<k> f35700d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.i<i.a> f35701e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.i<Boolean> f35702f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.b<Boolean> f35703g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.i<Boolean> f35704h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.c f35705i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> f35706j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> f35707k;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$1", f = "AdPlaylistControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35708h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35709i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ k f35711k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k kVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f35711k = kVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f35711k, cVar);
            aVar.f35709i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b bVar, rs.c<? super Unit> cVar) {
            return ((a) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35708h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b bVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b) this.f35709i;
                if (bVar instanceof b.d) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar = f.this.f35698b;
                    if (hVar != null) {
                        hVar.b(x.f35664j);
                    }
                    f.this.U(new b.f(((b.d) bVar).a()));
                } else if (bVar instanceof b.a) {
                    f.this.U(b.a.f35684a);
                } else if (bVar instanceof b.c) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar2 = f.this.f35698b;
                    if (hVar2 != null) {
                        kotlin.coroutines.jvm.internal.a.a(hVar2.c());
                    }
                    f.this.U(b.C0559b.f35685a);
                } else if (bVar instanceof b.C0566b) {
                    ((k.a) this.f35711k).a().destroy();
                    Unit unit = Unit.f60915a;
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$2", f = "AdPlaylistControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35712h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35713i;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(cVar);
            bVar.f35713i = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d dVar, rs.c<? super Unit> cVar) {
            return ((b) create(dVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35712h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d dVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d) this.f35713i;
                if (dVar instanceof d.C0584d) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar = f.this.f35698b;
                    if (hVar != null) {
                        hVar.b(x.f35661g);
                    }
                    f.this.U(new b.f(((d.C0584d) dVar).a()));
                } else if (Intrinsics.areEqual(dVar, d.a.f36265a)) {
                    f.this.U(b.a.f35684a);
                } else if (Intrinsics.areEqual(dVar, d.e.f36269a)) {
                    f.this.U(b.i.f35692a);
                    f.this.S();
                    Unit unit = Unit.f60915a;
                } else if (Intrinsics.areEqual(dVar, d.b.f36266a)) {
                    f.this.U(b.c.f35686a);
                    kotlin.coroutines.jvm.internal.a.a(f.this.C());
                } else if (Intrinsics.areEqual(dVar, d.c.f36267a)) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar2 = f.this.f35698b;
                    if (hVar2 != null) {
                        kotlin.coroutines.jvm.internal.a.a(hVar2.c());
                    }
                    f.this.U(b.g.f35690a);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$3", f = "AdPlaylistControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35715h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35716i;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f35718a;

            static {
                int[] iArr = new int[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b.values().length];
                try {
                    iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b.f36169b.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b.f36168a.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f35718a = iArr;
            }
        }

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f35716i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b bVar, rs.c<? super Unit> cVar) {
            return ((c) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35715h == 0) {
                kotlin.f.b(obj);
                int i10 = a.f35718a[((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.b) this.f35716i).ordinal()];
                if (i10 == 1) {
                    f.this.U(b.a.f35684a);
                } else if (i10 == 2) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar = f.this.f35698b;
                    if (hVar != null) {
                        kotlin.coroutines.jvm.internal.a.a(hVar.c());
                    }
                    f.this.U(b.d.f35687a);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$4", f = "AdPlaylistControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<l, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35719h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35720i;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f35722a;

            static {
                int[] iArr = new int[l.values().length];
                try {
                    iArr[l.f34312a.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[l.f34313b.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f35722a = iArr;
            }
        }

        public d(rs.c<? super d> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(cVar);
            dVar.f35720i = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(l lVar, rs.c<? super Unit> cVar) {
            return ((d) create(lVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35719h == 0) {
                kotlin.f.b(obj);
                int i10 = a.f35722a[((l) this.f35720i).ordinal()];
                if (i10 == 1) {
                    f.this.U(b.i.f35692a);
                    f.this.S();
                } else if (i10 == 2) {
                    f.this.U(b.a.f35684a);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$canReplay$1", f = "AdPlaylistControllerImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements n<k, Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35723h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35724i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35725j;

        public e(rs.c<? super e> cVar) {
            super(3, cVar);
        }

        @Override // at.n
        /* renamed from: i */
        public final Object invoke(k kVar, Boolean bool, rs.c<? super Boolean> cVar) {
            e eVar = new e(cVar);
            eVar.f35724i = kVar;
            eVar.f35725j = bool;
            return eVar.invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
            if (kotlin.jvm.internal.Intrinsics.areEqual(r0, kotlin.coroutines.jvm.internal.a.a(true)) == false) goto L9;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r3) {
            /*
                r2 = this;
                kotlin.coroutines.intrinsics.a.f()
                int r0 = r2.f35723h
                if (r0 != 0) goto L36
                kotlin.f.b(r3)
                java.lang.Object r3 = r2.f35724i
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k r3 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k) r3
                java.lang.Object r0 = r2.f35725j
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                if (r3 == 0) goto L30
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.this
                java.util.List r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.X(r1)
                java.lang.Object r1 = kotlin.collections.CollectionsKt.C0(r1)
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r1)
                if (r3 == 0) goto L30
                r3 = 1
                java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.a.a(r3)
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 != 0) goto L30
                goto L31
            L30:
                r3 = 0
            L31:
                java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.a.a(r3)
                return r3
            L36:
                java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r3.<init>(r0)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$onEvent$1", f = "AdPlaylistControllerImpl.kt", l = {VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$f  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0560f extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35727h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b f35729j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0560f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super C0560f> cVar) {
            super(2, cVar);
            this.f35729j = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0560f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0560f(this.f35729j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35727h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = f.this.f35706j;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar = this.f35729j;
                this.f35727h = 1;
                if (dVar.emit(bVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class g implements kt.b<i.a> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f35730a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ f f35731b;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AdPlaylistControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdPlaylistControllerImpl\n*L\n1#1,49:1\n50#2:50\n142#3,9:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f35732a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ f f35733b;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$special$$inlined$map$1$2", f = "AdPlaylistControllerImpl.kt", l = {50}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0561a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f35734h;

                /* renamed from: i  reason: collision with root package name */
                public int f35735i;

                public C0561a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f35734h = obj;
                    this.f35735i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar, f fVar) {
                this.f35732a = cVar;
                this.f35733b = fVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r6, rs.c r7) {
                /*
                    r5 = this;
                    boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.g.a.C0561a
                    if (r0 == 0) goto L13
                    r0 = r7
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$g$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.g.a.C0561a) r0
                    int r1 = r0.f35735i
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f35735i = r1
                    goto L18
                L13:
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$g$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$g$a$a
                    r0.<init>(r7)
                L18:
                    java.lang.Object r7 = r0.f35734h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f35735i
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.f.b(r7)
                    goto L92
                L29:
                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                    r6.<init>(r7)
                    throw r6
                L31:
                    kotlin.f.b(r7)
                    kt.c r7 = r5.f35732a
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k) r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f r2 = r5.f35733b
                    java.util.List r2 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.X(r2)
                    java.lang.Object r2 = kotlin.collections.CollectionsKt.D0(r2)
                    boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r6)
                    boolean r4 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.a
                    if (r4 == 0) goto L56
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$a r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$a
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$a r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.a) r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a r6 = r6.a()
                    r4.<init>(r6, r2)
                    goto L89
                L56:
                    boolean r4 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.c
                    if (r4 == 0) goto L66
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$c r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$c
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$c r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.c) r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c r6 = r6.a()
                    r4.<init>(r6, r2)
                    goto L89
                L66:
                    boolean r4 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.b
                    if (r4 == 0) goto L76
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$b r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$b
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$b r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.b) r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a r6 = r6.a()
                    r4.<init>(r6, r2)
                    goto L89
                L76:
                    boolean r4 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.d
                    if (r4 == 0) goto L86
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$d r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$d
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$d r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.d) r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s r6 = r6.a()
                    r4.<init>(r6, r2)
                    goto L89
                L86:
                    if (r6 != 0) goto L95
                    r4 = 0
                L89:
                    r0.f35735i = r3
                    java.lang.Object r6 = r7.emit(r4, r0)
                    if (r6 != r1) goto L92
                    return r1
                L92:
                    kotlin.Unit r6 = kotlin.Unit.f60915a
                    return r6
                L95:
                    kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
                    r6.<init>()
                    throw r6
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.g.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public g(kt.b bVar, f fVar) {
            this.f35730a = bVar;
            this.f35731b = fVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super i.a> cVar, rs.c cVar2) {
            Object collect = this.f35730a.collect(new a(cVar, this.f35731b), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class h implements kt.b<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f35737a;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AdPlaylistControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdPlaylistControllerImpl\n*L\n1#1,49:1\n50#2:50\n154#3,7:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f35738a;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImpl$special$$inlined$map$2$2", f = "AdPlaylistControllerImpl.kt", l = {50}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0562a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f35739h;

                /* renamed from: i  reason: collision with root package name */
                public int f35740i;

                public C0562a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f35739h = obj;
                    this.f35740i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar) {
                this.f35738a = cVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r5, rs.c r6) {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.h.a.C0562a
                    if (r0 == 0) goto L13
                    r0 = r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$h$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.h.a.C0562a) r0
                    int r1 = r0.f35740i
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f35740i = r1
                    goto L18
                L13:
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$h$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f$h$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f35739h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f35740i
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.f.b(r6)
                    goto L70
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.f.b(r6)
                    kt.c r6 = r4.f35738a
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k) r5
                    boolean r2 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.a
                    if (r2 == 0) goto L47
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$a r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.a) r5
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a r5 = r5.a()
                    boolean r5 = r5.p()
                    goto L63
                L47:
                    boolean r2 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.c
                    if (r2 == 0) goto L56
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k$c r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.c) r5
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c r5 = r5.a()
                    boolean r5 = r5.p()
                    goto L63
                L56:
                    boolean r2 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.b
                    if (r2 == 0) goto L5b
                    goto L62
                L5b:
                    boolean r2 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k.d
                    if (r2 == 0) goto L60
                    goto L62
                L60:
                    if (r5 != 0) goto L73
                L62:
                    r5 = 0
                L63:
                    java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
                    r0.f35740i = r3
                    java.lang.Object r5 = r6.emit(r5, r0)
                    if (r5 != r1) goto L70
                    return r1
                L70:
                    kotlin.Unit r5 = kotlin.Unit.f60915a
                    return r5
                L73:
                    kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
                    r5.<init>()
                    throw r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.f.h.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public h(kt.b bVar) {
            this.f35737a = bVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super Boolean> cVar, rs.c cVar2) {
            Object collect = this.f35737a.collect(new a(cVar), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull List<? extends k> playlist, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar) {
        kt.b<Boolean> j10;
        kt.b O;
        Intrinsics.checkNotNullParameter(playlist, "playlist");
        this.f35697a = playlist;
        this.f35698b = hVar;
        g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f35699c = a10;
        kt.e<k> a11 = o.a(null);
        this.f35700d = a11;
        g gVar = new g(a11, this);
        m.a aVar = m.f61804a;
        this.f35701e = kotlinx.coroutines.flow.c.T(gVar, a10, m.a.b(aVar, 0L, 0L, 3, null), null);
        h hVar2 = new h(a11);
        m b10 = m.a.b(aVar, 0L, 0L, 3, null);
        Boolean bool = Boolean.FALSE;
        this.f35702f = kotlinx.coroutines.flow.c.T(hVar2, a10, b10, bool);
        j10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.j(a11, a10);
        this.f35703g = j10;
        this.f35704h = kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.n(a11, j10, new e(null)), a10, m.a.b(aVar, 0L, 0L, 3, null), bool);
        this.f35705i = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.e.a(a11, a10);
        kt.d<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> b11 = kt.g.b(0, 0, null, 7, null);
        this.f35706j = b11;
        this.f35707k = b11;
        for (k kVar : playlist) {
            if (kVar instanceof k.a) {
                O = kotlinx.coroutines.flow.c.O(((k.a) kVar).a().a(), new a(kVar, null));
            } else if (kVar instanceof k.c) {
                O = kotlinx.coroutines.flow.c.O(((k.c) kVar).a().a(), new b(null));
            } else if (kVar instanceof k.b) {
                O = kotlinx.coroutines.flow.c.O(((k.b) kVar).a().a(), new c(null));
            } else if (kVar instanceof k.d) {
                O = kotlinx.coroutines.flow.c.O(((k.d) kVar).a().a(), new d(null));
            } else {
                throw new NoWhenBranchMatchedException();
            }
            kotlinx.coroutines.flow.c.J(O, this.f35699c);
        }
    }

    public final boolean C() {
        List<k> list = this.f35697a;
        k kVar = (k) CollectionsKt.t0(list, CollectionsKt.v0(list, this.f35700d.getValue()) + 1);
        if (kVar == null) {
            return false;
        }
        W(kVar);
        return true;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i
    public void G() {
        k.c cVar;
        if (!(m().getValue() instanceof d.a.C0583a)) {
            return;
        }
        k value = this.f35700d.getValue();
        if (value instanceof k.c) {
            cVar = (k.c) value;
        } else {
            cVar = null;
        }
        if (cVar != null) {
            cVar.a().h();
        } else {
            S();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i
    public void L() {
        p();
        U(b.h.f35691a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i
    public void M() {
        k value = this.f35700d.getValue();
        if (value instanceof k.a) {
            ((k.a) value).a().C(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.i.a());
        } else if (value instanceof k.c) {
            ((k.c) value).a().C(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.i.a());
        } else if (value instanceof k.b) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdController", "Empty CTA DEC playlist item reached", null, false, 12, null);
        } else if (value instanceof k.d) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdController", "Empty CTA Mraid playlist item reached", null, false, 12, null);
        } else if (value == null) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdController", "Empty CTA playlist item reached", null, false, 12, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void S() {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a g10;
        g10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.g(this.f35697a, this.f35700d.getValue());
        if (g10 != null) {
            g10.E();
        }
        if (C()) {
            return;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.h hVar = this.f35698b;
        if (hVar != null) {
            hVar.a();
        }
        U(b.e.f35688a);
    }

    public final r U(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar) {
        r d10;
        d10 = gt.g.d(this.f35699c, null, null, new C0560f(bVar, null), 3, null);
        return d10;
    }

    public final void W(k kVar) {
        this.f35700d.setValue(kVar);
        if (kVar instanceof k.c) {
            ((k.c) kVar).a().A();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a
    @NotNull
    public kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> a() {
        return this.f35707k;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a
    public void d() {
        p();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f35699c, null, 1, null);
        for (k kVar : this.f35697a) {
            if (kVar instanceof k.a) {
                ((k.a) kVar).a().destroy();
            } else if (kVar instanceof k.c) {
                ((k.c) kVar).a().destroy();
            } else if (kVar instanceof k.b) {
                ((k.b) kVar).a().destroy();
            } else if (kVar instanceof k.d) {
                ((k.d) kVar).a().destroy();
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        W(null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        a.AbstractC0597a.c i10;
        Intrinsics.checkNotNullParameter(button, "button");
        i10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.i(this.f35697a, this.f35700d.getValue(), button);
        k value = this.f35700d.getValue();
        if (value instanceof k.c) {
            ((k.c) value).a().h(i10);
        } else if (value instanceof k.a) {
            ((k.a) value).a().h(i10);
        } else if (value instanceof k.b) {
            ((k.b) value).a().h(i10);
        } else if (value instanceof k.d) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdController", "Empty onButtonRendered MRAID playlist item reached", null, false, 12, null);
        } else if (value == null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger, "AdController", "Displaying " + i10.c() + " at position: " + i10.d() + " of size: " + i10.e() + " in unknown playlist item type", null, false, 12, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        a.AbstractC0597a.c.EnumC0599a h10;
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        h10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.h(this.f35697a, this.f35700d.getValue(), buttonType);
        k value = this.f35700d.getValue();
        if (value instanceof k.c) {
            ((k.c) value).a().i(h10);
        } else if (value instanceof k.a) {
            ((k.a) value).a().i(h10);
        } else if (value instanceof k.b) {
            ((k.b) value).a().i(h10);
        } else if (value instanceof k.d) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdController", "Empty onButtonUnRendered MRAID playlist item reached", null, false, 12, null);
        } else if (value == null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger, "AdController", "Unrendering " + h10 + " in unknown playlist item type", null, false, 12, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i
    @NotNull
    public kt.i<i.a> k() {
        return this.f35701e;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f35705i.m();
    }

    public final void p() {
        k kVar = (k) CollectionsKt.firstOrNull(this.f35697a);
        if (kVar == null) {
            return;
        }
        W(kVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i
    @NotNull
    public kt.i<Boolean> r() {
        return this.f35702f;
    }
}
