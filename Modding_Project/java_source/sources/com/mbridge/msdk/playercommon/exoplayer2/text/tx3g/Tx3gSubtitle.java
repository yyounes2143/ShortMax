package com.mbridge.msdk.playercommon.exoplayer2.text.tx3g;

import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
final class Tx3gSubtitle implements Subtitle {
    public static final Tx3gSubtitle EMPTY = new Tx3gSubtitle();
    private final List<Cue> cues;

    public Tx3gSubtitle(Cue cue) {
        this.cues = Collections.singletonList(cue);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j10) {
        if (j10 >= 0) {
            return this.cues;
        }
        return Collections.emptyList();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public long getEventTime(int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        return 0L;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j10) {
        if (j10 < 0) {
            return 0;
        }
        return -1;
    }

    private Tx3gSubtitle() {
        this.cues = Collections.emptyList();
    }
}
