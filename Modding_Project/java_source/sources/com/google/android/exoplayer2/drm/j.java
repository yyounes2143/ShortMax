package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.huawei.hms.support.api.entity.auth.AuthCode;
/* compiled from: DrmUtil.java */
/* loaded from: classes4.dex */
public final class j {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrmUtil.java */
    @RequiresApi(18)
    /* loaded from: classes4.dex */
    public static final class a {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof DeniedByServerException;
        }

        @DoNotInline
        public static boolean b(@Nullable Throwable th2) {
            return th2 instanceof NotProvisionedException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrmUtil.java */
    @RequiresApi(21)
    /* loaded from: classes4.dex */
    public static final class b {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrm.MediaDrmStateException;
        }

        @DoNotInline
        public static int b(Throwable th2) {
            return s0.P(s0.Q(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrmUtil.java */
    @RequiresApi(23)
    /* loaded from: classes4.dex */
    public static final class c {
        @DoNotInline
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i10) {
        int i11 = s0.f2506a;
        if (i11 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i11 >= 23 && c.a(exc)) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if (i11 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i11 >= 18 && a.a(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i10 == 1) {
            return AuthCode.StatusCode.PERMISSION_EXPIRED;
        }
        if (i10 == 2) {
            return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
        }
        if (i10 == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }
}
