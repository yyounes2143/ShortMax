package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import at.u;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableLambdaN.jvm.kt */
@Stable
@Metadata
@SourceDebugExtension({"SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,181:1\n37#2,2:182\n37#2,2:184\n*S KotlinDebug\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n*L\n114#1:182,2\n122#1:184,2\n*E\n"})
/* loaded from: classes.dex */
public final class ComposableLambdaNImpl implements ComposableLambdaN {
    public static final int $stable = 0;
    @Nullable
    private Object _block;
    private final int arity;
    private final int key;
    @Nullable
    private RecomposeScope scope;
    @Nullable
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    public ComposableLambdaNImpl(int i10, boolean z10, int i11) {
        this.key = i10;
        this.tracked = z10;
        this.arity = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$0(Object[] objArr, int i10, ComposableLambdaNImpl composableLambdaNImpl, Composer composer, int i11) {
        Object[] array = kotlin.collections.n.h1(objArr, kotlin.ranges.e.v(0, i10)).toArray(new Object[0]);
        Object obj = objArr[i10 + 1];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
        int updateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(((Integer) obj).intValue());
        int length = (objArr.length - i10) - 2;
        Object[] objArr2 = new Object[length];
        for (int i12 = 0; i12 < length; i12++) {
            Object obj2 = objArr[i10 + 2 + i12];
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
            objArr2[i12] = Integer.valueOf(RecomposeScopeImplKt.updateChangedFlags(((Integer) obj2).intValue()));
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(4);
        spreadBuilder.addSpread(array);
        spreadBuilder.add(composer);
        spreadBuilder.add(Integer.valueOf(updateChangedFlags | 1));
        spreadBuilder.addSpread(objArr2);
        composableLambdaNImpl.invoke(spreadBuilder.toArray(new Object[spreadBuilder.size()]));
        return Unit.f60915a;
    }

    private final int realParamCount(int i10) {
        int i11 = i10 - 2;
        for (int i12 = 1; i12 * 10 < i11; i12++) {
            i11--;
        }
        return i11;
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

    @Override // androidx.compose.runtime.internal.ComposableLambdaN, kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public final int getKey() {
        return this.key;
    }

    @Override // androidx.compose.runtime.internal.ComposableLambdaN, at.u
    @Nullable
    public Object invoke(@NotNull final Object... objArr) {
        int sameBits;
        final int realParamCount = realParamCount(objArr.length);
        Object obj = objArr[realParamCount];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.Composer");
        Object[] array = kotlin.collections.n.h1(objArr, kotlin.ranges.e.v(0, objArr.length - 1)).toArray(new Object[0]);
        Object obj2 = objArr[objArr.length - 1];
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) obj2).intValue();
        Composer startRestartGroup = ((Composer) obj).startRestartGroup(this.key);
        trackRead(startRestartGroup);
        if (startRestartGroup.changed(this)) {
            sameBits = ComposableLambdaKt.differentBits(realParamCount);
        } else {
            sameBits = ComposableLambdaKt.sameBits(realParamCount);
        }
        int i10 = intValue | sameBits;
        Object obj3 = this._block;
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>");
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(array);
        spreadBuilder.add(Integer.valueOf(i10));
        Object invoke = ((u) obj3).invoke(spreadBuilder.toArray(new Object[spreadBuilder.size()]));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.internal.s
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    Unit invoke$lambda$0;
                    invoke$lambda$0 = ComposableLambdaNImpl.invoke$lambda$0(objArr, realParamCount, this, (Composer) obj4, ((Integer) obj5).intValue());
                    return invoke$lambda$0;
                }
            });
        }
        return invoke;
    }

    public final void update(@NotNull Object obj) {
        boolean z10;
        if (!Intrinsics.areEqual(obj, this._block)) {
            if (this._block == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>");
            this._block = (u) obj;
            if (!z10) {
                trackWrite();
            }
        }
    }
}
