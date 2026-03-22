package com.google.android.exoplayer2.extractor.flv;

import b7.g0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import java.util.Collections;
import q5.a;
import t5.b0;
/* compiled from: AudioTagPayloadReader.java */
/* loaded from: classes4.dex */
final class a extends TagPayloadReader {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f17606e = {AVMDLDataLoader.KeyIsIsMaxTlsVersion, 11025, 22050, 44100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f17607b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17608c;

    /* renamed from: d  reason: collision with root package name */
    private int f17609d;

    public a(b0 b0Var) {
        super(b0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(g0 g0Var) throws TagPayloadReader.UnsupportedFormatException {
        String str;
        if (!this.f17607b) {
            int D = g0Var.D();
            int i10 = (D >> 4) & 15;
            this.f17609d = i10;
            if (i10 == 2) {
                this.f17605a.b(new v0.b().e0(MimeTypes.AUDIO_MPEG).H(1).f0(f17606e[(D >> 2) & 3]).E());
                this.f17608c = true;
            } else if (i10 != 7 && i10 != 8) {
                if (i10 != 10) {
                    throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f17609d);
                }
            } else {
                if (i10 == 7) {
                    str = MimeTypes.AUDIO_ALAW;
                } else {
                    str = MimeTypes.AUDIO_MLAW;
                }
                this.f17605a.b(new v0.b().e0(str).H(1).f0(8000).E());
                this.f17608c = true;
            }
            this.f17607b = true;
        } else {
            g0Var.Q(1);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(g0 g0Var, long j10) throws ParserException {
        if (this.f17609d == 2) {
            int a10 = g0Var.a();
            this.f17605a.a(g0Var, a10);
            this.f17605a.e(j10, 1, a10, 0, null);
            return true;
        }
        int D = g0Var.D();
        if (D == 0 && !this.f17608c) {
            int a11 = g0Var.a();
            byte[] bArr = new byte[a11];
            g0Var.j(bArr, 0, a11);
            a.b e10 = q5.a.e(bArr);
            this.f17605a.b(new v0.b().e0(MimeTypes.AUDIO_AAC).I(e10.f65056c).H(e10.f65055b).f0(e10.f65054a).T(Collections.singletonList(bArr)).E());
            this.f17608c = true;
            return false;
        } else if (this.f17609d == 10 && D != 1) {
            return false;
        } else {
            int a12 = g0Var.a();
            this.f17605a.a(g0Var, a12);
            this.f17605a.e(j10, 1, a12, 0, null);
            return true;
        }
    }
}
