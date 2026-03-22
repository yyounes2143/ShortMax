package com.mbridge.msdk.playercommon.exoplayer2.source;
/* loaded from: classes6.dex */
public class CompositeSequenceableLoader implements SequenceableLoader {
    protected final SequenceableLoader[] loaders;

    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this.loaders = sequenceableLoaderArr;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j10) {
        SequenceableLoader[] sequenceableLoaderArr;
        boolean z10;
        boolean z11;
        boolean z12 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            z10 = false;
            for (SequenceableLoader sequenceableLoader : this.loaders) {
                long nextLoadPositionUs2 = sequenceableLoader.getNextLoadPositionUs();
                if (nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    z10 |= sequenceableLoader.continueLoading(j10);
                }
            }
            z12 |= z10;
        } while (z10);
        return z12;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public final long getBufferedPositionUs() {
        long j10 = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long bufferedPositionUs = sequenceableLoader.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, bufferedPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public final long getNextLoadPositionUs() {
        long j10 = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long nextLoadPositionUs = sequenceableLoader.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, nextLoadPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public final void reevaluateBuffer(long j10) {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            sequenceableLoader.reevaluateBuffer(j10);
        }
    }
}
