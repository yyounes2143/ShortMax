package ao;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import io.bidmachine.media3.common.a;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: FlacStreamMetadata.java */
/* loaded from: classes8.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public final int f1951a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1952b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1953c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1954d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1955e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1956f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1957g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1958h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1959i;

    /* renamed from: j  reason: collision with root package name */
    public final long f1960j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final a f1961k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final zm.t f1962l;

    /* compiled from: FlacStreamMetadata.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f1963a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f1964b;

        public a(long[] jArr, long[] jArr2) {
            this.f1963a = jArr;
            this.f1964b = jArr2;
        }
    }

    public y(byte[] bArr, int i10) {
        cn.a0 a0Var = new cn.a0(bArr);
        a0Var.p(i10 * 8);
        this.f1951a = a0Var.h(16);
        this.f1952b = a0Var.h(16);
        this.f1953c = a0Var.h(24);
        this.f1954d = a0Var.h(24);
        int h10 = a0Var.h(20);
        this.f1955e = h10;
        this.f1956f = j(h10);
        this.f1957g = a0Var.h(3) + 1;
        int h11 = a0Var.h(5) + 1;
        this.f1958h = h11;
        this.f1959i = e(h11);
        this.f1960j = a0Var.j(36);
        this.f1961k = null;
        this.f1962l = null;
    }

    private static int e(int i10) {
        if (i10 != 8) {
            if (i10 != 12) {
                if (i10 != 16) {
                    if (i10 != 20) {
                        if (i10 != 24) {
                            if (i10 != 32) {
                                return -1;
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int j(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM /* 32000 */:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public y a(List<no.a> list) {
        return new y(this.f1951a, this.f1952b, this.f1953c, this.f1954d, this.f1955e, this.f1957g, this.f1958h, this.f1960j, this.f1961k, h(new zm.t(list)));
    }

    public y b(@Nullable a aVar) {
        return new y(this.f1951a, this.f1952b, this.f1953c, this.f1954d, this.f1955e, this.f1957g, this.f1958h, this.f1960j, aVar, this.f1962l);
    }

    public y c(List<String> list) {
        return new y(this.f1951a, this.f1952b, this.f1953c, this.f1954d, this.f1955e, this.f1957g, this.f1958h, this.f1960j, this.f1961k, h(r0.d(list)));
    }

    public long d() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f1954d;
        if (i10 > 0) {
            j11 = (i10 + this.f1953c) / 2;
            j12 = 1;
        } else {
            int i11 = this.f1951a;
            if (i11 == this.f1952b && i11 > 0) {
                j10 = i11;
            } else {
                j10 = 4096;
            }
            j11 = ((j10 * this.f1957g) * this.f1958h) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long f() {
        long j10 = this.f1960j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.f1955e;
    }

    public io.bidmachine.media3.common.a g(byte[] bArr, @Nullable zm.t tVar) {
        bArr[4] = ByteCompanionObject.MIN_VALUE;
        int i10 = this.f1954d;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new a.b().u0(MimeTypes.AUDIO_FLAC).k0(i10).R(this.f1957g).v0(this.f1955e).o0(cn.m0.i0(this.f1958h)).g0(Collections.singletonList(bArr)).n0(h(tVar)).N();
    }

    @Nullable
    public zm.t h(@Nullable zm.t tVar) {
        zm.t tVar2 = this.f1962l;
        if (tVar2 != null) {
            return tVar2.b(tVar);
        }
        return tVar;
    }

    public long i(long j10) {
        return cn.m0.q((j10 * this.f1955e) / 1000000, 0L, this.f1960j - 1);
    }

    private y(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, @Nullable a aVar, @Nullable zm.t tVar) {
        this.f1951a = i10;
        this.f1952b = i11;
        this.f1953c = i12;
        this.f1954d = i13;
        this.f1955e = i14;
        this.f1956f = j(i14);
        this.f1957g = i15;
        this.f1958h = i16;
        this.f1959i = e(i16);
        this.f1960j = j10;
        this.f1961k = aVar;
        this.f1962l = tVar;
    }
}
