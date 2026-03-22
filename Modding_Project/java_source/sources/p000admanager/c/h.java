package p000admanager.c;

import ca.e;
import da.f;
import ga.a;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.c.h  reason: invalid package */
/* loaded from: classes.dex */
public final class h extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f f432d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ e f433e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, e eVar) {
        super(1);
        this.f432d = fVar;
        this.f433e = eVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String it = (String) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        a aVar = a.f52235a;
        String T = this.f432d.T(this.f433e);
        aVar.d(T, "createAdList -> format(" + this.f433e.f() + ") adUnitId(" + this.f433e.e() + ')');
        return new CopyOnWriteArrayList();
    }
}
