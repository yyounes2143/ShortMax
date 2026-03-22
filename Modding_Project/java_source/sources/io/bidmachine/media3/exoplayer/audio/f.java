package io.bidmachine.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
/* compiled from: AudioTimestampPoller.java */
/* loaded from: classes8.dex */
final class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f55530a;

    /* renamed from: b  reason: collision with root package name */
    private int f55531b;

    /* renamed from: c  reason: collision with root package name */
    private long f55532c;

    /* renamed from: d  reason: collision with root package name */
    private long f55533d;

    /* renamed from: e  reason: collision with root package name */
    private long f55534e;

    /* renamed from: f  reason: collision with root package name */
    private long f55535f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioTimestampPoller.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f55536a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f55537b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f55538c;

        /* renamed from: d  reason: collision with root package name */
        private long f55539d;

        /* renamed from: e  reason: collision with root package name */
        private long f55540e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f55541f;

        /* renamed from: g  reason: collision with root package name */
        private long f55542g;

        public a(AudioTrack audioTrack) {
            this.f55536a = audioTrack;
        }

        public void a() {
            this.f55541f = true;
        }

        public long b() {
            return this.f55540e;
        }

        public long c() {
            return this.f55537b.nanoTime / 1000;
        }

        public boolean d() {
            boolean timestamp = this.f55536a.getTimestamp(this.f55537b);
            if (timestamp) {
                long j10 = this.f55537b.framePosition;
                long j11 = this.f55539d;
                if (j11 > j10) {
                    if (this.f55541f) {
                        this.f55542g += j11;
                        this.f55541f = false;
                    } else {
                        this.f55538c++;
                    }
                }
                this.f55539d = j10;
                this.f55540e = j10 + this.f55542g + (this.f55538c << 32);
            }
            return timestamp;
        }
    }

    public f(AudioTrack audioTrack) {
        this.f55530a = new a(audioTrack);
        h();
    }

    private void i(int i10) {
        this.f55531b = i10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 == 4) {
                        this.f55533d = 500000L;
                        return;
                    }
                    throw new IllegalStateException();
                }
                this.f55533d = 10000000L;
                return;
            }
            this.f55533d = 10000L;
            return;
        }
        this.f55534e = 0L;
        this.f55535f = -1L;
        this.f55532c = System.nanoTime() / 1000;
        this.f55533d = 10000L;
    }

    public void a() {
        if (this.f55531b == 4) {
            h();
        }
    }

    public void b() {
        a aVar = this.f55530a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public long c() {
        a aVar = this.f55530a;
        if (aVar != null) {
            return aVar.b();
        }
        return -1L;
    }

    public long d() {
        a aVar = this.f55530a;
        if (aVar != null) {
            return aVar.c();
        }
        return -9223372036854775807L;
    }

    public boolean e() {
        if (this.f55531b == 2) {
            return true;
        }
        return false;
    }

    public boolean f(long j10) {
        a aVar = this.f55530a;
        if (aVar == null || j10 - this.f55534e < this.f55533d) {
            return false;
        }
        this.f55534e = j10;
        boolean d10 = aVar.d();
        int i10 = this.f55531b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (d10) {
                        h();
                    }
                } else if (!d10) {
                    h();
                }
            } else if (d10) {
                if (this.f55530a.b() > this.f55535f) {
                    i(2);
                }
            } else {
                h();
            }
        } else if (d10) {
            if (this.f55530a.c() < this.f55532c) {
                return false;
            }
            this.f55535f = this.f55530a.b();
            i(1);
        } else if (j10 - this.f55532c > 500000) {
            i(3);
        }
        return d10;
    }

    public void g() {
        i(4);
    }

    public void h() {
        if (this.f55530a != null) {
            i(0);
        }
    }
}
