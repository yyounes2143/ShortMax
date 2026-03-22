package com.mbridge.msdk.playercommon.exoplayer2.extractor.mkv;

import androidx.collection.SieveCacheKt;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
/* loaded from: classes6.dex */
final class Sniffer {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final ParsableByteArray scratch = new ParsableByteArray(8);

    private long readUint(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i10 = 0;
        extractorInput.peekFully(this.scratch.data, 0, 1);
        int i11 = this.scratch.data[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        extractorInput.peekFully(this.scratch.data, 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.scratch.data[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + (i14 << 8);
        }
        this.peekLength += i13 + 1;
        return i14;
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        long readUint;
        int i10;
        long length = extractorInput.getLength();
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j10 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (i11 != 0 && length <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j10 = length;
        }
        int i12 = (int) j10;
        extractorInput.peekFully(this.scratch.data, 0, 4);
        long readUnsignedInt = this.scratch.readUnsignedInt();
        this.peekLength = 4;
        while (readUnsignedInt != 440786851) {
            int i13 = this.peekLength + 1;
            this.peekLength = i13;
            if (i13 == i12) {
                return false;
            }
            extractorInput.peekFully(this.scratch.data, 0, 1);
            readUnsignedInt = ((readUnsignedInt << 8) & (-256)) | (this.scratch.data[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        long readUint2 = readUint(extractorInput);
        long j11 = this.peekLength;
        if (readUint2 == Long.MIN_VALUE) {
            return false;
        }
        if (i11 == 0 || j11 + readUint2 < length) {
            while (true) {
                int i14 = (this.peekLength > (j11 + readUint2) ? 1 : (this.peekLength == (j11 + readUint2) ? 0 : -1));
                if (i14 < 0) {
                    if (readUint(extractorInput) != Long.MIN_VALUE && (readUint(extractorInput)) >= 0 && readUint <= SieveCacheKt.NodeLinkMask) {
                        if (i10 != 0) {
                            int i15 = (int) readUint;
                            extractorInput.advancePeekPosition(i15);
                            this.peekLength += i15;
                        }
                    }
                } else if (i14 != 0) {
                    return false;
                } else {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
