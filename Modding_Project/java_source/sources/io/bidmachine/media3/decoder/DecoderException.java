package io.bidmachine.media3.decoder;

import androidx.annotation.Nullable;
/* loaded from: classes8.dex */
public class DecoderException extends Exception {
    public DecoderException(String str) {
        super(str);
    }

    public DecoderException(@Nullable Throwable th2) {
        super(th2);
    }

    public DecoderException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }
}
