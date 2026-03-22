package com.mbridge.msdk.video.dynview.util.time;

import android.os.CountDownTimer;
/* compiled from: MBCountDownTimer.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private long f30815a = 0;

    /* renamed from: b  reason: collision with root package name */
    private long f30816b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.a f30817c;

    /* renamed from: d  reason: collision with root package name */
    private a f30818d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MBCountDownTimer.java */
    /* loaded from: classes6.dex */
    public static class a extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.video.dynview.util.time.a f30819a;

        public a(long j10, long j11) {
            super(j10, j11);
        }

        void a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
            this.f30819a = aVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f30819a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f30819a;
            if (aVar != null) {
                aVar.onTick(j10);
            }
        }
    }

    public b a(long j10) {
        if (j10 < 0) {
            j10 = 1000;
        }
        this.f30816b = j10;
        return this;
    }

    public b b(long j10) {
        this.f30815a = j10;
        return this;
    }

    public void c() {
        if (this.f30818d == null) {
            b();
        }
        this.f30818d.start();
    }

    public b a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f30817c = aVar;
        return this;
    }

    public void b() {
        a aVar = this.f30818d;
        if (aVar != null) {
            aVar.cancel();
            this.f30818d = null;
        }
        if (this.f30816b <= 0) {
            this.f30816b = this.f30815a + 1000;
        }
        a aVar2 = new a(this.f30815a, this.f30816b);
        this.f30818d = aVar2;
        aVar2.a(this.f30817c);
    }

    public void a(long j10, com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f30815a = j10;
        this.f30817c = aVar;
        b();
        a aVar2 = this.f30818d;
        if (aVar2 != null) {
            aVar2.start();
        }
    }

    public void a() {
        a aVar = this.f30818d;
        if (aVar != null) {
            aVar.cancel();
            this.f30818d = null;
        }
    }
}
