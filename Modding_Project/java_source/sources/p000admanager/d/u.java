package p000admanager.d;

import ca.e;
import e.k;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref;
/* renamed from: ad-manager.d.u  reason: invalid package */
/* loaded from: classes.dex */
public final class u extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    public k f494h;

    /* renamed from: i  reason: collision with root package name */
    public e f495i;

    /* renamed from: j  reason: collision with root package name */
    public Ref.ObjectRef f496j;

    /* renamed from: k  reason: collision with root package name */
    public long f497k;

    /* renamed from: l  reason: collision with root package name */
    public long f498l;

    /* renamed from: m  reason: collision with root package name */
    public /* synthetic */ Object f499m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ k f500n;

    /* renamed from: o  reason: collision with root package name */
    public int f501o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(k kVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f500n = kVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f499m = obj;
        this.f501o |= Integer.MIN_VALUE;
        return k.f(this.f500n, null, 0L, this);
    }
}
