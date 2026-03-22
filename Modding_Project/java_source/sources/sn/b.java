package sn;

import androidx.annotation.Nullable;
import ao.i0;
import java.io.IOException;
/* compiled from: BundledExtractorsAdapter.java */
/* loaded from: classes8.dex */
public final class b implements io.bidmachine.media3.exoplayer.source.w {

    /* renamed from: a  reason: collision with root package name */
    private final ao.u f66477a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ao.p f66478b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ao.q f66479c;

    public b(ao.u uVar) {
        this.f66477a = uVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(ao.p pVar) {
        return pVar.c().getClass().getSimpleName();
    }

    @Override // io.bidmachine.media3.exoplayer.source.w
    public long a() {
        ao.q qVar = this.f66479c;
        if (qVar != null) {
            return qVar.getPosition();
        }
        return -1L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.w
    public void b() {
        ao.p pVar = this.f66478b;
        if (pVar == null) {
            return;
        }
        ao.p c10 = pVar.c();
        if (c10 instanceof uo.f) {
            ((uo.f) c10).k();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.w
    public int c(i0 i0Var) throws IOException {
        return ((ao.p) cn.a.e(this.f66478b)).f((ao.q) cn.a.e(this.f66479c), i0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        if (r6.getPosition() != r11) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
        if (r6.getPosition() != r11) goto L29;
     */
    @Override // io.bidmachine.media3.exoplayer.source.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(zm.h r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, ao.r r15) throws java.io.IOException {
        /*
            r7 = this;
            ao.i r6 = new ao.i
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f66479c = r6
            ao.p r8 = r7.f66478b
            if (r8 == 0) goto L10
            return
        L10:
            ao.u r8 = r7.f66477a
            ao.p[] r8 = r8.d(r9, r10)
            int r10 = r8.length
            com.google.common.collect.ImmutableList$a r10 = com.google.common.collect.ImmutableList.s(r10)
            int r13 = r8.length
            r14 = 0
            r0 = 1
            if (r13 != r0) goto L25
            r8 = r8[r14]
            r7.f66478b = r8
            goto L82
        L25:
            int r13 = r8.length
            r1 = r14
        L27:
            if (r1 >= r13) goto L7e
            r2 = r8[r1]
            boolean r3 = r2.e(r6)     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6e
            if (r3 == 0) goto L3c
            r7.f66478b = r2     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6e
            cn.a.g(r0)
            r6.resetPeekPosition()
            goto L7e
        L3a:
            r8 = move-exception
            goto L5a
        L3c:
            java.util.List r2 = r2.d()     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6e
            r10.j(r2)     // Catch: java.lang.Throwable -> L3a java.io.EOFException -> L6e
            ao.p r2 = r7.f66478b
            if (r2 != 0) goto L52
            long r2 = r6.getPosition()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L50
            goto L52
        L50:
            r2 = r14
            goto L53
        L52:
            r2 = r0
        L53:
            cn.a.g(r2)
            r6.resetPeekPosition()
            goto L7b
        L5a:
            ao.p r9 = r7.f66478b
            if (r9 != 0) goto L66
            long r9 = r6.getPosition()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L67
        L66:
            r14 = r0
        L67:
            cn.a.g(r14)
            r6.resetPeekPosition()
            throw r8
        L6e:
            ao.p r2 = r7.f66478b
            if (r2 != 0) goto L52
            long r2 = r6.getPosition()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L50
            goto L52
        L7b:
            int r1 = r1 + 1
            goto L27
        L7e:
            ao.p r11 = r7.f66478b
            if (r11 == 0) goto L88
        L82:
            ao.p r8 = r7.f66478b
            r8.b(r15)
            return
        L88:
            io.bidmachine.media3.exoplayer.source.UnrecognizedInputFormatException r11 = new io.bidmachine.media3.exoplayer.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "None of the available extractors ("
            r12.append(r13)
            java.lang.String r13 = ", "
            h7.f r13 = h7.f.g(r13)
            com.google.common.collect.ImmutableList r8 = com.google.common.collect.ImmutableList.v(r8)
            sn.a r14 = new sn.a
            r14.<init>()
            java.util.List r8 = com.google.common.collect.Lists.l(r8, r14)
            java.lang.String r8 = r13.d(r8)
            r12.append(r8)
            java.lang.String r8 = ") could read the stream."
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            java.lang.Object r9 = cn.a.e(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            com.google.common.collect.ImmutableList r10 = r10.k()
            r11.<init>(r8, r9, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: sn.b.d(zm.h, android.net.Uri, java.util.Map, long, long, ao.r):void");
    }

    @Override // io.bidmachine.media3.exoplayer.source.w
    public void release() {
        ao.p pVar = this.f66478b;
        if (pVar != null) {
            pVar.release();
            this.f66478b = null;
        }
        this.f66479c = null;
    }

    @Override // io.bidmachine.media3.exoplayer.source.w
    public void seek(long j10, long j11) {
        ((ao.p) cn.a.e(this.f66478b)).seek(j10, j11);
    }
}
