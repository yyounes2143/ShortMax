package io.bidmachine.rendering.internal.state;

import io.bidmachine.rendering.internal.h;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ms.i;
import nq.b;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class c extends b {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final h f58461n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final i f58462o;

    @Metadata
    /* loaded from: classes8.dex */
    static final class a extends Lambda implements Function0<nq.a> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final nq.a invoke() {
            c cVar = c.this;
            return new nq.a(cVar, cVar.n());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String parent, @NotNull h coroutineDispatchers) {
        super(parent);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.f58461n = coroutineDispatchers;
        this.f58462o = kotlin.c.a(LazyThreadSafetyMode.PUBLICATION, new a());
    }

    @NotNull
    public final h n() {
        return this.f58461n;
    }

    @NotNull
    public final nq.a o() {
        return (nq.a) this.f58462o.getValue();
    }
}
