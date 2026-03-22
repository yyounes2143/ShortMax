package n6;

import androidx.annotation.Nullable;
import java.io.IOException;
import t5.y;
/* compiled from: BundledExtractorsAdapter.java */
/* loaded from: classes4.dex */
public final class a implements com.google.android.exoplayer2.source.r {

    /* renamed from: a  reason: collision with root package name */
    private final t5.p f62765a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private t5.k f62766b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private t5.l f62767c;

    public a(t5.p pVar) {
        this.f62765a = pVar;
    }

    @Override // com.google.android.exoplayer2.source.r
    public long a() {
        t5.l lVar = this.f62767c;
        if (lVar != null) {
            return lVar.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.r
    public void b() {
        t5.k kVar = this.f62766b;
        if (kVar instanceof a6.f) {
            ((a6.f) kVar).i();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006c, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    @Override // com.google.android.exoplayer2.source.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(a7.f r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, t5.m r15) throws java.io.IOException {
        /*
            r7 = this;
            t5.e r6 = new t5.e
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f62767c = r6
            t5.k r8 = r7.f62766b
            if (r8 == 0) goto L10
            return
        L10:
            t5.p r8 = r7.f62765a
            t5.k[] r8 = r8.d(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f62766b = r8
            goto L76
        L20:
            int r10 = r8.length
            r0 = r13
        L22:
            if (r0 >= r10) goto L72
            r1 = r8[r0]
            boolean r2 = r1.c(r6)     // Catch: java.lang.Throwable -> L35 java.io.EOFException -> L62
            if (r2 == 0) goto L37
            r7.f62766b = r1     // Catch: java.lang.Throwable -> L35 java.io.EOFException -> L62
            b7.a.g(r14)
            r6.resetPeekPosition()
            goto L72
        L35:
            r8 = move-exception
            goto L4e
        L37:
            t5.k r1 = r7.f62766b
            if (r1 != 0) goto L46
            long r1 = r6.getPosition()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L44
            goto L46
        L44:
            r1 = r13
            goto L47
        L46:
            r1 = r14
        L47:
            b7.a.g(r1)
            r6.resetPeekPosition()
            goto L6f
        L4e:
            t5.k r9 = r7.f62766b
            if (r9 != 0) goto L5a
            long r9 = r6.getPosition()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L5b
        L5a:
            r13 = r14
        L5b:
            b7.a.g(r13)
            r6.resetPeekPosition()
            throw r8
        L62:
            t5.k r1 = r7.f62766b
            if (r1 != 0) goto L46
            long r1 = r6.getPosition()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L44
            goto L46
        L6f:
            int r0 = r0 + 1
            goto L22
        L72:
            t5.k r10 = r7.f62766b
            if (r10 == 0) goto L7c
        L76:
            t5.k r8 = r7.f62766b
            r8.d(r15)
            return
        L7c:
            com.google.android.exoplayer2.source.UnrecognizedInputFormatException r10 = new com.google.android.exoplayer2.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            java.lang.String r8 = b7.s0.G(r8)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            java.lang.Object r9 = b7.a.e(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: n6.a.c(a7.f, android.net.Uri, java.util.Map, long, long, t5.m):void");
    }

    @Override // com.google.android.exoplayer2.source.r
    public int d(y yVar) throws IOException {
        return ((t5.k) b7.a.e(this.f62766b)).b((t5.l) b7.a.e(this.f62767c), yVar);
    }

    @Override // com.google.android.exoplayer2.source.r
    public void release() {
        t5.k kVar = this.f62766b;
        if (kVar != null) {
            kVar.release();
            this.f62766b = null;
        }
        this.f62767c = null;
    }

    @Override // com.google.android.exoplayer2.source.r
    public void seek(long j10, long j11) {
        ((t5.k) b7.a.e(this.f62766b)).seek(j10, j11);
    }
}
