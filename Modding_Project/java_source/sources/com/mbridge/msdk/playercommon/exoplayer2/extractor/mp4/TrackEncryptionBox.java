package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import android.util.Log;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
/* loaded from: classes6.dex */
public final class TrackEncryptionBox {
    private static final String TAG = "TrackEncryptionBox";
    public final TrackOutput.CryptoData cryptoData;
    public final byte[] defaultInitializationVector;
    public final int initializationVectorSize;
    public final boolean isEncrypted;
    @Nullable
    public final String schemeType;

    public TrackEncryptionBox(boolean z10, @Nullable String str, int i10, byte[] bArr, int i11, int i12, @Nullable byte[] bArr2) {
        boolean z11;
        if (i10 == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        Assertions.checkArgument((bArr2 == null) ^ z11);
        this.isEncrypted = z10;
        this.schemeType = str;
        this.initializationVectorSize = i10;
        this.defaultInitializationVector = bArr2;
        this.cryptoData = new TrackOutput.CryptoData(schemeToCryptoMode(str), bArr, i11, i12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int schemeToCryptoMode(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                Log.w(TAG, "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                break;
        }
        return 1;
    }
}
