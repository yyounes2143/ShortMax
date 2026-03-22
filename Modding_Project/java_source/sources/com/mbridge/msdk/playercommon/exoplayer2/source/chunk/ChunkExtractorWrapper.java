package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import android.util.SparseArray;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.DummyTrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
/* loaded from: classes6.dex */
public final class ChunkExtractorWrapper implements ExtractorOutput {
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    public final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;
    private TrackOutputProvider trackOutputProvider;

    /* loaded from: classes6.dex */
    private static final class BindingTrackOutput implements TrackOutput {

        /* renamed from: id  reason: collision with root package name */
        private final int f28484id;
        private final Format manifestFormat;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        public BindingTrackOutput(int i10, int i11, Format format) {
            this.f28484id = i10;
            this.type = i11;
            this.manifestFormat = format;
        }

        public void bind(TrackOutputProvider trackOutputProvider) {
            if (trackOutputProvider == null) {
                this.trackOutput = new DummyTrackOutput();
                return;
            }
            TrackOutput track = trackOutputProvider.track(this.f28484id, this.type);
            this.trackOutput = track;
            Format format = this.sampleFormat;
            if (format != null) {
                track.format(format);
            }
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.manifestFormat;
            if (format2 != null) {
                format = format.copyWithManifestFormatInfo(format2);
            }
            this.sampleFormat = format;
            this.trackOutput.format(format);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public int sampleData(ExtractorInput extractorInput, int i10, boolean z10) throws IOException, InterruptedException {
            return this.trackOutput.sampleData(extractorInput, i10, z10);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j10, int i10, int i11, int i12, TrackOutput.CryptoData cryptoData) {
            this.trackOutput.sampleMetadata(j10, i10, i11, i12, cryptoData);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i10) {
            this.trackOutput.sampleData(parsableByteArray, i10);
        }
    }

    /* loaded from: classes6.dex */
    public interface TrackOutputProvider {
        TrackOutput track(int i10, int i11);
    }

    public ChunkExtractorWrapper(Extractor extractor, int i10, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i10;
        this.primaryTrackManifestFormat = format;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i10 = 0; i10 < this.bindingTrackOutputs.size(); i10++) {
            formatArr[i10] = this.bindingTrackOutputs.valueAt(i10).sampleFormat;
        }
        this.sampleFormats = formatArr;
    }

    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    public SeekMap getSeekMap() {
        return this.seekMap;
    }

    public void init(TrackOutputProvider trackOutputProvider, long j10) {
        this.trackOutputProvider = trackOutputProvider;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j10 != -9223372036854775807L) {
                this.extractor.seek(0L, j10);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        extractor.seek(0L, j10);
        for (int i10 = 0; i10 < this.bindingTrackOutputs.size(); i10++) {
            this.bindingTrackOutputs.valueAt(i10).bind(trackOutputProvider);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i10, int i11) {
        boolean z10;
        Format format;
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i10);
        if (bindingTrackOutput == null) {
            if (this.sampleFormats == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.checkState(z10);
            if (i11 == this.primaryTrackType) {
                format = this.primaryTrackManifestFormat;
            } else {
                format = null;
            }
            bindingTrackOutput = new BindingTrackOutput(i10, i11, format);
            bindingTrackOutput.bind(this.trackOutputProvider);
            this.bindingTrackOutputs.put(i10, bindingTrackOutput);
        }
        return bindingTrackOutput;
    }
}
