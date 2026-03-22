package kotlinx.coroutines.selects;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import pt.c;
import pt.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class OnTimeout {

    /* renamed from: a  reason: collision with root package name */
    private final long f61856a;

    public OnTimeout(long j10) {
        this.f61856a = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(final i<?> iVar, Object obj) {
        if (this.f61856a <= 0) {
            iVar.e(Unit.f60915a);
            return;
        }
        Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.selects.a
            @Override // java.lang.Runnable
            public final void run() {
                OnTimeout.e(i.this, this);
            }
        };
        Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        SelectImplementation selectImplementation = (SelectImplementation) iVar;
        CoroutineContext context = selectImplementation.getContext();
        selectImplementation.b(DelayKt.d(context).c(this.f61856a, runnable, context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(i iVar, OnTimeout onTimeout) {
        iVar.f(onTimeout, Unit.f60915a);
    }

    @NotNull
    public final pt.b c() {
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.f61857a;
        Intrinsics.checkNotNull(onTimeout$selectClause$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new c(this, (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(onTimeout$selectClause$1, 3), null, 4, null);
    }
}
