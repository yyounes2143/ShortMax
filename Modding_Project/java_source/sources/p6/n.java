package p6;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: SubtitleOutputBuffer.java */
/* loaded from: classes4.dex */
public abstract class n extends r5.f implements i {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private i f64796d;

    /* renamed from: e  reason: collision with root package name */
    private long f64797e;

    @Override // r5.a
    public void b() {
        super.b();
        this.f64796d = null;
    }

    @Override // p6.i
    public List<b> getCues(long j10) {
        return ((i) b7.a.e(this.f64796d)).getCues(j10 - this.f64797e);
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        return ((i) b7.a.e(this.f64796d)).getEventTime(i10) + this.f64797e;
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return ((i) b7.a.e(this.f64796d)).getEventTimeCount();
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        return ((i) b7.a.e(this.f64796d)).getNextEventTimeIndex(j10 - this.f64797e);
    }

    public void m(long j10, i iVar, long j11) {
        this.f65585b = j10;
        this.f64796d = iVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f64797e = j10;
    }
}
