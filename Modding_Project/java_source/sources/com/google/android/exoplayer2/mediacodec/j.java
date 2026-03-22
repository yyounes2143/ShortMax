package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: MediaCodecAdapter.java */
/* loaded from: classes4.dex */
public interface j {

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final k f17967a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f17968b;

        /* renamed from: c  reason: collision with root package name */
        public final v0 f17969c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Surface f17970d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f17971e;

        /* renamed from: f  reason: collision with root package name */
        public final int f17972f;

        private a(k kVar, MediaFormat mediaFormat, v0 v0Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
            this.f17967a = kVar;
            this.f17968b = mediaFormat;
            this.f17969c = v0Var;
            this.f17970d = surface;
            this.f17971e = mediaCrypto;
            this.f17972f = i10;
        }

        public static a a(k kVar, MediaFormat mediaFormat, v0 v0Var, @Nullable MediaCrypto mediaCrypto) {
            return new a(kVar, mediaFormat, v0Var, null, mediaCrypto, 0);
        }

        public static a b(k kVar, MediaFormat mediaFormat, v0 v0Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(kVar, mediaFormat, v0Var, surface, mediaCrypto, 0);
        }
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes4.dex */
    public interface b {
        j a(a aVar) throws IOException;
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(j jVar, long j10, long j11);
    }

    @RequiresApi(19)
    void a(Bundle bundle);

    void b(int i10, int i11, int i12, long j10, int i13);

    boolean d();

    @RequiresApi(21)
    void e(int i10, long j10);

    int f(MediaCodec.BufferInfo bufferInfo);

    void flush();

    void g(int i10, boolean z10);

    MediaFormat h();

    @Nullable
    ByteBuffer i(int i10);

    @RequiresApi(23)
    void j(Surface surface);

    int k();

    @Nullable
    ByteBuffer l(int i10);

    void m(int i10, int i11, r5.c cVar, long j10, int i12);

    @RequiresApi(23)
    void n(c cVar, Handler handler);

    void release();

    void setVideoScalingMode(int i10);
}
