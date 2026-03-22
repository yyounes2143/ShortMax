package com.facebook.imagepipeline.nativecode;
@k2.d
/* loaded from: classes3.dex */
public class NativeJpegTranscoderFactory implements g4.d {

    /* renamed from: a  reason: collision with root package name */
    private final int f15693a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15694b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15695c;

    @k2.d
    public NativeJpegTranscoderFactory(int i10, boolean z10, boolean z11) {
        this.f15693a = i10;
        this.f15694b = z10;
        this.f15695c = z11;
    }

    @Override // g4.d
    @k2.d
    public g4.c createImageTranscoder(com.facebook.imageformat.c cVar, boolean z10) {
        if (cVar != com.facebook.imageformat.b.f15604b) {
            return null;
        }
        return new NativeJpegTranscoder(z10, this.f15693a, this.f15694b, this.f15695c);
    }
}
