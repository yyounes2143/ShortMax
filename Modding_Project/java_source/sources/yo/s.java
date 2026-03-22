package yo;

import android.util.SparseArray;
import ao.j0;
import ao.o0;
import yo.r;
/* compiled from: SubtitleTranscodingExtractorOutput.java */
/* loaded from: classes8.dex */
public final class s implements ao.r {

    /* renamed from: a  reason: collision with root package name */
    private final ao.r f71104a;

    /* renamed from: b  reason: collision with root package name */
    private final r.a f71105b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<u> f71106c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private boolean f71107d;

    public s(ao.r rVar, r.a aVar) {
        this.f71104a = rVar;
        this.f71105b = aVar;
    }

    @Override // ao.r
    public void d(j0 j0Var) {
        this.f71104a.d(j0Var);
    }

    @Override // ao.r
    public void endTracks() {
        this.f71104a.endTracks();
        if (this.f71107d) {
            for (int i10 = 0; i10 < this.f71106c.size(); i10++) {
                this.f71106c.valueAt(i10).l(true);
            }
        }
    }

    @Override // ao.r
    public o0 track(int i10, int i11) {
        if (i11 != 3) {
            this.f71107d = true;
            return this.f71104a.track(i10, i11);
        }
        u uVar = this.f71106c.get(i10);
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(this.f71104a.track(i10, i11), this.f71105b);
        this.f71106c.put(i10, uVar2);
        return uVar2;
    }
}
