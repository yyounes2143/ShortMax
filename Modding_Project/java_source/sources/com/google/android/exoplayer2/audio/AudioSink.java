package com.google.android.exoplayer2.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.v0;
import java.nio.ByteBuffer;
import p5.t3;
import q5.t;
/* loaded from: classes4.dex */
public interface AudioSink {

    /* loaded from: classes4.dex */
    public static final class InitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f17216a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17217b;

        /* renamed from: c  reason: collision with root package name */
        public final v0 f17218c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r3, int r4, int r5, int r6, com.google.android.exoplayer2.v0 r7, boolean r8, @androidx.annotation.Nullable java.lang.Exception r9) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "AudioTrack init failed "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " "
                r0.append(r1)
                java.lang.String r1 = "Config("
                r0.append(r1)
                r0.append(r4)
                java.lang.String r4 = ", "
                r0.append(r4)
                r0.append(r5)
                r0.append(r4)
                r0.append(r6)
                java.lang.String r4 = ")"
                r0.append(r4)
                if (r8 == 0) goto L32
                java.lang.String r4 = " (recoverable)"
                goto L34
            L32:
                java.lang.String r4 = ""
            L34:
                r0.append(r4)
                java.lang.String r4 = r0.toString()
                r2.<init>(r4, r9)
                r2.f17216a = r3
                r2.f17217b = r8
                r2.f17218c = r7
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioSink.InitializationException.<init>(int, int, int, int, com.google.android.exoplayer2.v0, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes4.dex */
    public static final class UnexpectedDiscontinuityException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final long f17219a;

        /* renamed from: b  reason: collision with root package name */
        public final long f17220b;

        public UnexpectedDiscontinuityException(long j10, long j11) {
            super("Unexpected audio track timestamp discontinuity: expected " + j11 + ", got " + j10);
            this.f17219a = j10;
            this.f17220b = j11;
        }
    }

    /* loaded from: classes4.dex */
    public static final class WriteException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f17221a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17222b;

        /* renamed from: c  reason: collision with root package name */
        public final v0 f17223c;

        public WriteException(int i10, v0 v0Var, boolean z10) {
            super("AudioTrack write failed: " + i10);
            this.f17222b = z10;
            this.f17221a = i10;
            this.f17223c = v0Var;
        }
    }

    boolean a(v0 v0Var);

    void b(k1 k1Var);

    void c();

    boolean d(ByteBuffer byteBuffer, long j10, int i10) throws InitializationException, WriteException;

    void disableTunneling();

    void f(boolean z10);

    void flush();

    void g(com.google.android.exoplayer2.audio.a aVar);

    long getCurrentPositionUs(boolean z10);

    k1 getPlaybackParameters();

    void h();

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void j(t tVar);

    void k(a aVar);

    int l(v0 v0Var);

    void m(v0 v0Var, int i10, @Nullable int[] iArr) throws ConfigurationException;

    void pause();

    void play();

    void playToEndOfStream() throws WriteException;

    void reset();

    void setAudioSessionId(int i10);

    void setVolume(float f10);

    /* loaded from: classes4.dex */
    public static final class ConfigurationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final v0 f17215a;

        public ConfigurationException(Throwable th2, v0 v0Var) {
            super(th2);
            this.f17215a = v0Var;
        }

        public ConfigurationException(String str, v0 v0Var) {
            super(str);
            this.f17215a = v0Var;
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        void a(boolean z10);

        void onPositionDiscontinuity();

        void onUnderrun(int i10, long j10, long j11);

        default void d() {
        }

        default void e() {
        }

        default void b(Exception exc) {
        }

        default void c(long j10) {
        }
    }

    default void e(long j10) {
    }

    default void i(@Nullable t3 t3Var) {
    }

    @RequiresApi(23)
    default void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
    }
}
