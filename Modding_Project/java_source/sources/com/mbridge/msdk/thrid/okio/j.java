package com.mbridge.msdk.thrid.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* compiled from: GzipSource.java */
/* loaded from: classes6.dex */
public final class j implements s {

    /* renamed from: b  reason: collision with root package name */
    private final e f30143b;

    /* renamed from: c  reason: collision with root package name */
    private final Inflater f30144c;

    /* renamed from: d  reason: collision with root package name */
    private final k f30145d;

    /* renamed from: a  reason: collision with root package name */
    private int f30142a = 0;

    /* renamed from: e  reason: collision with root package name */
    private final CRC32 f30146e = new CRC32();

    public j(s sVar) {
        if (sVar != null) {
            Inflater inflater = new Inflater(true);
            this.f30144c = inflater;
            e a10 = l.a(sVar);
            this.f30143b = a10;
            this.f30145d = new k(a10, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void a(c cVar, long j10, long j11) {
        int i10;
        o oVar = cVar.f30131a;
        while (true) {
            long j12 = oVar.f30166c - oVar.f30165b;
            if (j10 < j12) {
                break;
            }
            j10 -= j12;
            oVar = oVar.f30169f;
        }
        while (j11 > 0) {
            int min = (int) Math.min(oVar.f30166c - i10, j11);
            this.f30146e.update(oVar.f30164a, (int) (oVar.f30165b + j10), min);
            j11 -= min;
            oVar = oVar.f30169f;
            j10 = 0;
        }
    }

    private void d() throws IOException {
        boolean z10;
        this.f30143b.e(10L);
        byte f10 = this.f30143b.a().f(3L);
        if (((f10 >> 1) & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            a(this.f30143b.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f30143b.readShort());
        this.f30143b.skip(8L);
        if (((f10 >> 2) & 1) == 1) {
            this.f30143b.e(2L);
            if (z10) {
                a(this.f30143b.a(), 0L, 2L);
            }
            long g10 = this.f30143b.a().g();
            this.f30143b.e(g10);
            if (z10) {
                a(this.f30143b.a(), 0L, g10);
            }
            this.f30143b.skip(g10);
        }
        if (((f10 >> 3) & 1) == 1) {
            long a10 = this.f30143b.a((byte) 0);
            if (a10 != -1) {
                if (z10) {
                    a(this.f30143b.a(), 0L, a10 + 1);
                }
                this.f30143b.skip(a10 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((f10 >> 4) & 1) == 1) {
            long a11 = this.f30143b.a((byte) 0);
            if (a11 != -1) {
                if (z10) {
                    a(this.f30143b.a(), 0L, a11 + 1);
                }
                this.f30143b.skip(a11 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z10) {
            a("FHCRC", this.f30143b.g(), (short) this.f30146e.getValue());
            this.f30146e.reset();
        }
    }

    private void h() throws IOException {
        a("CRC", this.f30143b.e(), (int) this.f30146e.getValue());
        a("ISIZE", this.f30143b.e(), (int) this.f30144c.getBytesWritten());
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j10) throws IOException {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        } else if (i10 == 0) {
            return 0L;
        } else {
            if (this.f30142a == 0) {
                d();
                this.f30142a = 1;
            }
            if (this.f30142a == 1) {
                long j11 = cVar.f30132b;
                long b10 = this.f30145d.b(cVar, j10);
                if (b10 != -1) {
                    a(cVar, j11, b10);
                    return b10;
                }
                this.f30142a = 2;
            }
            if (this.f30142a == 2) {
                h();
                this.f30142a = 3;
                if (!this.f30143b.f()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30145d.close();
    }

    private void a(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f30143b.b();
    }
}
