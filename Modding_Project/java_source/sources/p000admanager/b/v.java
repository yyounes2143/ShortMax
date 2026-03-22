package p000admanager.b;

import ca.i;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import rs.c;
/* renamed from: ad-manager.b.v  reason: invalid package */
/* loaded from: classes.dex */
public final class v extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public i f417h;

    /* renamed from: i  reason: collision with root package name */
    public String f418i;

    /* renamed from: j  reason: collision with root package name */
    public long f419j;

    /* renamed from: k  reason: collision with root package name */
    public /* synthetic */ Object f420k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ i f421l;

    /* renamed from: m  reason: collision with root package name */
    public int f422m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(i iVar, c cVar) {
        super(cVar);
        this.f421l = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f420k = obj;
        this.f422m |= Integer.MIN_VALUE;
        return this.f421l.k(null, this);
    }
}
