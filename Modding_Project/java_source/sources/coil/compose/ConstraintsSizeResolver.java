package coil.compose;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import c0.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.o;
import kt.b;
import kt.e;
import n0.g;
import n0.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AsyncImage.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ConstraintsSizeResolver implements h, LayoutModifier {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final e<Constraints> f3843a = o.a(Constraints.m3993boximpl(c.c()));

    @Override // n0.h
    @Nullable
    public Object b(@NotNull rs.c<? super g> cVar) {
        final e<Constraints> eVar = this.f3843a;
        return kotlinx.coroutines.flow.c.y(new b<g>() { // from class: coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1

            /* compiled from: Emitters.kt */
            @Metadata
            /* renamed from: coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kt.c f3845a;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2", f = "AsyncImage.kt", l = {225}, m = "emit")
                /* renamed from: coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: h  reason: collision with root package name */
                    /* synthetic */ Object f3846h;

                    /* renamed from: i  reason: collision with root package name */
                    int f3847i;

                    public AnonymousClass1(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.f3846h = obj;
                        this.f3847i |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar) {
                    this.f3845a = cVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1 r0 = (coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f3847i
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f3847i = r1
                        goto L18
                    L13:
                        coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1 r0 = new coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f3846h
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.f3847i
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r8)
                        goto L4b
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.f.b(r8)
                        kt.c r8 = r6.f3845a
                        androidx.compose.ui.unit.Constraints r7 = (androidx.compose.ui.unit.Constraints) r7
                        long r4 = r7.m4011unboximpl()
                        n0.g r7 = coil.compose.AsyncImageKt.c(r4)
                        if (r7 == 0) goto L4b
                        r0.f3847i = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: coil.compose.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super g> cVar2, @NotNull rs.c cVar3) {
                Object collect = b.this.collect(new AnonymousClass2(cVar2), cVar3);
                if (collect == a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, cVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull Measurable measurable, long j10) {
        this.f3843a.setValue(Constraints.m3993boximpl(j10));
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measureScope, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: coil.compose.ConstraintsSizeResolver$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope placementScope) {
                Placeable.PlacementScope.place$default(placementScope, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
