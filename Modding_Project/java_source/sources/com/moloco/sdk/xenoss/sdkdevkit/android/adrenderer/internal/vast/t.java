package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nVastComparators.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastComparators.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastComparatorsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n295#2,2:334\n295#2,2:336\n*S KotlinDebug\n*F\n+ 1 VastComparators.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastComparatorsKt\n*L\n145#1:334,2\n146#1:336,2\n*E\n"})
/* loaded from: classes6.dex */
public final class t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<a0> f36359a = new Comparator() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.o
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return t.b((a0) obj, (a0) obj2);
        }
    };
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n> f36360b = new Comparator() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.p
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return t.a((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n) obj, (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n) obj2);
        }
    };

    public static final int a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n nVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n nVar2) {
        return f36359a.compare(nVar.f(), nVar2.f());
    }

    public static final int b(a0 a0Var, a0 a0Var2) {
        Intrinsics.checkNotNull(a0Var2);
        int q10 = q(a0Var2);
        Intrinsics.checkNotNull(a0Var);
        return Intrinsics.compare(q10, q(a0Var));
    }

    public static final Double c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, double d10, Long l10) {
        Double d11 = d(sVar, l10);
        if (d11 != null) {
            return Double.valueOf(d11.doubleValue() - d10);
        }
        return null;
    }

    public static final Double d(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, Long l10) {
        Double d10;
        if (l10 == null) {
            return null;
        }
        if (sVar.b() != null) {
            d10 = Double.valueOf(sVar.b().intValue());
        } else if (sVar.d() != null && sVar.f() != null) {
            d10 = Double.valueOf((sVar.d().intValue() - sVar.f().intValue()) / 2.0d);
        } else {
            d10 = null;
        }
        if (d10 == null) {
            return null;
        }
        return Double.valueOf((d10.doubleValue() / 8192) * (l10.longValue() / 1000.0d));
    }

    public static final Double e(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num != null && num.intValue() != 0 && num2 != null && num2.intValue() != 0 && num3 != null && num3.intValue() != 0 && num4 != null && num4.intValue() != 0) {
            return Double.valueOf((num.intValue() * num2.intValue()) - (num3.intValue() * num4.intValue()));
        }
        return null;
    }

    @NotNull
    public static final Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n> f() {
        return f36360b;
    }

    @NotNull
    public static final Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s> g(double d10, @Nullable Long l10, @Nullable Integer num, @Nullable Integer num2) {
        return new b(d10, l10, num, num2);
    }

    @NotNull
    public static final Comparator<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g> h(@Nullable Integer num, @Nullable Integer num2) {
        return new a(num, num2);
    }

    public static final Pair<Boolean, Boolean> i(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar2) {
        Object obj;
        Object obj2;
        boolean z10;
        Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                return Boolean.valueOf(t.p((a0) obj3));
            }
        };
        Iterator<T> it = gVar.e().iterator();
        while (true) {
            obj = null;
            if (it.hasNext()) {
                obj2 = it.next();
                if (((Boolean) function1.invoke(obj2)).booleanValue()) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        boolean z11 = false;
        if (obj2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Iterator<T> it2 = gVar2.e().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((Boolean) function1.invoke(next)).booleanValue()) {
                obj = next;
                break;
            }
        }
        if (obj != null) {
            z11 = true;
        }
        return ms.k.a(Boolean.valueOf(z10), Boolean.valueOf(z11));
    }

    public static final Pair<Boolean, Boolean> k(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar2, double d10, Long l10) {
        return n(c(sVar, d10, l10), c(sVar2, d10, l10));
    }

    public static final Pair<Boolean, Boolean> m(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar2, Integer num, Integer num2) {
        return n(e(sVar.h(), sVar.c(), num, num2), e(sVar2.h(), sVar2.c(), num, num2));
    }

    public static final Pair<Boolean, Boolean> n(Double d10, Double d11) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (d10 != null && d11 != null) {
            if (Intrinsics.areEqual(d10, d11)) {
                Boolean bool = Boolean.TRUE;
                return ms.k.a(bool, bool);
            } else if (Math.abs(d10.doubleValue()) == Math.abs(d11.doubleValue())) {
                if (d10.doubleValue() < 0.0d) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                Boolean valueOf = Boolean.valueOf(z11);
                if (d11.doubleValue() < 0.0d) {
                    z12 = true;
                }
                return ms.k.a(valueOf, Boolean.valueOf(z12));
            } else if (Double.compare(Math.abs(d10.doubleValue()), Math.abs(d11.doubleValue())) < 0) {
                return ms.k.a(Boolean.TRUE, Boolean.FALSE);
            } else {
                return ms.k.a(Boolean.FALSE, Boolean.TRUE);
            }
        }
        if (d10 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z10);
        if (d11 != null) {
            z12 = true;
        }
        return ms.k.a(valueOf2, Boolean.valueOf(z12));
    }

    public static final Unit o(Ref.IntRef intRef, Ref.IntRef intRef2, Pair pair) {
        Intrinsics.checkNotNullParameter(pair, "<destruct>");
        boolean booleanValue = ((Boolean) pair.b()).booleanValue();
        boolean booleanValue2 = ((Boolean) pair.d()).booleanValue();
        if (booleanValue) {
            intRef.element++;
        }
        if (booleanValue2) {
            intRef2.element++;
        }
        return Unit.f60915a;
    }

    public static final boolean p(a0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it instanceof a0.c;
    }

    public static final int q(a0 a0Var) {
        if (a0Var instanceof a0.a) {
            return 4;
        }
        if (a0Var instanceof a0.c) {
            if (((a0.c) a0Var).a().a() == com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35582b) {
                return 3;
            }
            return 2;
        } else if (a0Var instanceof a0.b) {
            return 1;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final Double r(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num != null && num.intValue() != 0 && num2 != null && num2.intValue() != 0 && num3 != null && num3.intValue() != 0 && num4 != null && num4.intValue() != 0) {
            return Double.valueOf((num.intValue() / num2.intValue()) - (num3.intValue() / num4.intValue()));
        }
        return null;
    }

    @NotNull
    public static final Comparator<a0> s() {
        return f36359a;
    }

    public static final Pair<Boolean, Boolean> t(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar2, Integer num, Integer num2) {
        return n(e(gVar.f(), gVar.d(), num, num2), e(gVar2.f(), gVar2.d(), num, num2));
    }

    public static final Pair<Integer, Integer> u(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar2, double d10, Long l10, Integer num, Integer num2) {
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.IntRef intRef2 = new Ref.IntRef();
        Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.w(Ref.IntRef.this, intRef2, (Pair) obj);
            }
        };
        function1.invoke(m(sVar, sVar2, num, num2));
        function1.invoke(v(sVar, sVar2, num, num2));
        function1.invoke(k(sVar, sVar2, d10, l10));
        return ms.k.a(Integer.valueOf(intRef.element), Integer.valueOf(intRef2.element));
    }

    public static final Pair<Boolean, Boolean> v(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar2, Integer num, Integer num2) {
        return n(r(sVar.h(), sVar.c(), num, num2), r(sVar2.h(), sVar2.c(), num, num2));
    }

    public static final Unit w(Ref.IntRef intRef, Ref.IntRef intRef2, Pair pair) {
        Intrinsics.checkNotNullParameter(pair, "<destruct>");
        boolean booleanValue = ((Boolean) pair.b()).booleanValue();
        boolean booleanValue2 = ((Boolean) pair.d()).booleanValue();
        if (booleanValue) {
            intRef.element++;
        }
        if (booleanValue2) {
            intRef2.element++;
        }
        return Unit.f60915a;
    }

    public static final Pair<Boolean, Boolean> x(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar2, Integer num, Integer num2) {
        return n(r(gVar.f(), gVar.d(), num, num2), r(gVar2.f(), gVar2.d(), num, num2));
    }

    public static final Pair<Integer, Integer> y(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar2, Integer num, Integer num2) {
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.IntRef intRef2 = new Ref.IntRef();
        Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.o(Ref.IntRef.this, intRef2, (Pair) obj);
            }
        };
        function1.invoke(t(gVar, gVar2, num, num2));
        function1.invoke(x(gVar, gVar2, num, num2));
        function1.invoke(i(gVar, gVar2));
        return ms.k.a(Integer.valueOf(intRef.element), Integer.valueOf(intRef2.element));
    }
}
