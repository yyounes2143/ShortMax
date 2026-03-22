package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
/* compiled from: AudioTimestampPoller.java */
/* loaded from: classes4.dex */
final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f17308a;

    /* renamed from: b  reason: collision with root package name */
    private int f17309b;

    /* renamed from: c  reason: collision with root package name */
    private long f17310c;

    /* renamed from: d  reason: collision with root package name */
    private long f17311d;

    /* renamed from: e  reason: collision with root package name */
    private long f17312e;

    /* renamed from: f  reason: collision with root package name */
    private long f17313f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioTimestampPoller.java */
    @RequiresApi(19)
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f17314a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f17315b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f17316c;

        /* renamed from: d  reason: collision with root package name */
        private long f17317d;

        /* renamed from: e  reason: collision with root package name */
        private long f17318e;

        public a(AudioTrack audioTrack) {
            this.f17314a = audioTrack;
        }

        public long a() {
            return this.f17318e;
        }

        public long b() {
            return this.f17315b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f17314a.getTimestamp(this.f17315b);
            if (timestamp) {
                long j10 = this.f17315b.framePosition;
                if (this.f17317d > j10) {
                    this.f17316c++;
                }
                this.f17317d = j10;
                this.f17318e = j10 + (this.f17316c << 32);
            }
            return timestamp;
        }
    }

    public c(AudioTrack audioTrack) {
        if (s0.f2506a >= 19) {
            this.f17308a = new a(audioTrack);
            g();
            return;
        }
        this.f17308a = null;
        h(3);
    }

    private void h(int i10) {
        this.f17309b = i10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 == 4) {
                        this.f17311d = 500000L;
                        return;
                    }
                    throw new IllegalStateException();
                }
                this.f17311d = 10000000L;
                return;
            }
            this.f17311d = 10000L;
            return;
        }
        this.f17312e = 0L;
        this.f17313f = -1L;
        this.f17310c = System.nanoTime() / 1000;
        this.f17311d = 10000L;
    }

    public void a() {
        if (this.f17309b == 4) {
            g();
        }
    }

    @TargetApi(19)
    public long b() {
        a aVar = this.f17308a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    @TargetApi(19)
    public long c() {
        a aVar = this.f17308a;
        if (aVar != null) {
            return aVar.b();
        }
        return -9223372036854775807L;
    }

    public boolean d() {
        if (this.f17309b == 2) {
            return true;
        }
        return false;
    }

    @TargetApi(19)
    public boolean e(long j10) {
        a aVar = this.f17308a;
        if (aVar == null || j10 - this.f17312e < this.f17311d) {
            return false;
        }
        this.f17312e = j10;
        boolean c10 = aVar.c();
        int i10 = this.f17309b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (c10) {
                        g();
                    }
                } else if (!c10) {
                    g();
                }
            } else if (c10) {
                if (this.f17308a.a() > this.f17313f) {
                    h(2);
                }
            } else {
                g();
            }
        } else if (c10) {
            if (this.f17308a.b() < this.f17310c) {
                return false;
            }
            this.f17313f = this.f17308a.a();
            h(1);
        } else if (j10 - this.f17310c > 500000) {
            h(3);
        }
        return c10;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.f17308a != null) {
            h(0);
        }
    }
}
