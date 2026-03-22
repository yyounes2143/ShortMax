package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes6.dex */
final class OpusReader extends StreamReader {
    private static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    private static final int OPUS_CODE = Util.getIntegerCodeForString("Opus");
    private static final byte[] OPUS_SIGNATURE = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final int SAMPLE_RATE = 48000;
    private boolean headerRead;

    private long getPacketDurationUs(byte[] bArr) {
        int i10;
        int i11;
        byte b10 = bArr[0];
        int i12 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = b10 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = bArr[1] & 63;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i11 = 2500 << i15;
        } else if (i14 >= 12) {
            i11 = 10000 << (i14 & 1);
        } else if (i15 == 3) {
            i11 = 60000;
        } else {
            i11 = 10000 << i15;
        }
        return i10 * i11;
    }

    private void putNativeOrderLong(List<byte[]> list, int i10) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i10 * 1000000000) / 48000).array());
    }

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        int bytesLeft = parsableByteArray.bytesLeft();
        byte[] bArr = OPUS_SIGNATURE;
        if (bytesLeft < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.readBytes(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    protected long preparePayload(ParsableByteArray parsableByteArray) {
        return convertTimeToGranule(getPacketDurationUs(parsableByteArray.data));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    protected boolean readHeaders(ParsableByteArray parsableByteArray, long j10, StreamReader.SetupData setupData) throws IOException, InterruptedException {
        boolean z10 = true;
        if (!this.headerRead) {
            byte[] copyOf = Arrays.copyOf(parsableByteArray.data, parsableByteArray.limit());
            int i10 = copyOf[9] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            putNativeOrderLong(arrayList, ((copyOf[11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (copyOf[10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            putNativeOrderLong(arrayList, DEFAULT_SEEK_PRE_ROLL_SAMPLES);
            setupData.format = Format.createAudioSampleFormat(null, MimeTypes.AUDIO_OPUS, null, -1, -1, i10, SAMPLE_RATE, arrayList, null, 0, null);
            this.headerRead = true;
            return true;
        }
        if (parsableByteArray.readInt() != OPUS_CODE) {
            z10 = false;
        }
        parsableByteArray.setPosition(0);
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.StreamReader
    public void reset(boolean z10) {
        super.reset(z10);
        if (z10) {
            this.headerRead = false;
        }
    }
}
