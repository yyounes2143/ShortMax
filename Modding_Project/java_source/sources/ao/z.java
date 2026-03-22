package ao;

import java.io.IOException;
/* compiled from: ForwardingExtractorInput.java */
/* loaded from: classes8.dex */
public class z implements q {

    /* renamed from: a  reason: collision with root package name */
    private final q f1965a;

    public z(q qVar) {
        this.f1965a = qVar;
    }

    @Override // ao.q
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        return this.f1965a.a(bArr, i10, i11);
    }

    @Override // ao.q
    public boolean advancePeekPosition(int i10, boolean z10) throws IOException {
        return this.f1965a.advancePeekPosition(i10, z10);
    }

    @Override // ao.q
    public long getLength() {
        return this.f1965a.getLength();
    }

    @Override // ao.q
    public long getPeekPosition() {
        return this.f1965a.getPeekPosition();
    }

    @Override // ao.q
    public long getPosition() {
        return this.f1965a.getPosition();
    }

    @Override // ao.q
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        return this.f1965a.peekFully(bArr, i10, i11, z10);
    }

    @Override // ao.q, zm.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f1965a.read(bArr, i10, i11);
    }

    @Override // ao.q
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        return this.f1965a.readFully(bArr, i10, i11, z10);
    }

    @Override // ao.q
    public void resetPeekPosition() {
        this.f1965a.resetPeekPosition();
    }

    @Override // ao.q
    public int skip(int i10) throws IOException {
        return this.f1965a.skip(i10);
    }

    @Override // ao.q
    public void skipFully(int i10) throws IOException {
        this.f1965a.skipFully(i10);
    }

    @Override // ao.q
    public void advancePeekPosition(int i10) throws IOException {
        this.f1965a.advancePeekPosition(i10);
    }

    @Override // ao.q
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f1965a.peekFully(bArr, i10, i11);
    }

    @Override // ao.q
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        this.f1965a.readFully(bArr, i10, i11);
    }
}
