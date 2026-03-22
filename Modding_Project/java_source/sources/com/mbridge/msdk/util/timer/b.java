package com.mbridge.msdk.util.timer;

import android.os.CountDownTimer;
/* compiled from: MBCountDownTimer.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.util.timer.a f30465a;

    /* renamed from: b  reason: collision with root package name */
    private long f30466b;

    /* renamed from: c  reason: collision with root package name */
    private a f30467c;

    /* renamed from: d  reason: collision with root package name */
    private long f30468d = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MBCountDownTimer.java */
    /* loaded from: classes6.dex */
    public static class a extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.util.timer.a f30469a;

        public a(long j10, long j11) {
            super(j10, j11);
        }

        void a(com.mbridge.msdk.util.timer.a aVar) {
            this.f30469a = aVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            com.mbridge.msdk.util.timer.a aVar = this.f30469a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            com.mbridge.msdk.util.timer.a aVar = this.f30469a;
            if (aVar != null) {
                aVar.onTick(j10);
            }
        }
    }

    public void a() {
        a aVar = this.f30467c;
        if (aVar != null) {
            aVar.cancel();
            this.f30467c = null;
        }
    }

    public b b(long j10) {
        this.f30468d = j10;
        return this;
    }

    public void c() {
        if (this.f30467c == null) {
            b();
        }
        this.f30467c.start();
    }

    public void b() {
        a aVar = this.f30467c;
        if (aVar != null) {
            aVar.cancel();
            this.f30467c = null;
        }
        if (this.f30466b <= 0) {
            this.f30466b = this.f30468d + 1000;
        }
        a aVar2 = new a(this.f30468d, this.f30466b);
        this.f30467c = aVar2;
        aVar2.a(this.f30465a);
    }

    public b a(long j10) {
        if (j10 < 0) {
            j10 = 1000;
        }
        this.f30466b = j10;
        return this;
    }

    public b a(com.mbridge.msdk.util.timer.a aVar) {
        this.f30465a = aVar;
        return this;
    }
}
