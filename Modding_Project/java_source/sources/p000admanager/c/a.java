package p000admanager.c;

import ca.d;
import ca.f;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.c.a  reason: invalid package */
/* loaded from: classes.dex */
public final class a extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d.a f425d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ d f426e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ f f427f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d.a aVar, d dVar, f fVar) {
        super(0);
        this.f425d = aVar;
        this.f426e = dVar;
        this.f427f = fVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        d.a.g(this.f425d, this.f426e, this.f427f);
        return Unit.f60915a;
    }
}
