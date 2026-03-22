package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p5.t3;
/* compiled from: ExoMediaDrm.java */
/* loaded from: classes4.dex */
public interface m {

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f17589a;

        /* renamed from: b  reason: collision with root package name */
        private final String f17590b;

        /* renamed from: c  reason: collision with root package name */
        private final int f17591c;

        public a(byte[] bArr, String str, int i10) {
            this.f17589a = bArr;
            this.f17590b = str;
            this.f17591c = i10;
        }

        public byte[] a() {
            return this.f17589a;
        }

        public String b() {
            return this.f17590b;
        }
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(m mVar, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes4.dex */
    public interface c {
        m a(UUID uuid);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f17592a;

        /* renamed from: b  reason: collision with root package name */
        private final String f17593b;

        public d(byte[] bArr, String str) {
            this.f17592a = bArr;
            this.f17593b = str;
        }

        public byte[] a() {
            return this.f17592a;
        }

        public String b() {
            return this.f17593b;
        }
    }

    int a();

    r5.b b(byte[] bArr) throws MediaCryptoException;

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    void e(@Nullable b bVar);

    d getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    @Nullable
    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    default void f(byte[] bArr, t3 t3Var) {
    }
}
