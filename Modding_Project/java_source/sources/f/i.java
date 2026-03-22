package f;

import da.b;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
/* loaded from: classes.dex */
public final class i implements b.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f51583a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ n f51584b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f51585c;

    public i(kotlinx.coroutines.e eVar, n nVar, Ref.ObjectRef objectRef) {
        this.f51583a = eVar;
        this.f51584b = nVar;
        this.f51585c = objectRef;
    }

    @Override // da.b.a
    public final void a(ca.e adLoadParam, int i10, String errorMsg, String mediationName) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        this.f51584b.k((String) this.f51585c.element);
        if (!this.f51583a.isCompleted()) {
            kotlinx.coroutines.e eVar = this.f51583a;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.FALSE));
        }
    }

    @Override // da.b.a
    public final void b(ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
    }

    @Override // da.b.a
    public final void c(ca.d adInfo, long j10, String mediationName, boolean z10) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        if (!this.f51583a.isCompleted()) {
            kotlinx.coroutines.e eVar = this.f51583a;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.TRUE));
        }
    }
}
