package com.moloco.sdk.internal.ilrd.provider;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.moloco.sdk.internal.ilrd.h;
import com.moloco.sdk.internal.ilrd.k;
import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nIronsourceIlrd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IronsourceIlrd.kt\ncom/moloco/sdk/internal/ilrd/provider/IronsourceIlrd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"})
/* loaded from: classes6.dex */
public final class f implements h {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f32303h = new a(null);

    /* renamed from: i  reason: collision with root package name */
    public static final int f32304i = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32305a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f32306b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.ilrd.model.a f32307c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final i f32308d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i f32309e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<k> f32310f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.d<h.a.C0471a> f32311g;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements ImpressionDataListener {
        public b() {
        }
    }

    public f(@NotNull Context context, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f32305a = context;
        this.f32306b = scope;
        this.f32307c = com.moloco.sdk.internal.ilrd.model.a.f32282b;
        this.f32308d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.provider.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.f(f.this);
            }
        });
        this.f32309e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.provider.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.d(f.this);
            }
        });
        this.f32310f = o.a(k.c.f32280a);
        this.f32311g = g.b(0, 0, null, 7, null);
    }

    public static final kt.f d(f fVar) {
        return kotlinx.coroutines.flow.c.c(fVar.f32311g);
    }

    public static final kt.i f(f fVar) {
        return kotlinx.coroutines.flow.c.d(fVar.f32310f);
    }

    private final Object g() {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            Class.forName("com.ironsource.mediationsdk.IronSource");
            Class.forName("com.ironsource.mediationsdk.impressionData.ImpressionData");
            IronSource.addImpressionDataListener(e());
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 == null) {
            return Result.d(Unit.f60915a);
        }
        return Result.d(kotlin.f.a(g10));
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public com.moloco.sdk.internal.ilrd.model.a a() {
        return this.f32307c;
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public synchronized Object b() {
        Object g10;
        try {
            g10 = g();
            Throwable g11 = Result.g(g10);
            if (g11 != null) {
                this.f32310f.setValue(new k.a(g11.toString()));
            }
            if (Result.j(g10)) {
                Unit unit = (Unit) g10;
                this.f32310f.setValue(k.b.f32279a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return g10;
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public kt.f<h.a.C0471a> c() {
        return (kt.f) this.f32309e.getValue();
    }

    public final b e() {
        return new b();
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public kt.i<k> getState() {
        return (kt.i) this.f32308d.getValue();
    }
}
