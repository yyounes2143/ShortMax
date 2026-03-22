package pt;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import mt.a0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Select.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final n<Object, Object, Object, Object> f65000a = a.f65006a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a0 f65001b = new a0("STATE_REG");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final a0 f65002c = new a0("STATE_COMPLETED");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final a0 f65003d = new a0("STATE_CANCELLED");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final a0 f65004e = new a0("NO_RESULT");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final a0 f65005f = new a0("PARAM_CLAUSE_0");

    /* compiled from: Select.kt */
    @Metadata
    /* loaded from: classes8.dex */
    static final class a implements n {

        /* renamed from: a  reason: collision with root package name */
        public static final a f65006a = new a();

        a() {
        }

        @Override // at.n
        /* renamed from: a */
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrySelectDetailedResult a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return TrySelectDetailedResult.ALREADY_SELECTED;
                    }
                    throw new IllegalStateException(("Unexpected internal result: " + i10).toString());
                }
                return TrySelectDetailedResult.CANCELLED;
            }
            return TrySelectDetailedResult.REREGISTER;
        }
        return TrySelectDetailedResult.SUCCESSFUL;
    }

    @NotNull
    public static final a0 i() {
        return f65005f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(gt.i<? super Unit> iVar, n<? super Throwable, Object, ? super CoroutineContext, Unit> nVar) {
        Object r10 = iVar.r(Unit.f60915a, null, nVar);
        if (r10 == null) {
            return false;
        }
        iVar.t(r10);
        return true;
    }
}
