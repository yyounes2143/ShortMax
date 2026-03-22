package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.flow.o;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kt.i<k> f35693a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.e<d.a> f35694b;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdGoNextActionImpl$1", f = "AdGoNextAction.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<k, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35695h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35696i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f35696i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(k kVar, rs.c<? super Unit> cVar) {
            return ((a) create(kVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g gVar;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35695h == 0) {
                kotlin.f.b(obj);
                k kVar = (k) this.f35696i;
                if (kVar instanceof k.a) {
                    gVar = ((k.a) kVar).a();
                } else if (kVar instanceof k.b) {
                    gVar = ((k.b) kVar).a();
                } else {
                    gVar = null;
                }
                if (gVar == null) {
                    return Unit.f60915a;
                }
                gVar.reset();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull kt.i<? extends k> currentPlaylistItem, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(currentPlaylistItem, "currentPlaylistItem");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f35693a = currentPlaylistItem;
        kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.O(currentPlaylistItem, new a(null)), scope, m.f61804a.c(), null);
        this.f35694b = o.a(d.a.c.f36167a);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        k value = this.f35693a.getValue();
        if (value instanceof k.a) {
            return ((k.a) value).a().m();
        }
        if (value instanceof k.b) {
            return ((k.b) value).a().m();
        }
        if (value instanceof k.c) {
            return ((k.c) value).a().m();
        }
        if (value instanceof k.d) {
            return ((k.d) value).a().m();
        }
        if (value == null) {
            return this.f35694b;
        }
        throw new NoWhenBranchMatchedException();
    }
}
