package mn;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import ao.i0;
import ao.j0;
import ao.o0;
import ao.p;
import ao.q;
import cn.b0;
import cn.h0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import yo.r;
import yo.s;
/* compiled from: WebvttExtractor.java */
/* loaded from: classes8.dex */
public final class j implements p {

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f62552i = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f62553j = Pattern.compile("MPEGTS:(-?\\d+)");
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f62554a;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f62555b;

    /* renamed from: d  reason: collision with root package name */
    private final r.a f62557d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f62558e;

    /* renamed from: f  reason: collision with root package name */
    private ao.r f62559f;

    /* renamed from: h  reason: collision with root package name */
    private int f62561h;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f62556c = new b0();

    /* renamed from: g  reason: collision with root package name */
    private byte[] f62560g = new byte[1024];

    public j(@Nullable String str, h0 h0Var, r.a aVar, boolean z10) {
        this.f62554a = str;
        this.f62555b = h0Var;
        this.f62557d = aVar;
        this.f62558e = z10;
    }

    private o0 a(long j10) {
        o0 track = this.f62559f.track(0, 3);
        track.g(new a.b().u0(MimeTypes.TEXT_VTT).j0(this.f62554a).y0(j10).N());
        this.f62559f.endTracks();
        return track;
    }

    private void g() throws ParserException {
        b0 b0Var = new b0(this.f62560g);
        hp.h.e(b0Var);
        long j10 = 0;
        long j11 = 0;
        for (String s10 = b0Var.s(); !TextUtils.isEmpty(s10); s10 = b0Var.s()) {
            if (s10.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f62552i.matcher(s10);
                if (matcher.find()) {
                    Matcher matcher2 = f62553j.matcher(s10);
                    if (matcher2.find()) {
                        j11 = hp.h.d((String) cn.a.e(matcher.group(1)));
                        j10 = h0.h(Long.parseLong((String) cn.a.e(matcher2.group(1))));
                    } else {
                        throw ParserException.b("X-TIMESTAMP-MAP doesn't contain media timestamp: " + s10, null);
                    }
                } else {
                    throw ParserException.b("X-TIMESTAMP-MAP doesn't contain local timestamp: " + s10, null);
                }
            }
        }
        Matcher a10 = hp.h.a(b0Var);
        if (a10 == null) {
            a(0L);
            return;
        }
        long d10 = hp.h.d((String) cn.a.e(a10.group(1)));
        long b10 = this.f62555b.b(h0.l((j10 + d10) - j11));
        o0 a11 = a(b10 - d10);
        this.f62556c.U(this.f62560g, this.f62561h);
        a11.a(this.f62556c, this.f62561h);
        a11.c(b10, 1, this.f62561h, 0, null);
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        if (this.f62558e) {
            rVar = new s(rVar, this.f62557d);
        }
        this.f62559f = rVar;
        rVar.d(new j0.b(-9223372036854775807L));
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        qVar.peekFully(this.f62560g, 0, 6, false);
        this.f62556c.U(this.f62560g, 6);
        if (hp.h.b(this.f62556c)) {
            return true;
        }
        qVar.peekFully(this.f62560g, 6, 3, false);
        this.f62556c.U(this.f62560g, 9);
        return hp.h.b(this.f62556c);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        int length;
        cn.a.e(this.f62559f);
        int length2 = (int) qVar.getLength();
        int i10 = this.f62561h;
        byte[] bArr = this.f62560g;
        if (i10 == bArr.length) {
            if (length2 != -1) {
                length = length2;
            } else {
                length = bArr.length;
            }
            this.f62560g = Arrays.copyOf(bArr, (length * 3) / 2);
        }
        byte[] bArr2 = this.f62560g;
        int i11 = this.f62561h;
        int read = qVar.read(bArr2, i11, bArr2.length - i11);
        if (read != -1) {
            int i12 = this.f62561h + read;
            this.f62561h = i12;
            if (length2 == -1 || i12 != length2) {
                return 0;
            }
        }
        g();
        return -1;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        throw new IllegalStateException();
    }

    @Override // ao.p
    public void release() {
    }
}
