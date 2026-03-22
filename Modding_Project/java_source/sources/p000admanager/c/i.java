package p000admanager.c;

import d.a;
import da.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.c.i  reason: invalid package */
/* loaded from: classes.dex */
public final class i extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f f434d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(f fVar) {
        super(0);
        this.f434d = fVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new a(this.f434d);
    }
}
