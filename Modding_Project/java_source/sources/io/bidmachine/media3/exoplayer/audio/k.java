package io.bidmachine.media3.exoplayer.audio;

import cn.m0;
import com.google.common.primitives.Ints;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.exoplayer.audio.DefaultAudioSink;
/* compiled from: DefaultAudioTrackBufferSizeProvider.java */
/* loaded from: classes8.dex */
public class k implements DefaultAudioSink.e {

    /* renamed from: b  reason: collision with root package name */
    protected final int f55574b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f55575c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f55576d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f55577e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f55578f;

    /* renamed from: g  reason: collision with root package name */
    public final int f55579g;

    /* renamed from: h  reason: collision with root package name */
    public final int f55580h;

    /* compiled from: DefaultAudioTrackBufferSizeProvider.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f55581a = 250000;

        /* renamed from: b  reason: collision with root package name */
        private int f55582b = 750000;

        /* renamed from: c  reason: collision with root package name */
        private int f55583c = 4;

        /* renamed from: d  reason: collision with root package name */
        private int f55584d = 250000;

        /* renamed from: e  reason: collision with root package name */
        private int f55585e = 50000000;

        /* renamed from: f  reason: collision with root package name */
        private int f55586f = 2;

        /* renamed from: g  reason: collision with root package name */
        private int f55587g = 4;

        public k h() {
            return new k(this);
        }
    }

    protected k(a aVar) {
        this.f55574b = aVar.f55581a;
        this.f55575c = aVar.f55582b;
        this.f55576d = aVar.f55583c;
        this.f55577e = aVar.f55584d;
        this.f55578f = aVar.f55585e;
        this.f55579g = aVar.f55586f;
        this.f55580h = aVar.f55587g;
    }

    protected static int b(int i10, int i11, int i12) {
        return Ints.d(((i10 * i11) * i12) / 1000000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int d(int i10) {
        if (i10 != 20) {
            if (i10 != 30) {
                switch (i10) {
                    case 5:
                        return DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START;
                    case 6:
                        return 768000;
                    case 7:
                        return 192000;
                    case 8:
                        return 2250000;
                    case 9:
                        return TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN;
                    case 10:
                        return 100000;
                    case 11:
                        return 16000;
                    case 12:
                        return 7000;
                    default:
                        switch (i10) {
                            case 14:
                                return 3062500;
                            case 15:
                                return 8000;
                            case 16:
                                return 256000;
                            case 17:
                                return 336000;
                            case 18:
                                return 768000;
                            default:
                                throw new IllegalArgumentException();
                        }
                }
            }
            return 2250000;
        }
        return 63750;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.e
    public int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10) {
        return (((Math.max(i10, (int) (c(i10, i11, i12, i13, i14, i15) * d10)) + i13) - 1) / i13) * i13;
    }

    protected int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    return f(i11, i15);
                }
                throw new IllegalArgumentException();
            }
            return e(i11);
        }
        return g(i10, i14, i13);
    }

    protected int e(int i10) {
        return Ints.d((this.f55578f * d(i10)) / 1000000);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int f(int r4, int r5) {
        /*
            r3 = this;
            int r0 = r3.f55577e
            r1 = 5
            r2 = 8
            if (r4 != r1) goto Lb
            int r1 = r3.f55579g
        L9:
            int r0 = r0 * r1
            goto L10
        Lb:
            if (r4 != r2) goto L10
            int r1 = r3.f55580h
            goto L9
        L10:
            r1 = -1
            if (r5 == r1) goto L1a
            java.math.RoundingMode r4 = java.math.RoundingMode.CEILING
            int r4 = j7.d.b(r5, r2, r4)
            goto L1e
        L1a:
            int r4 = d(r4)
        L1e:
            long r0 = (long) r0
            long r4 = (long) r4
            long r0 = r0 * r4
            r4 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r4
            int r4 = com.google.common.primitives.Ints.d(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.audio.k.f(int, int):int");
    }

    protected int g(int i10, int i11, int i12) {
        return m0.p(i10 * this.f55576d, b(this.f55574b, i11, i12), b(this.f55575c, i11, i12));
    }
}
