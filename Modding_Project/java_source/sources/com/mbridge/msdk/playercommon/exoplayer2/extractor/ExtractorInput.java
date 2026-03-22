package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import java.io.IOException;
/* loaded from: classes6.dex */
public interface ExtractorInput {
    void advancePeekPosition(int i10) throws IOException, InterruptedException;

    boolean advancePeekPosition(int i10, boolean z10) throws IOException, InterruptedException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i10, int i11) throws IOException, InterruptedException;

    boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException, InterruptedException;

    int read(byte[] bArr, int i10, int i11) throws IOException, InterruptedException;

    void readFully(byte[] bArr, int i10, int i11) throws IOException, InterruptedException;

    boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException, InterruptedException;

    void resetPeekPosition();

    <E extends Throwable> void setRetryPosition(long j10, E e10) throws Throwable;

    int skip(int i10) throws IOException, InterruptedException;

    void skipFully(int i10) throws IOException, InterruptedException;

    boolean skipFully(int i10, boolean z10) throws IOException, InterruptedException;
}
