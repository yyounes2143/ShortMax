package e;

import da.b;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
/* loaded from: classes.dex */
public final class l0 implements b.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f50664a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f50665b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f50666c;

    public l0(kotlinx.coroutines.e eVar, k kVar, Ref.ObjectRef objectRef) {
        this.f50664a = eVar;
        this.f50665b = kVar;
        this.f50666c = objectRef;
    }

    @Override // da.b.a
    public final void a(ca.e adLoadParam, int i10, String errorMsg, String mediationName) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        k kVar = this.f50665b;
        String str = (String) this.f50666c.element;
        kVar.getClass();
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdEventHandler", "removeRequest -> requestId " + str);
        t tVar = kVar.f50656b;
        if (str == null) {
            str = "";
        }
        tVar.O(str);
        if (!this.f50664a.isCompleted()) {
            kotlinx.coroutines.e eVar = this.f50664a;
            Result.a aVar2 = Result.f60901b;
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
        if (!this.f50664a.isCompleted()) {
            kotlinx.coroutines.e eVar = this.f50664a;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.TRUE));
        }
    }
}
