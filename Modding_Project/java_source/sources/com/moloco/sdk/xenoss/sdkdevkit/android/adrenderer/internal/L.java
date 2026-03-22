package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import jt.h;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class L implements a0 {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerImpl$isVisibleFlow$1", f = "ViewVisibilityTracker.kt", l = {36}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<h<? super Boolean>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33841h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33842i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ View f33843j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33843j = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f33843j, cVar);
            aVar.f33842i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(h<? super Boolean> hVar, rs.c<? super Unit> cVar) {
            return ((a) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object i10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i11 = this.f33841h;
            if (i11 != 0) {
                if (i11 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                View view = this.f33843j;
                this.f33841h = 1;
                i10 = M.i((h) this.f33842i, view, this);
                if (i10 == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0
    @NotNull
    public kt.b<Boolean> a(@NotNull View view) {
        kt.b<Boolean> g10;
        Intrinsics.checkNotNullParameter(view, "view");
        g10 = M.g(kotlinx.coroutines.flow.c.k(new a(view, null)));
        return g10;
    }
}
