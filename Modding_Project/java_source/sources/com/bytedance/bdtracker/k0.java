package com.bytedance.bdtracker;

import android.os.SystemClock;
import com.bytedance.applog.log.IAppLogLogger;
/* loaded from: classes3.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    public final IAppLogLogger f12135a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12136b;

    /* renamed from: c  reason: collision with root package name */
    public long f12137c = -1;

    /* renamed from: d  reason: collision with root package name */
    public long f12138d = 0;

    public k0(IAppLogLogger iAppLogLogger, String str) {
        this.f12135a = iAppLogLogger;
        this.f12136b = str;
    }

    public void a(long j10) {
        if (j10 > 0 && this.f12137c > 0) {
            IAppLogLogger iAppLogLogger = this.f12135a;
            if (iAppLogLogger != null) {
                iAppLogLogger.debug(4, "[DurationEvent:{}] Pause at:{}", this.f12136b, Long.valueOf(j10));
            }
            long j11 = this.f12138d;
            if (j10 <= this.f12137c) {
                j10 = SystemClock.elapsedRealtime();
            }
            this.f12138d = (j10 - this.f12137c) + j11;
            this.f12137c = -1L;
        }
    }

    public void b(long j10) {
        if (j10 > 0 && this.f12137c < 0) {
            c(j10);
            IAppLogLogger iAppLogLogger = this.f12135a;
            if (iAppLogLogger != null) {
                iAppLogLogger.debug(4, "[DurationEvent:{}] Resume at:{}", this.f12136b, Long.valueOf(j10));
            }
        }
    }

    public void c(long j10) {
        this.f12137c = j10;
        IAppLogLogger iAppLogLogger = this.f12135a;
        if (iAppLogLogger != null) {
            iAppLogLogger.debug(4, "[DurationEvent:{}] Start at:{}", this.f12136b, Long.valueOf(j10));
        }
    }
}
