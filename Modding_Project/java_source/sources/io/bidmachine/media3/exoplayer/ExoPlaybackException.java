package io.bidmachine.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
/* loaded from: classes8.dex */
public final class ExoPlaybackException extends PlaybackException {

    /* renamed from: j  reason: collision with root package name */
    public final int f55353j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final String f55354k;

    /* renamed from: l  reason: collision with root package name */
    public final int f55355l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f55356m;

    /* renamed from: n  reason: collision with root package name */
    public final int f55357n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final r.b f55358o;

    /* renamed from: p  reason: collision with root package name */
    final boolean f55359p;

    private ExoPlaybackException(int i10, Throwable th2, int i11) {
        this(i10, th2, null, i11, null, -1, null, 4, false);
    }

    public static ExoPlaybackException d(Throwable th2, String str, int i10, @Nullable io.bidmachine.media3.common.a aVar, int i11, boolean z10, int i12) {
        int i13;
        if (aVar == null) {
            i13 = 4;
        } else {
            i13 = i11;
        }
        return new ExoPlaybackException(1, th2, null, i12, str, i10, aVar, i13, z10);
    }

    public static ExoPlaybackException e(IOException iOException, int i10) {
        return new ExoPlaybackException(0, iOException, i10);
    }

    public static ExoPlaybackException f(RuntimeException runtimeException, int i10) {
        return new ExoPlaybackException(2, runtimeException, i10);
    }

    private static String g(int i10, @Nullable String str, @Nullable String str2, int i11, @Nullable io.bidmachine.media3.common.a aVar, int i12) {
        String str3;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 3) {
                    str3 = "Unexpected runtime error";
                } else {
                    str3 = "Remote error";
                }
            } else {
                str3 = str2 + " error, index=" + i11 + ", format=" + aVar + ", format_supported=" + cn.m0.d0(i12);
            }
        } else {
            str3 = "Source error";
        }
        if (!TextUtils.isEmpty(str)) {
            return str3 + ": " + str;
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckResult
    public ExoPlaybackException b(@Nullable r.b bVar) {
        return new ExoPlaybackException((String) cn.m0.i(getMessage()), getCause(), this.f55122a, this.f55353j, this.f55354k, this.f55355l, this.f55356m, this.f55357n, bVar, this.f55123b, this.f55359p);
    }

    private ExoPlaybackException(int i10, @Nullable Throwable th2, @Nullable String str, int i11, @Nullable String str2, int i12, @Nullable io.bidmachine.media3.common.a aVar, int i13, boolean z10) {
        this(g(i10, str, str2, i12, aVar, i13), th2, i11, i10, str2, i12, aVar, i13, null, SystemClock.elapsedRealtime(), z10);
    }

    private ExoPlaybackException(String str, @Nullable Throwable th2, int i10, int i11, @Nullable String str2, int i12, @Nullable io.bidmachine.media3.common.a aVar, int i13, @Nullable r.b bVar, long j10, boolean z10) {
        super(str, th2, i10, Bundle.EMPTY, j10);
        boolean z11 = false;
        cn.a.a(!z10 || i11 == 1);
        cn.a.a((th2 != null || i11 == 3) ? true : z11);
        this.f55353j = i11;
        this.f55354k = str2;
        this.f55355l = i12;
        this.f55356m = aVar;
        this.f55357n = i13;
        this.f55358o = bVar;
        this.f55359p = z10;
    }
}
