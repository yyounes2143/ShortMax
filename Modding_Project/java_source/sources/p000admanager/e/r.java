package p000admanager.e;

import f.j;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import rs.c;
/* renamed from: ad-manager.e.r  reason: invalid package */
/* loaded from: classes.dex */
public final class r extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f560h;

    /* renamed from: i  reason: collision with root package name */
    public int f561i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ j f562j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(j jVar, c cVar) {
        super(cVar);
        this.f562j = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f560h = obj;
        this.f561i |= Integer.MIN_VALUE;
        return this.f562j.emit(null, this);
    }
}
