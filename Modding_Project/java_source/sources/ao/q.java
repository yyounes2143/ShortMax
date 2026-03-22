package ao;

import java.io.IOException;
/* compiled from: ExtractorInput.java */
/* loaded from: classes8.dex */
public interface q extends zm.h {
    int a(byte[] bArr, int i10, int i11) throws IOException;

    void advancePeekPosition(int i10) throws IOException;

    boolean advancePeekPosition(int i10, boolean z10) throws IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException;

    @Override // zm.h
    int read(byte[] bArr, int i10, int i11) throws IOException;

    void readFully(byte[] bArr, int i10, int i11) throws IOException;

    boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException;

    void resetPeekPosition();

    int skip(int i10) throws IOException;

    void skipFully(int i10) throws IOException;
}
