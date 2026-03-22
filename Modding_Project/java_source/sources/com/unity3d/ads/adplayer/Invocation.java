package com.unity3d.ads.adplayer;

import gt.e;
import gt.k0;
import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Invocation.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Invocation {
    @NotNull
    private final p<Unit> _isHandled;
    @NotNull
    private final p<Object> completableDeferred;
    @NotNull
    private final String location;
    @NotNull
    private final Object[] parameters;

    public Invocation(@NotNull String location, @NotNull Object[] parameters) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.location = location;
        this.parameters = parameters;
        this._isHandled = r.b(null, 1, null);
        this.completableDeferred = r.b(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object handle$default(Invocation invocation, Function1 function1, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = new Invocation$handle$2(null);
        }
        return invocation.handle(function1, cVar);
    }

    @NotNull
    public final String getLocation() {
        return this.location;
    }

    @NotNull
    public final Object[] getParameters() {
        return this.parameters;
    }

    @Nullable
    public final Object getResult(@NotNull c<Object> cVar) {
        return this.completableDeferred.await(cVar);
    }

    @Nullable
    public final Object handle(@NotNull Function1<? super c<Object>, ? extends Object> function1, @NotNull c<? super Unit> cVar) {
        p<Unit> pVar = this._isHandled;
        Unit unit = Unit.f60915a;
        pVar.i(unit);
        e.d(i.a(cVar.getContext()), null, null, new Invocation$handle$3(function1, this, null), 3, null);
        return unit;
    }

    @NotNull
    public final k0<Unit> isHandled() {
        return this._isHandled;
    }
}
