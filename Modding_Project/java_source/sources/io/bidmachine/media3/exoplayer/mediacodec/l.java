package io.bidmachine.media3.exoplayer.mediacodec;

import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import io.bidmachine.media3.exoplayer.mediacodec.l;
import java.util.List;
/* compiled from: MediaCodecSelector.java */
/* loaded from: classes8.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f56588a = new l() { // from class: pn.e
        @Override // io.bidmachine.media3.exoplayer.mediacodec.l
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.k(str, z10, z11);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final l f56589b = new l() { // from class: pn.f
        @Override // io.bidmachine.media3.exoplayer.mediacodec.l
        public final List a(String str, boolean z10, boolean z11) {
            List c10;
            c10 = l.c(str, z10, z11);
            return c10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ List c(String str, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.o(f56588a.a(str, z10, z11));
    }

    List<j> a(String str, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException;
}
