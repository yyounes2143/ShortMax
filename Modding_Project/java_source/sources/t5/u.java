package t5;

import java.io.IOException;
/* compiled from: ForwardingExtractorInput.java */
/* loaded from: classes4.dex */
public class u implements l {

    /* renamed from: a  reason: collision with root package name */
    private final l f67195a;

    public u(l lVar) {
        this.f67195a = lVar;
    }

    @Override // t5.l
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        return this.f67195a.a(bArr, i10, i11);
    }

    @Override // t5.l
    public boolean advancePeekPosition(int i10, boolean z10) throws IOException {
        return this.f67195a.advancePeekPosition(i10, z10);
    }

    @Override // t5.l
    public long getLength() {
        return this.f67195a.getLength();
    }

    @Override // t5.l
    public long getPeekPosition() {
        return this.f67195a.getPeekPosition();
    }

    @Override // t5.l
    public long getPosition() {
        return this.f67195a.getPosition();
    }

    @Override // t5.l
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        return this.f67195a.peekFully(bArr, i10, i11, z10);
    }

    @Override // t5.l, a7.f
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f67195a.read(bArr, i10, i11);
    }

    @Override // t5.l
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        return this.f67195a.readFully(bArr, i10, i11, z10);
    }

    @Override // t5.l
    public void resetPeekPosition() {
        this.f67195a.resetPeekPosition();
    }

    @Override // t5.l
    public int skip(int i10) throws IOException {
        return this.f67195a.skip(i10);
    }

    @Override // t5.l
    public void skipFully(int i10) throws IOException {
        this.f67195a.skipFully(i10);
    }

    @Override // t5.l
    public void advancePeekPosition(int i10) throws IOException {
        this.f67195a.advancePeekPosition(i10);
    }

    @Override // t5.l
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f67195a.peekFully(bArr, i10, i11);
    }

    @Override // t5.l
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f67195a.readFully(bArr, i10, i11);
    }
}
