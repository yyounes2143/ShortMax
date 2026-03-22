package com.ss.ttm.player;

import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes6.dex */
public interface FrameMetadataListener {
    void frameDTSNotify(int i10, long j10, long j11);

    void onFrameAboutToBeRendered(int i10, long j10, long j11, Map<Integer, String> map);

    void updateFrameTerminatedDTS(int i10, long j10, long j11);

    default void receiveBinarySei(ByteBuffer byteBuffer) {
    }

    default void onAbrDecisionInfo(long j10, String str) {
    }

    default void didReceivePacket(int i10, long j10, long j11, Map<Integer, String> map) {
    }
}
