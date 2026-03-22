package x6;

import java.util.Collections;
import java.util.List;
import p6.i;
/* compiled from: Tx3gSubtitle.java */
/* loaded from: classes4.dex */
final class b implements i {

    /* renamed from: b  reason: collision with root package name */
    public static final b f70408b = new b();

    /* renamed from: a  reason: collision with root package name */
    private final List<p6.b> f70409a;

    public b(p6.b bVar) {
        this.f70409a = Collections.singletonList(bVar);
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        if (j10 >= 0) {
            return this.f70409a;
        }
        return Collections.emptyList();
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        return 0L;
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        if (j10 < 0) {
            return 0;
        }
        return -1;
    }

    private b() {
        this.f70409a = Collections.emptyList();
    }
}
