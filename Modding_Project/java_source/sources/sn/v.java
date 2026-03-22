package sn;

import zm.a0;
import zm.q;
/* compiled from: TimelineWithUpdatedMediaItem.java */
/* loaded from: classes8.dex */
public final class v extends io.bidmachine.media3.exoplayer.source.m {

    /* renamed from: f  reason: collision with root package name */
    private final zm.q f66544f;

    public v(a0 a0Var, zm.q qVar) {
        super(a0Var);
        this.f66544f = qVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
    public a0.c o(int i10, a0.c cVar, long j10) {
        Object obj;
        super.o(i10, cVar, j10);
        zm.q qVar = this.f66544f;
        cVar.f71759c = qVar;
        q.h hVar = qVar.f71992b;
        if (hVar != null) {
            obj = hVar.f72091h;
        } else {
            obj = null;
        }
        cVar.f71758b = obj;
        return cVar;
    }
}
