package g4;
/* compiled from: SimpleImageTranscoderFactory.java */
/* loaded from: classes3.dex */
public class h implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f52212a;

    public h(int i10) {
        this.f52212a = i10;
    }

    @Override // g4.d
    public c createImageTranscoder(com.facebook.imageformat.c cVar, boolean z10) {
        return new g(z10, this.f52212a);
    }
}
