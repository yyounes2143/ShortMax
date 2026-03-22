package p000admanager.b;

import ca.i;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import rs.c;
/* renamed from: ad-manager.b.t  reason: invalid package */
/* loaded from: classes.dex */
public final class t extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public i f410h;

    /* renamed from: i  reason: collision with root package name */
    public String f411i;

    /* renamed from: j  reason: collision with root package name */
    public long f412j;

    /* renamed from: k  reason: collision with root package name */
    public /* synthetic */ Object f413k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ i f414l;

    /* renamed from: m  reason: collision with root package name */
    public int f415m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(i iVar, c cVar) {
        super(cVar);
        this.f414l = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f413k = obj;
        this.f415m |= Integer.MIN_VALUE;
        return this.f414l.j(null, this);
    }
}
