package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.util.List;
/* compiled from: MediaCodecSelector.java */
/* loaded from: classes4.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f17984a = new l() { // from class: f6.i
        @Override // com.google.android.exoplayer2.mediacodec.l
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.s(str, z10, z11);
        }
    };

    List<k> a(String str, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException;
}
