package com.google.android.exoplayer2.audio;

import b7.s0;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.common.primitives.Ints;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: DefaultAudioTrackBufferSizeProvider.java */
/* loaded from: classes4.dex */
public class g implements DefaultAudioSink.e {

    /* renamed from: b  reason: collision with root package name */
    protected final int f17354b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f17355c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f17356d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f17357e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f17358f;

    /* renamed from: g  reason: collision with root package name */
    public final int f17359g;

    /* compiled from: DefaultAudioTrackBufferSizeProvider.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f17360a = 250000;

        /* renamed from: b  reason: collision with root package name */
        private int f17361b = 750000;

        /* renamed from: c  reason: collision with root package name */
        private int f17362c = 4;

        /* renamed from: d  reason: collision with root package name */
        private int f17363d = 250000;

        /* renamed from: e  reason: collision with root package name */
        private int f17364e = 50000000;

        /* renamed from: f  reason: collision with root package name */
        private int f17365f = 2;

        public g g() {
            return new g(this);
        }
    }

    protected g(a aVar) {
        this.f17354b = aVar.f17360a;
        this.f17355c = aVar.f17361b;
        this.f17356d = aVar.f17362c;
        this.f17357e = aVar.f17363d;
        this.f17358f = aVar.f17364e;
        this.f17359g = aVar.f17365f;
    }

    protected static int b(int i10, int i11, int i12) {
        return Ints.d(((i10 * i11) * i12) / 1000000);
    }

    protected static int d(int i10) {
        switch (i10) {
            case 5:
                return DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START;
            case 6:
            case 18:
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
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.e
    public int a(int i10, int i11, int i12, int i13, int i14, double d10) {
        return (((Math.max(i10, (int) (c(i10, i11, i12, i13, i14) * d10)) + i13) - 1) / i13) * i13;
    }

    protected int c(int i10, int i11, int i12, int i13, int i14) {
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    return f(i11);
                }
                throw new IllegalArgumentException();
            }
            return e(i11);
        }
        return g(i10, i14, i13);
    }

    protected int e(int i10) {
        return Ints.d((this.f17358f * d(i10)) / 1000000);
    }

    protected int f(int i10) {
        int i11 = this.f17357e;
        if (i10 == 5) {
            i11 *= this.f17359g;
        }
        return Ints.d((i11 * d(i10)) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return s0.p(i10 * this.f17356d, b(this.f17354b, i11, i12), b(this.f17355c, i11, i12));
    }
}
