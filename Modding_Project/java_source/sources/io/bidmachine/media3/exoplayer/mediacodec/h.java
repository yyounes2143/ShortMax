package io.bidmachine.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: MediaCodecAdapter.java */
/* loaded from: classes8.dex */
public interface h {

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final j f56568a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f56569b;

        /* renamed from: c  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f56570c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Surface f56571d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f56572e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final pn.c f56573f;

        private a(j jVar, MediaFormat mediaFormat, io.bidmachine.media3.common.a aVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, @Nullable pn.c cVar) {
            this.f56568a = jVar;
            this.f56569b = mediaFormat;
            this.f56570c = aVar;
            this.f56571d = surface;
            this.f56572e = mediaCrypto;
            this.f56573f = cVar;
        }

        public static a a(j jVar, MediaFormat mediaFormat, io.bidmachine.media3.common.a aVar, @Nullable MediaCrypto mediaCrypto, @Nullable pn.c cVar) {
            return new a(jVar, mediaFormat, aVar, null, mediaCrypto, cVar);
        }

        public static a b(j jVar, MediaFormat mediaFormat, io.bidmachine.media3.common.a aVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(jVar, mediaFormat, aVar, surface, mediaCrypto, null);
        }
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes8.dex */
    public interface b {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        public static final b f56574a = new g();

        static b a(Context context) {
            return new g(context);
        }

        h b(a aVar) throws IOException;
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes8.dex */
    public interface d {
        void a(h hVar, long j10, long j11);
    }

    void a(Bundle bundle);

    void b(int i10, int i11, int i12, long j10, int i13);

    void c(int i10, int i11, fn.c cVar, long j10, int i12);

    boolean d();

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

    default boolean m(c cVar) {
        return false;
    }

    @RequiresApi(35)
    void n();

    @RequiresApi(23)
    void o(d dVar, Handler handler);

    void release();

    void setVideoScalingMode(int i10);

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes8.dex */
    public interface c {
        default void a() {
        }

        default void b() {
        }
    }
}
