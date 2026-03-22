package com.mbridge.msdk.playercommon.exoplayer2.text.subrip;

import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
final class SubripSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;

    public SubripSubtitle(Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j10) {
        Cue cue;
        int binarySearchFloor = Util.binarySearchFloor(this.cueTimesUs, j10, true, false);
        if (binarySearchFloor != -1 && (cue = this.cues[binarySearchFloor]) != null) {
            return Collections.singletonList(cue);
        }
        return Collections.emptyList();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public long getEventTime(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        if (i10 < this.cueTimesUs.length) {
            z11 = true;
        }
        Assertions.checkArgument(z11);
        return this.cueTimesUs[i10];
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j10) {
        int binarySearchCeil = Util.binarySearchCeil(this.cueTimesUs, j10, false, false);
        if (binarySearchCeil >= this.cueTimesUs.length) {
            return -1;
        }
        return binarySearchCeil;
    }
}
