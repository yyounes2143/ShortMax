package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.x;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nCompanionGoNextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompanionGoNextAction.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/CompanionGoNextActionImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,58:1\n49#2:59\n51#2:63\n46#3:60\n51#3:62\n105#4:61\n*S KotlinDebug\n*F\n+ 1 CompanionGoNextAction.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/CompanionGoNextActionImpl\n*L\n44#1:59\n44#1:63\n44#1:60\n44#1:62\n44#1:61\n*E\n"})
/* loaded from: classes6.dex */
public final class e implements g {

    /* renamed from: a  reason: collision with root package name */
    public final int f35798a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final x f35799b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.i<d.a> f35800c;

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements kt.b<d.a> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f35801a;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 CompanionGoNextAction.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/CompanionGoNextActionImpl\n*L\n1#1,49:1\n50#2:50\n45#3:51\n*E\n"})
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0567a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f35802a;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.CompanionGoNextActionImpl$special$$inlined$map$1$2", f = "CompanionGoNextAction.kt", l = {50}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0568a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f35803h;

                /* renamed from: i  reason: collision with root package name */
                public int f35804i;

                public C0568a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f35803h = obj;
                    this.f35804i |= Integer.MIN_VALUE;
                    return C0567a.this.emit(null, this);
                }
            }

            public C0567a(kt.c cVar) {
                this.f35802a = cVar;
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
                    boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e.a.C0567a.C0568a
                    if (r0 == 0) goto L13
                    r0 = r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e$a$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e.a.C0567a.C0568a) r0
                    int r1 = r0.f35804i
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f35804i = r1
                    goto L18
                L13:
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e$a$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e$a$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f35803h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f35804i
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.f.b(r6)
                    goto L49
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.f.b(r6)
                    kt.c r6 = r4.f35802a
                    ms.n r5 = (ms.n) r5
                    int r5 = r5.g()
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d$a r5 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.h.b(r5)
                    r0.f35804i = r3
                    java.lang.Object r5 = r6.emit(r5, r0)
                    if (r5 != r1) goto L49
                    return r1
                L49:
                    kotlin.Unit r5 = kotlin.Unit.f60915a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.e.a.C0567a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public a(kt.b bVar) {
            this.f35801a = bVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super d.a> cVar, rs.c cVar2) {
            Object collect = this.f35801a.collect(new C0567a(cVar), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    public /* synthetic */ e(int i10, g0 g0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, g0Var);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f35800c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g
    public void reset() {
        this.f35799b.c(this.f35798a);
    }

    public e(int i10, g0 scope) {
        d.a c10;
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f35798a = i10;
        x xVar = new x(i10, scope, null);
        this.f35799b = xVar;
        a aVar = new a(xVar.b());
        m b10 = m.a.b(m.f61804a, 0L, 0L, 3, null);
        c10 = h.c(i10);
        this.f35800c = kotlinx.coroutines.flow.c.T(aVar, scope, b10, c10);
    }
}
