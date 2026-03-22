package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
/* loaded from: classes4.dex */
public class PlaybackException extends Exception implements g {

    /* renamed from: c  reason: collision with root package name */
    public static final g.a<PlaybackException> f17186c = new g.a() { // from class: com.google.android.exoplayer2.i1
        @Override // com.google.android.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return new PlaybackException(bundle);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f17187a;

    /* renamed from: b  reason: collision with root package name */
    public final long f17188b;

    /* JADX INFO: Access modifiers changed from: protected */
    public PlaybackException(Bundle bundle) {
        this(bundle.getString(f(2)), e(bundle), bundle.getInt(f(0), 1000), bundle.getLong(f(1), SystemClock.elapsedRealtime()));
    }

    private static RemoteException b(@Nullable String str) {
        return new RemoteException(str);
    }

    private static Throwable d(Class<?> cls, @Nullable String str) throws Exception {
        return (Throwable) cls.getConstructor(String.class).newInstance(str);
    }

    @Nullable
    private static Throwable e(Bundle bundle) {
        String string = bundle.getString(f(3));
        String string2 = bundle.getString(f(4));
        Throwable th2 = null;
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(string, true, PlaybackException.class.getClassLoader());
            if (Throwable.class.isAssignableFrom(cls)) {
                th2 = d(cls, string2);
            }
            if (th2 != null) {
                return th2;
            }
        } catch (Throwable unused) {
        }
        return b(string2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String f(int i10) {
        return Integer.toString(i10, 36);
    }

    @CallSuper
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(f(0), this.f17187a);
        bundle.putLong(f(1), this.f17188b);
        bundle.putString(f(2), getMessage());
        Throwable cause = getCause();
        if (cause != null) {
            bundle.putString(f(3), cause.getClass().getName());
            bundle.putString(f(4), cause.getMessage());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PlaybackException(@Nullable String str, @Nullable Throwable th2, int i10, long j10) {
        super(str, th2);
        this.f17187a = i10;
        this.f17188b = j10;
    }
}
