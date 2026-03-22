package p000admanager.e;

import ca.e;
import f.n;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref;
/* renamed from: ad-manager.e.m  reason: invalid package */
/* loaded from: classes.dex */
public final class m extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public n f539h;

    /* renamed from: i  reason: collision with root package name */
    public e f540i;

    /* renamed from: j  reason: collision with root package name */
    public Ref.ObjectRef f541j;

    /* renamed from: k  reason: collision with root package name */
    public long f542k;

    /* renamed from: l  reason: collision with root package name */
    public long f543l;

    /* renamed from: m  reason: collision with root package name */
    public /* synthetic */ Object f544m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ n f545n;

    /* renamed from: o  reason: collision with root package name */
    public int f546o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(n nVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f545n = nVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f544m = obj;
        this.f546o |= Integer.MIN_VALUE;
        return n.f(this.f545n, null, 0L, this);
    }
}
