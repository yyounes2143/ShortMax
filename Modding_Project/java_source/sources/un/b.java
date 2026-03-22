package un;

import yo.j;
import yo.k;
import yo.r;
/* compiled from: DelegatingSubtitleDecoder.java */
/* loaded from: classes8.dex */
final class b extends j {

    /* renamed from: p  reason: collision with root package name */
    private final r f68499p;

    public b(String str, r rVar) {
        super(str);
        this.f68499p = rVar;
    }

    @Override // yo.j
    protected k y(byte[] bArr, int i10, boolean z10) {
        if (z10) {
            this.f68499p.reset();
        }
        return this.f68499p.c(bArr, 0, i10);
    }
}
