package p000admanager.d;

import e.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import rs.c;
/* renamed from: ad-manager.d.z  reason: invalid package */
/* loaded from: classes.dex */
public final class z extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f515h;

    /* renamed from: i  reason: collision with root package name */
    public int f516i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ a f517j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(a aVar, c cVar) {
        super(cVar);
        this.f517j = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f515h = obj;
        this.f516i |= Integer.MIN_VALUE;
        return this.f517j.emit(null, this);
    }
}
