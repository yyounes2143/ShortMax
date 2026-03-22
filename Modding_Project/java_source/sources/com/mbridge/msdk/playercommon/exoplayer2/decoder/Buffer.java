package com.mbridge.msdk.playercommon.exoplayer2.decoder;
/* loaded from: classes6.dex */
public abstract class Buffer {
    private int flags;

    public final void addFlag(int i10) {
        this.flags = i10 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i10) {
        this.flags = (~i10) & this.flags;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean getFlag(int i10) {
        if ((this.flags & i10) == i10) {
            return true;
        }
        return false;
    }

    public final boolean isDecodeOnly() {
        return getFlag(Integer.MIN_VALUE);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final void setFlags(int i10) {
        this.flags = i10;
    }
}
