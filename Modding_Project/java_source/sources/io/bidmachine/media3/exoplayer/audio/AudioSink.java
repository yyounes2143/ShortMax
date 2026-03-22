package io.bidmachine.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import hn.b2;
import java.nio.ByteBuffer;
import zm.v;
/* loaded from: classes8.dex */
public interface AudioSink {

    /* loaded from: classes8.dex */
    public static final class UnexpectedDiscontinuityException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final long f55401a;

        /* renamed from: b  reason: collision with root package name */
        public final long f55402b;

        public UnexpectedDiscontinuityException(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
            this.f55401a = j10;
            this.f55402b = j11;
        }
    }

    /* loaded from: classes8.dex */
    public static final class WriteException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f55403a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f55404b;

        /* renamed from: c  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f55405c;

        public WriteException(int i10, io.bidmachine.media3.common.a aVar, boolean z10) {
            super("AudioTrack write failed: " + i10);
            this.f55404b = z10;
            this.f55403a = i10;
            this.f55405c = aVar;
        }
    }

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f55406a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55407b;

        /* renamed from: c  reason: collision with root package name */
        public final int f55408c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f55409d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f55410e;

        /* renamed from: f  reason: collision with root package name */
        public final int f55411f;

        public a(int i10, int i11, int i12, boolean z10, boolean z11, int i13) {
            this.f55406a = i10;
            this.f55407b = i11;
            this.f55408c = i12;
            this.f55409d = z10;
            this.f55410e = z11;
            this.f55411f = i13;
        }
    }

    boolean a(io.bidmachine.media3.common.a aVar);

    void b(v vVar);

    void c();

    boolean d(ByteBuffer byteBuffer, long j10, int i10) throws InitializationException, WriteException;

    void disableTunneling();

    void f(boolean z10);

    void flush();

    long g();

    long getCurrentPositionUs(boolean z10);

    v getPlaybackParameters();

    void handleDiscontinuity();

    boolean hasPendingData();

    void i(b bVar);

    boolean isEnded();

    default d j(io.bidmachine.media3.common.a aVar) {
        return d.f55521d;
    }

    void k(zm.d dVar);

    int m(io.bidmachine.media3.common.a aVar);

    void n(zm.c cVar);

    void o(io.bidmachine.media3.common.a aVar, int i10, @Nullable int[] iArr) throws ConfigurationException;

    void pause();

    void play();

    void playToEndOfStream() throws WriteException;

    void reset();

    void setAudioSessionId(int i10);

    void setVolume(float f10);

    /* loaded from: classes8.dex */
    public static final class ConfigurationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f55397a;

        public ConfigurationException(Throwable th2, io.bidmachine.media3.common.a aVar) {
            super(th2);
            this.f55397a = aVar;
        }

        public ConfigurationException(String str, io.bidmachine.media3.common.a aVar) {
            super(str);
            this.f55397a = aVar;
        }
    }

    /* loaded from: classes8.dex */
    public static final class InitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f55398a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f55399b;

        /* renamed from: c  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f55400c;

        public InitializationException(String str, int i10, io.bidmachine.media3.common.a aVar, boolean z10, @Nullable Throwable th2) {
            super(str, th2);
            this.f55398a = i10;
            this.f55399b = z10;
            this.f55400c = aVar;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r8, int r9, int r10, int r11, io.bidmachine.media3.common.a r12, boolean r13, @androidx.annotation.Nullable java.lang.Exception r14) {
            /*
                r7 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "AudioTrack init failed "
                r0.append(r1)
                r0.append(r8)
                java.lang.String r1 = " "
                r0.append(r1)
                java.lang.String r2 = "Config("
                r0.append(r2)
                r0.append(r9)
                java.lang.String r9 = ", "
                r0.append(r9)
                r0.append(r10)
                r0.append(r9)
                r0.append(r11)
                java.lang.String r9 = ")"
                r0.append(r9)
                r0.append(r1)
                r0.append(r12)
                if (r13 == 0) goto L38
                java.lang.String r9 = " (recoverable)"
                goto L3a
            L38:
                java.lang.String r9 = ""
            L3a:
                r0.append(r9)
                java.lang.String r2 = r0.toString()
                r1 = r7
                r3 = r8
                r4 = r12
                r5 = r13
                r6 = r14
                r1.<init>(r2, r3, r4, r5, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.audio.AudioSink.InitializationException.<init>(int, int, int, int, io.bidmachine.media3.common.a, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes8.dex */
    public interface b {
        void a(boolean z10);

        void onPositionDiscontinuity();

        void onUnderrun(int i10, long j10, long j11);

        default void d() {
        }

        default void e() {
        }

        default void f() {
        }

        default void g() {
        }

        default void b(Exception exc) {
        }

        default void c(long j10) {
        }

        default void l(a aVar) {
        }

        default void n(a aVar) {
        }
    }

    default void release() {
    }

    default void e(long j10) {
    }

    @RequiresApi(29)
    default void h(int i10) {
    }

    default void l(@Nullable b2 b2Var) {
    }

    default void p(cn.h hVar) {
    }

    @RequiresApi(23)
    default void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
    }

    @RequiresApi(29)
    default void q(int i10, int i11) {
    }
}
