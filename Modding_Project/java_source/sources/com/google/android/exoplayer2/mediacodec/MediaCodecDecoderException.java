package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.decoder.DecoderException;
/* loaded from: classes4.dex */
public class MediaCodecDecoderException extends DecoderException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final k f17860a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f17861b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaCodecDecoderException(java.lang.Throwable r4, @androidx.annotation.Nullable com.google.android.exoplayer2.mediacodec.k r5) {
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
            java.lang.String r2 = r5.f17973a
        L11:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r3.<init>(r0, r4)
            r3.f17860a = r5
            int r5 = b7.s0.f2506a
            r0 = 21
            if (r5 < r0) goto L27
            java.lang.String r1 = b(r4)
        L27:
            r3.f17861b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException.<init>(java.lang.Throwable, com.google.android.exoplayer2.mediacodec.k):void");
    }

    @Nullable
    @RequiresApi(21)
    private static String b(Throwable th2) {
        if (th2 instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
        }
        return null;
    }
}
