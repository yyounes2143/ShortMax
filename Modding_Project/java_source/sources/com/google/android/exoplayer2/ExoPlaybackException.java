package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.g;
import java.io.IOException;
/* loaded from: classes4.dex */
public final class ExoPlaybackException extends PlaybackException {

    /* renamed from: k  reason: collision with root package name */
    public static final g.a<ExoPlaybackException> f17172k = new g.a() { // from class: o5.p
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            return ExoPlaybackException.g(bundle);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public final int f17173d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f17174e;

    /* renamed from: f  reason: collision with root package name */
    public final int f17175f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final v0 f17176g;

    /* renamed from: h  reason: collision with root package name */
    public final int f17177h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final n6.j f17178i;

    /* renamed from: j  reason: collision with root package name */
    final boolean f17179j;

    private ExoPlaybackException(int i10, Throwable th2, int i11) {
        this(i10, th2, null, i11, null, -1, null, 4, false);
    }

    public static /* synthetic */ ExoPlaybackException g(Bundle bundle) {
        return new ExoPlaybackException(bundle);
    }

    public static ExoPlaybackException i(Throwable th2, String str, int i10, @Nullable v0 v0Var, int i11, boolean z10, int i12) {
        int i13;
        if (v0Var == null) {
            i13 = 4;
        } else {
            i13 = i11;
        }
        return new ExoPlaybackException(1, th2, null, i12, str, i10, v0Var, i13, z10);
    }

    public static ExoPlaybackException j(IOException iOException, int i10) {
        return new ExoPlaybackException(0, iOException, i10);
    }

    @Deprecated
    public static ExoPlaybackException k(RuntimeException runtimeException) {
        return n(runtimeException, 1000);
    }

    public static ExoPlaybackException n(RuntimeException runtimeException, int i10) {
        return new ExoPlaybackException(2, runtimeException, i10);
    }

    private static String q(int i10, @Nullable String str, @Nullable String str2, int i11, @Nullable v0 v0Var, int i12) {
        String str3;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 3) {
                    str3 = "Unexpected runtime error";
                } else {
                    str3 = "Remote error";
                }
            } else {
                str3 = str2 + " error, index=" + i11 + ", format=" + v0Var + ", format_supported=" + b7.s0.R(i12);
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
    public ExoPlaybackException h(@Nullable n6.j jVar) {
        return new ExoPlaybackException((String) b7.s0.j(getMessage()), getCause(), this.f17187a, this.f17173d, this.f17174e, this.f17175f, this.f17176g, this.f17177h, jVar, this.f17188b, this.f17179j);
    }

    @Override // com.google.android.exoplayer2.PlaybackException, com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(PlaybackException.f(1001), this.f17173d);
        bundle.putString(PlaybackException.f(1002), this.f17174e);
        bundle.putInt(PlaybackException.f(1003), this.f17175f);
        if (this.f17176g != null) {
            bundle.putBundle(PlaybackException.f(1004), this.f17176g.toBundle());
        }
        bundle.putInt(PlaybackException.f(1005), this.f17177h);
        bundle.putBoolean(PlaybackException.f(1006), this.f17179j);
        return bundle;
    }

    private ExoPlaybackException(int i10, @Nullable Throwable th2, @Nullable String str, int i11, @Nullable String str2, int i12, @Nullable v0 v0Var, int i13, boolean z10) {
        this(q(i10, str, str2, i12, v0Var, i13), th2, i11, i10, str2, i12, v0Var, i13, null, SystemClock.elapsedRealtime(), z10);
    }

    private ExoPlaybackException(Bundle bundle) {
        super(bundle);
        this.f17173d = bundle.getInt(PlaybackException.f(1001), 2);
        this.f17174e = bundle.getString(PlaybackException.f(1002));
        this.f17175f = bundle.getInt(PlaybackException.f(1003), -1);
        Bundle bundle2 = bundle.getBundle(PlaybackException.f(1004));
        this.f17176g = bundle2 == null ? null : v0.H.fromBundle(bundle2);
        this.f17177h = bundle.getInt(PlaybackException.f(1005), 4);
        this.f17179j = bundle.getBoolean(PlaybackException.f(1006), false);
        this.f17178i = null;
    }

    private ExoPlaybackException(String str, @Nullable Throwable th2, int i10, int i11, @Nullable String str2, int i12, @Nullable v0 v0Var, int i13, @Nullable n6.j jVar, long j10, boolean z10) {
        super(str, th2, i10, j10);
        boolean z11 = false;
        b7.a.a(!z10 || i11 == 1);
        b7.a.a((th2 != null || i11 == 3) ? true : z11);
        this.f17173d = i11;
        this.f17174e = str2;
        this.f17175f = i12;
        this.f17176g = v0Var;
        this.f17177h = i13;
        this.f17178i = jVar;
        this.f17179j = z10;
    }
}
