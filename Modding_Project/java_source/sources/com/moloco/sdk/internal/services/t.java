package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class t implements f0 {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f33512c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final n0 f33513a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f33514b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @d(c = "com.moloco.sdk.internal.services.ClickthroughServiceImpl", f = "ClickthroughService.kt", l = {73, 77}, m = "runClickThrough")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33515h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33516i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f33517j;

        /* renamed from: l  reason: collision with root package name */
        public int f33519l;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33517j = obj;
            this.f33519l |= Integer.MIN_VALUE;
            return t.this.b(null, null, null, null, this);
        }
    }

    public t(@NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService) {
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        this.f33513a = externalLinkHandler;
        this.f33514b = customUserEventBuilderService;
    }

    @Override // com.moloco.sdk.internal.services.f0
    @Nullable
    public Object a(@NotNull String str, @Nullable kt.d<Unit> dVar, @NotNull rs.c<? super Unit> cVar) {
        n0 n0Var = this.f33513a;
        if (str == null) {
            str = "";
        }
        if (n0Var.a(str) && dVar != null) {
            Unit unit = Unit.f60915a;
            Object emit = dVar.emit(unit, cVar);
            if (emit == kotlin.coroutines.intrinsics.a.f()) {
                return emit;
            }
            return unit;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    @Override // com.moloco.sdk.internal.services.f0
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a r20, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r r21, @org.jetbrains.annotations.Nullable kt.d<kotlin.Unit> r22, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r23) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.t.b(java.lang.String, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r, kt.d, rs.c):java.lang.Object");
    }
}
