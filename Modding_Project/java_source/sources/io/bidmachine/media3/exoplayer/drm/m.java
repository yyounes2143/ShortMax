package io.bidmachine.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* compiled from: ExoMediaDrm.java */
/* loaded from: classes8.dex */
public interface m {

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f55871a;

        /* renamed from: b  reason: collision with root package name */
        private final String f55872b;

        /* renamed from: c  reason: collision with root package name */
        private final int f55873c;

        public a(byte[] bArr, String str, int i10) {
            this.f55871a = bArr;
            this.f55872b = str;
            this.f55873c = i10;
        }

        public byte[] a() {
            return this.f55871a;
        }

        public String b() {
            return this.f55872b;
        }
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a(m mVar, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes8.dex */
    public interface c {
        m a(UUID uuid);
    }

    /* compiled from: ExoMediaDrm.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f55874a;

        /* renamed from: b  reason: collision with root package name */
        private final String f55875b;

        public d(byte[] bArr, String str) {
            this.f55874a = bArr;
            this.f55875b = str;
        }

        public byte[] a() {
            return this.f55874a;
        }

        public String b() {
            return this.f55875b;
        }
    }

    int a();

    fn.b b(byte[] bArr) throws MediaCryptoException;

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    void f(@Nullable b bVar);

    d getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    @Nullable
    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    default void e(byte[] bArr, b2 b2Var) {
    }
}
