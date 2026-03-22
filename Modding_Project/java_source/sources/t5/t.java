package t5;

import androidx.annotation.Nullable;
import b7.f0;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: FlacStreamMetadata.java */
/* loaded from: classes4.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f67181a;

    /* renamed from: b  reason: collision with root package name */
    public final int f67182b;

    /* renamed from: c  reason: collision with root package name */
    public final int f67183c;

    /* renamed from: d  reason: collision with root package name */
    public final int f67184d;

    /* renamed from: e  reason: collision with root package name */
    public final int f67185e;

    /* renamed from: f  reason: collision with root package name */
    public final int f67186f;

    /* renamed from: g  reason: collision with root package name */
    public final int f67187g;

    /* renamed from: h  reason: collision with root package name */
    public final int f67188h;

    /* renamed from: i  reason: collision with root package name */
    public final int f67189i;

    /* renamed from: j  reason: collision with root package name */
    public final long f67190j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final a f67191k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Metadata f67192l;

    /* compiled from: FlacStreamMetadata.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f67193a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f67194b;

        public a(long[] jArr, long[] jArr2) {
            this.f67193a = jArr;
            this.f67194b = jArr2;
        }
    }

    public t(byte[] bArr, int i10) {
        f0 f0Var = new f0(bArr);
        f0Var.p(i10 * 8);
        this.f67181a = f0Var.h(16);
        this.f67182b = f0Var.h(16);
        this.f67183c = f0Var.h(24);
        this.f67184d = f0Var.h(24);
        int h10 = f0Var.h(20);
        this.f67185e = h10;
        this.f67186f = j(h10);
        this.f67187g = f0Var.h(3) + 1;
        int h11 = f0Var.h(5) + 1;
        this.f67188h = h11;
        this.f67189i = e(h11);
        this.f67190j = f0Var.j(36);
        this.f67191k = null;
        this.f67192l = null;
    }

    private static int e(int i10) {
        if (i10 != 8) {
            if (i10 != 12) {
                if (i10 != 16) {
                    if (i10 != 20) {
                        if (i10 != 24) {
                            return -1;
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

    public t a(List<PictureFrame> list) {
        return new t(this.f67181a, this.f67182b, this.f67183c, this.f67184d, this.f67185e, this.f67187g, this.f67188h, this.f67190j, this.f67191k, h(new Metadata(list)));
    }

    public t b(@Nullable a aVar) {
        return new t(this.f67181a, this.f67182b, this.f67183c, this.f67184d, this.f67185e, this.f67187g, this.f67188h, this.f67190j, aVar, this.f67192l);
    }

    public t c(List<String> list) {
        return new t(this.f67181a, this.f67182b, this.f67183c, this.f67184d, this.f67185e, this.f67187g, this.f67188h, this.f67190j, this.f67191k, h(e0.c(list)));
    }

    public long d() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f67184d;
        if (i10 > 0) {
            j11 = (i10 + this.f67183c) / 2;
            j12 = 1;
        } else {
            int i11 = this.f67181a;
            if (i11 == this.f67182b && i11 > 0) {
                j10 = i11;
            } else {
                j10 = 4096;
            }
            j11 = ((j10 * this.f67187g) * this.f67188h) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long f() {
        long j10 = this.f67190j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.f67185e;
    }

    public v0 g(byte[] bArr, @Nullable Metadata metadata) {
        bArr[4] = ByteCompanionObject.MIN_VALUE;
        int i10 = this.f67184d;
        if (i10 <= 0) {
            i10 = -1;
        }
        return new v0.b().e0(MimeTypes.AUDIO_FLAC).W(i10).H(this.f67187g).f0(this.f67185e).T(Collections.singletonList(bArr)).X(h(metadata)).E();
    }

    @Nullable
    public Metadata h(@Nullable Metadata metadata) {
        Metadata metadata2 = this.f67192l;
        if (metadata2 != null) {
            return metadata2.b(metadata);
        }
        return metadata;
    }

    public long i(long j10) {
        return s0.q((j10 * this.f67185e) / 1000000, 0L, this.f67190j - 1);
    }

    private t(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, @Nullable a aVar, @Nullable Metadata metadata) {
        this.f67181a = i10;
        this.f67182b = i11;
        this.f67183c = i12;
        this.f67184d = i13;
        this.f67185e = i14;
        this.f67186f = j(i14);
        this.f67187g = i15;
        this.f67188h = i16;
        this.f67189i = e(i16);
        this.f67190j = j10;
        this.f67191k = aVar;
        this.f67192l = metadata;
    }
}
