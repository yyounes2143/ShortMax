package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import at.t;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableLambda.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class ComposableLambdaImpl implements ComposableLambda {
    public static final int $stable = 0;
    @Nullable
    private Object _block;
    private final int key;
    @Nullable
    private RecomposeScope scope;
    @Nullable
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    public ComposableLambdaImpl(int i10, boolean z10, @Nullable Object obj) {
        this.key = i10;
        this.tracked = z10;
        this._block = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$0(ComposableLambdaImpl composableLambdaImpl, Object obj, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$12(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$13(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$14(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$15(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$16(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$17(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, int i10, int i11, Composer composer, int i12) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1, RecomposeScopeImplKt.updateChangedFlags(i11));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$5(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$7(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composer, RecomposeScopeImplKt.updateChangedFlags(i10) | 1);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$9(ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, int i10, Composer composer, int i11) {
        composableLambdaImpl.invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composer, i10 | 1, i10);
        return Unit.f60915a;
    }

    private final void trackRead(Composer composer) {
        RecomposeScope recomposeScope;
        if (this.tracked && (recomposeScope = composer.getRecomposeScope()) != null) {
            composer.recordUsed(recomposeScope);
            if (ComposableLambdaKt.replacableWith(this.scope, recomposeScope)) {
                this.scope = recomposeScope;
                return;
            }
            List<RecomposeScope> list = this.scopes;
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                this.scopes = arrayList;
                arrayList.add(recomposeScope);
                return;
            }
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (ComposableLambdaKt.replacableWith(list.get(i10), recomposeScope)) {
                    list.set(i10, recomposeScope);
                    return;
                }
            }
            list.add(recomposeScope);
        }
    }

    private final void trackWrite() {
        if (this.tracked) {
            RecomposeScope recomposeScope = this.scope;
            if (recomposeScope != null) {
                recomposeScope.invalidate();
                this.scope = null;
            }
            List<RecomposeScope> list = this.scopes;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.get(i10).invalidate();
                }
                list.clear();
            }
        }
    }

    public final int getKey() {
        return this.key;
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Composer composer, Integer num) {
        return invoke(composer, num.intValue());
    }

    public final void update(@NotNull Object obj) {
        boolean z10;
        if (!Intrinsics.areEqual(this._block, obj)) {
            if (this._block == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            this._block = obj;
            if (!z10) {
                trackWrite();
            }
        }
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.n
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Composer composer, Integer num) {
        return invoke(obj, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.o
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Composer composer, Integer num) {
        return invoke(obj, obj2, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.p
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.q
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.r
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.s
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.t
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.a
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.b
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Composer composer, Integer num) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, composer, num.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.d
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.e
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.f
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.g
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.h
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.i
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.j
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.k
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, composer, num.intValue(), num2.intValue());
    }

    @Override // androidx.compose.runtime.internal.ComposableLambda, at.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, Object obj14, Object obj15, Object obj16, Object obj17, Object obj18, Composer composer, Integer num, Integer num2) {
        return invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, composer, num.intValue(), num2.intValue());
    }

    @Nullable
    public Object invoke(@NotNull Composer composer, int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = i10 | (startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(0) : ComposableLambdaKt.sameBits(0));
        Object obj = this._block;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Function2<@[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 2)).invoke(startRestartGroup, Integer.valueOf(differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new ComposableLambdaImpl$invoke$1(this));
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(1) : ComposableLambdaKt.sameBits(1);
        Object obj2 = this._block;
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj2, 3)).invoke(obj, startRestartGroup, Integer.valueOf(differentBits | i10));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.q
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Unit invoke$lambda$0;
                    invoke$lambda$0 = ComposableLambdaImpl.invoke$lambda$0(ComposableLambdaImpl.this, obj, i10, (Composer) obj3, ((Integer) obj4).intValue());
                    return invoke$lambda$0;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(2) : ComposableLambdaKt.sameBits(2);
        Object obj3 = this._block;
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Function4<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.o) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj3, 4)).invoke(obj, obj2, startRestartGroup, Integer.valueOf(differentBits | i10));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.m
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    Unit invoke$lambda$1;
                    invoke$lambda$1 = ComposableLambdaImpl.invoke$lambda$1(ComposableLambdaImpl.this, obj, obj2, i10, (Composer) obj4, ((Integer) obj5).intValue());
                    return invoke$lambda$1;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(3) : ComposableLambdaKt.sameBits(3);
        Object obj4 = this._block;
        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Function5<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.p) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj4, 5)).invoke(obj, obj2, obj3, startRestartGroup, Integer.valueOf(differentBits | i10));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.n
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    Unit invoke$lambda$2;
                    invoke$lambda$2 = ComposableLambdaImpl.invoke$lambda$2(ComposableLambdaImpl.this, obj, obj2, obj3, i10, (Composer) obj5, ((Integer) obj6).intValue());
                    return invoke$lambda$2;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(4) : ComposableLambdaKt.sameBits(4);
        Object obj5 = this._block;
        Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.Function6<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.q) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj5, 6)).invoke(obj, obj2, obj3, obj4, startRestartGroup, Integer.valueOf(differentBits | i10));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.f
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj6, Object obj7) {
                    Unit invoke$lambda$3;
                    invoke$lambda$3 = ComposableLambdaImpl.invoke$lambda$3(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, i10, (Composer) obj6, ((Integer) obj7).intValue());
                    return invoke$lambda$3;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(5) : ComposableLambdaKt.sameBits(5);
        Object obj6 = this._block;
        Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Function7<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.r) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj6, 7)).invoke(obj, obj2, obj3, obj4, obj5, startRestartGroup, Integer.valueOf(i10 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.r
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj7, Object obj8) {
                    Unit invoke$lambda$4;
                    invoke$lambda$4 = ComposableLambdaImpl.invoke$lambda$4(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, i10, (Composer) obj7, ((Integer) obj8).intValue());
                    return invoke$lambda$4;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(6) : ComposableLambdaKt.sameBits(6);
        Object obj7 = this._block;
        Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type kotlin.Function8<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.s) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj7, 8)).invoke(obj, obj2, obj3, obj4, obj5, obj6, startRestartGroup, Integer.valueOf(i10 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.i
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj8, Object obj9) {
                    Unit invoke$lambda$5;
                    invoke$lambda$5 = ComposableLambdaImpl.invoke$lambda$5(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, i10, (Composer) obj8, ((Integer) obj9).intValue());
                    return invoke$lambda$5;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(7) : ComposableLambdaKt.sameBits(7);
        Object obj8 = this._block;
        Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.Function9<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((t) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj8, 9)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, startRestartGroup, Integer.valueOf(i10 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj9, Object obj10) {
                    Unit invoke$lambda$6;
                    invoke$lambda$6 = ComposableLambdaImpl.invoke$lambda$6(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, i10, (Composer) obj9, ((Integer) obj10).intValue());
                    return invoke$lambda$6;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(8) : ComposableLambdaKt.sameBits(8);
        Object obj9 = this._block;
        Intrinsics.checkNotNull(obj9, "null cannot be cast to non-null type kotlin.Function10<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.a) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj9, 10)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, startRestartGroup, Integer.valueOf(i10 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    Unit invoke$lambda$7;
                    invoke$lambda$7 = ComposableLambdaImpl.invoke$lambda$7(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, i10, (Composer) obj10, ((Integer) obj11).intValue());
                    return invoke$lambda$7;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @NotNull Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(9) : ComposableLambdaKt.sameBits(9);
        Object obj10 = this._block;
        Intrinsics.checkNotNull(obj10, "null cannot be cast to non-null type kotlin.Function11<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.b) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj10, 11)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, startRestartGroup, Integer.valueOf(i10 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj11, Object obj12) {
                    Unit invoke$lambda$8;
                    invoke$lambda$8 = ComposableLambdaImpl.invoke$lambda$8(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, i10, (Composer) obj11, ((Integer) obj12).intValue());
                    return invoke$lambda$8;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @NotNull Composer composer, final int i10, int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(10) : ComposableLambdaKt.sameBits(10);
        Object obj11 = this._block;
        Intrinsics.checkNotNull(obj11, "null cannot be cast to non-null type kotlin.Function13<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.d) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj11, 13)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj12, Object obj13) {
                    Unit invoke$lambda$9;
                    invoke$lambda$9 = ComposableLambdaImpl.invoke$lambda$9(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, i10, (Composer) obj12, ((Integer) obj13).intValue());
                    return invoke$lambda$9;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(11) : ComposableLambdaKt.sameBits(11);
        Object obj12 = this._block;
        Intrinsics.checkNotNull(obj12, "null cannot be cast to non-null type kotlin.Function14<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.e) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj12, 14)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.p
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj13, Object obj14) {
                    Unit invoke$lambda$10;
                    invoke$lambda$10 = ComposableLambdaImpl.invoke$lambda$10(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, i10, i11, (Composer) obj13, ((Integer) obj14).intValue());
                    return invoke$lambda$10;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(12) : ComposableLambdaKt.sameBits(12);
        Object obj13 = this._block;
        Intrinsics.checkNotNull(obj13, "null cannot be cast to non-null type kotlin.Function15<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.f) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj13, 15)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.j
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj14, Object obj15) {
                    Unit invoke$lambda$11;
                    invoke$lambda$11 = ComposableLambdaImpl.invoke$lambda$11(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, i10, i11, (Composer) obj14, ((Integer) obj15).intValue());
                    return invoke$lambda$11;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(13) : ComposableLambdaKt.sameBits(13);
        Object obj14 = this._block;
        Intrinsics.checkNotNull(obj14, "null cannot be cast to non-null type kotlin.Function16<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.g) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj14, 16)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj15, Object obj16) {
                    Unit invoke$lambda$12;
                    invoke$lambda$12 = ComposableLambdaImpl.invoke$lambda$12(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, i10, i11, (Composer) obj15, ((Integer) obj16).intValue());
                    return invoke$lambda$12;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @Nullable final Object obj14, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(14) : ComposableLambdaKt.sameBits(14);
        Object obj15 = this._block;
        Intrinsics.checkNotNull(obj15, "null cannot be cast to non-null type kotlin.Function17<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"p14\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.h) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj15, 17)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj16, Object obj17) {
                    Unit invoke$lambda$13;
                    invoke$lambda$13 = ComposableLambdaImpl.invoke$lambda$13(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, i10, i11, (Composer) obj16, ((Integer) obj17).intValue());
                    return invoke$lambda$13;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @Nullable final Object obj14, @Nullable final Object obj15, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(15) : ComposableLambdaKt.sameBits(15);
        Object obj16 = this._block;
        Intrinsics.checkNotNull(obj16, "null cannot be cast to non-null type kotlin.Function18<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"p14\")] kotlin.Any?, @[ParameterName(name = \"p15\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.i) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj16, 18)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.l
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj17, Object obj18) {
                    Unit invoke$lambda$14;
                    invoke$lambda$14 = ComposableLambdaImpl.invoke$lambda$14(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, i10, i11, (Composer) obj17, ((Integer) obj18).intValue());
                    return invoke$lambda$14;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @Nullable final Object obj14, @Nullable final Object obj15, @Nullable final Object obj16, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(16) : ComposableLambdaKt.sameBits(16);
        Object obj17 = this._block;
        Intrinsics.checkNotNull(obj17, "null cannot be cast to non-null type kotlin.Function19<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"p14\")] kotlin.Any?, @[ParameterName(name = \"p15\")] kotlin.Any?, @[ParameterName(name = \"p16\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.j) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj17, 19)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj18, Object obj19) {
                    Unit invoke$lambda$15;
                    invoke$lambda$15 = ComposableLambdaImpl.invoke$lambda$15(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, i10, i11, (Composer) obj18, ((Integer) obj19).intValue());
                    return invoke$lambda$15;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @Nullable final Object obj14, @Nullable final Object obj15, @Nullable final Object obj16, @Nullable final Object obj17, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(17) : ComposableLambdaKt.sameBits(17);
        Object obj18 = this._block;
        Intrinsics.checkNotNull(obj18, "null cannot be cast to non-null type kotlin.Function20<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"p14\")] kotlin.Any?, @[ParameterName(name = \"p15\")] kotlin.Any?, @[ParameterName(name = \"p16\")] kotlin.Any?, @[ParameterName(name = \"p17\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.k) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj18, 20)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.h
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj19, Object obj20) {
                    Unit invoke$lambda$16;
                    invoke$lambda$16 = ComposableLambdaImpl.invoke$lambda$16(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, i10, i11, (Composer) obj19, ((Integer) obj20).intValue());
                    return invoke$lambda$16;
                }
            });
        }
        return invoke;
    }

    @Nullable
    public Object invoke(@Nullable final Object obj, @Nullable final Object obj2, @Nullable final Object obj3, @Nullable final Object obj4, @Nullable final Object obj5, @Nullable final Object obj6, @Nullable final Object obj7, @Nullable final Object obj8, @Nullable final Object obj9, @Nullable final Object obj10, @Nullable final Object obj11, @Nullable final Object obj12, @Nullable final Object obj13, @Nullable final Object obj14, @Nullable final Object obj15, @Nullable final Object obj16, @Nullable final Object obj17, @Nullable final Object obj18, @NotNull Composer composer, final int i10, final int i11) {
        Composer startRestartGroup = composer.startRestartGroup(this.key);
        trackRead(startRestartGroup);
        int differentBits = startRestartGroup.changed(this) ? ComposableLambdaKt.differentBits(18) : ComposableLambdaKt.sameBits(18);
        Object obj19 = this._block;
        Intrinsics.checkNotNull(obj19, "null cannot be cast to non-null type kotlin.Function21<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"p4\")] kotlin.Any?, @[ParameterName(name = \"p5\")] kotlin.Any?, @[ParameterName(name = \"p6\")] kotlin.Any?, @[ParameterName(name = \"p7\")] kotlin.Any?, @[ParameterName(name = \"p8\")] kotlin.Any?, @[ParameterName(name = \"p9\")] kotlin.Any?, @[ParameterName(name = \"p10\")] kotlin.Any?, @[ParameterName(name = \"p11\")] kotlin.Any?, @[ParameterName(name = \"p12\")] kotlin.Any?, @[ParameterName(name = \"p13\")] kotlin.Any?, @[ParameterName(name = \"p14\")] kotlin.Any?, @[ParameterName(name = \"p15\")] kotlin.Any?, @[ParameterName(name = \"p16\")] kotlin.Any?, @[ParameterName(name = \"p17\")] kotlin.Any?, @[ParameterName(name = \"p18\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, @[ParameterName(name = \"changed1\")] kotlin.Int, kotlin.Any?>");
        Object invoke = ((at.l) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj19, 21)).invoke(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, startRestartGroup, Integer.valueOf(i10), Integer.valueOf(i11 | differentBits));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.o
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj20, Object obj21) {
                    Unit invoke$lambda$17;
                    invoke$lambda$17 = ComposableLambdaImpl.invoke$lambda$17(ComposableLambdaImpl.this, obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12, obj13, obj14, obj15, obj16, obj17, obj18, i10, i11, (Composer) obj20, ((Integer) obj21).intValue());
                    return invoke$lambda$17;
                }
            });
        }
        return invoke;
    }
}
