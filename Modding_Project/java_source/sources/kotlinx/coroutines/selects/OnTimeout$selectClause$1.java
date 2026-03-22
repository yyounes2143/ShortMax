package kotlinx.coroutines.selects;

import at.n;
import com.bytedance.applog.game.GameReportHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
import pt.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements n<OnTimeout, i<?>, Object, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final OnTimeout$selectClause$1 f61857a = new OnTimeout$selectClause$1();

    OnTimeout$selectClause$1() {
        super(3, OnTimeout.class, GameReportHelper.REGISTER, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void b(OnTimeout onTimeout, i<?> iVar, Object obj) {
        onTimeout.d(iVar, obj);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(OnTimeout onTimeout, i<?> iVar, Object obj) {
        b(onTimeout, iVar, obj);
        return Unit.f60915a;
    }
}
