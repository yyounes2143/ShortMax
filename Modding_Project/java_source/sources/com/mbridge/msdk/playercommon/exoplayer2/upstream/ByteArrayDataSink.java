package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import androidx.collection.SieveCacheKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes6.dex */
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void close() throws IOException {
        this.stream.close();
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.stream;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void open(DataSpec dataSpec) throws IOException {
        boolean z10;
        long j10 = dataSpec.length;
        if (j10 == -1) {
            this.stream = new ByteArrayOutputStream();
            return;
        }
        if (j10 <= SieveCacheKt.NodeLinkMask) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        this.stream = new ByteArrayOutputStream((int) dataSpec.length);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.stream.write(bArr, i10, i11);
    }
}
