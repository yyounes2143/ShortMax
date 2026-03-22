package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes6.dex */
public final class TrackSelectionArray {
    private int hashCode;
    public final int length;
    private final TrackSelection[] trackSelections;

    public TrackSelectionArray(TrackSelection... trackSelectionArr) {
        this.trackSelections = trackSelectionArr;
        this.length = trackSelectionArr.length;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackSelectionArray.class == obj.getClass()) {
            return Arrays.equals(this.trackSelections, ((TrackSelectionArray) obj).trackSelections);
        }
        return false;
    }

    @Nullable
    public TrackSelection get(int i10) {
        return this.trackSelections[i10];
    }

    public TrackSelection[] getAll() {
        return (TrackSelection[]) this.trackSelections.clone();
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = Arrays.hashCode(this.trackSelections) + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        }
        return this.hashCode;
    }
}
