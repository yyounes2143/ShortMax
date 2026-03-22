package yo;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: SubtitleOutputBuffer.java */
/* loaded from: classes8.dex */
public abstract class p extends fn.e implements k {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private k f71097e;

    /* renamed from: f  reason: collision with root package name */
    private long f71098f;

    @Override // fn.e, fn.a
    public void b() {
        super.b();
        this.f71097e = null;
    }

    @Override // yo.k
    public List<bn.a> getCues(long j10) {
        return ((k) cn.a.e(this.f71097e)).getCues(j10 - this.f71098f);
    }

    @Override // yo.k
    public long getEventTime(int i10) {
        return ((k) cn.a.e(this.f71097e)).getEventTime(i10) + this.f71098f;
    }

    @Override // yo.k
    public int getEventTimeCount() {
        return ((k) cn.a.e(this.f71097e)).getEventTimeCount();
    }

    @Override // yo.k
    public int getNextEventTimeIndex(long j10) {
        return ((k) cn.a.e(this.f71097e)).getNextEventTimeIndex(j10 - this.f71098f);
    }

    public void m(long j10, k kVar, long j11) {
        this.f51841b = j10;
        this.f71097e = kVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f71098f = j10;
    }
}
