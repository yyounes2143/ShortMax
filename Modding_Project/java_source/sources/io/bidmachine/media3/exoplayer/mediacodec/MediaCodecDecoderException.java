package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import io.bidmachine.media3.decoder.DecoderException;
/* loaded from: classes8.dex */
public class MediaCodecDecoderException extends DecoderException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final j f56462a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f56463b;

    /* renamed from: c  reason: collision with root package name */
    public final int f56464c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaCodecDecoderException(java.lang.Throwable r4, @androidx.annotation.Nullable io.bidmachine.media3.exoplayer.mediacodec.j r5) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Decoder failed: "
            r0.append(r1)
            r1 = 0
            if (r5 != 0) goto Lf
            r2 = r1
            goto L11
        Lf:
            java.lang.String r2 = r5.f56575a
        L11:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r3.<init>(r0, r4)
            r3.f56462a = r5
            boolean r5 = r4 instanceof android.media.MediaCodec.CodecException
            if (r5 == 0) goto L28
            r5 = r4
            android.media.MediaCodec$CodecException r5 = (android.media.MediaCodec.CodecException) r5
            java.lang.String r1 = r5.getDiagnosticInfo()
        L28:
            r3.f56463b = r1
            int r5 = cn.m0.f3614a
            r0 = 23
            if (r5 < r0) goto L35
            int r4 = b(r4)
            goto L39
        L35:
            int r4 = cn.m0.c0(r1)
        L39:
            r3.f56464c = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException.<init>(java.lang.Throwable, io.bidmachine.media3.exoplayer.mediacodec.j):void");
    }

    @RequiresApi(23)
    private static int b(Throwable th2) {
        if (th2 instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th2).getErrorCode();
        }
        return 0;
    }
}
