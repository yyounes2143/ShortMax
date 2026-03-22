package io.bidmachine.media3.extractor.flv;

import ao.a;
import ao.o0;
import cn.b0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.extractor.flv.TagPayloadReader;
import java.util.Collections;
/* compiled from: AudioTagPayloadReader.java */
/* loaded from: classes8.dex */
final class a extends TagPayloadReader {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f57435e = {AVMDLDataLoader.KeyIsIsMaxTlsVersion, 11025, 22050, 44100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f57436b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57437c;

    /* renamed from: d  reason: collision with root package name */
    private int f57438d;

    public a(o0 o0Var) {
        super(o0Var);
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) throws TagPayloadReader.UnsupportedFormatException {
        String str;
        if (!this.f57436b) {
            int H = b0Var.H();
            int i10 = (H >> 4) & 15;
            this.f57438d = i10;
            if (i10 == 2) {
                this.f57434a.g(new a.b().U("video/x-flv").u0(MimeTypes.AUDIO_MPEG).R(1).v0(f57435e[(H >> 2) & 3]).N());
                this.f57437c = true;
            } else if (i10 != 7 && i10 != 8) {
                if (i10 != 10) {
                    throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f57438d);
                }
            } else {
                if (i10 == 7) {
                    str = MimeTypes.AUDIO_ALAW;
                } else {
                    str = MimeTypes.AUDIO_MLAW;
                }
                this.f57434a.g(new a.b().U("video/x-flv").u0(str).R(1).v0(8000).N());
                this.f57437c = true;
            }
            this.f57436b = true;
        } else {
            b0Var.X(1);
        }
        return true;
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) throws ParserException {
        if (this.f57438d == 2) {
            int a10 = b0Var.a();
            this.f57434a.a(b0Var, a10);
            this.f57434a.c(j10, 1, a10, 0, null);
            return true;
        }
        int H = b0Var.H();
        if (H == 0 && !this.f57437c) {
            int a11 = b0Var.a();
            byte[] bArr = new byte[a11];
            b0Var.l(bArr, 0, a11);
            a.b e10 = ao.a.e(bArr);
            this.f57434a.g(new a.b().U("video/x-flv").u0(MimeTypes.AUDIO_AAC).S(e10.f1737c).R(e10.f1736b).v0(e10.f1735a).g0(Collections.singletonList(bArr)).N());
            this.f57437c = true;
            return false;
        } else if (this.f57438d == 10 && H != 1) {
            return false;
        } else {
            int a12 = b0Var.a();
            this.f57434a.a(b0Var, a12);
            this.f57434a.c(j10, 1, a12, 0, null);
            return true;
        }
    }
}
