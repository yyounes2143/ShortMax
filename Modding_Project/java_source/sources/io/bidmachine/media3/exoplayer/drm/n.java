package io.bidmachine.media3.exoplayer.drm;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.b0;
import cn.m0;
import cn.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.exoplayer.drm.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import s5.q;
/* compiled from: FrameworkMediaDrm.java */
/* loaded from: classes8.dex */
public final class n implements m {

    /* renamed from: d  reason: collision with root package name */
    public static final m.c f55876d = new m.c() { // from class: ln.n
        @Override // io.bidmachine.media3.exoplayer.drm.m.c
        public final io.bidmachine.media3.exoplayer.drm.m a(UUID uuid) {
            io.bidmachine.media3.exoplayer.drm.m v10;
            v10 = io.bidmachine.media3.exoplayer.drm.n.v(uuid);
            return v10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final UUID f55877a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaDrm f55878b;

    /* renamed from: c  reason: collision with root package name */
    private int f55879c;

    /* compiled from: FrameworkMediaDrm.java */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str, int i10) {
            boolean requiresSecureDecoder;
            requiresSecureDecoder = mediaDrm.requiresSecureDecoder(str, i10);
            return requiresSecureDecoder;
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, b2 b2Var) {
            LogSessionId logSessionId;
            boolean equals;
            MediaDrm.PlaybackComponent playbackComponent;
            LogSessionId a10 = b2Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                playbackComponent = mediaDrm.getPlaybackComponent(bArr);
                q.a(cn.a.e(playbackComponent)).setLogSessionId(a10);
            }
        }
    }

    private n(UUID uuid) throws UnsupportedSchemeException {
        cn.a.e(uuid);
        cn.a.b(!zm.f.f71929b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f55877a = uuid;
        MediaDrm mediaDrm = new MediaDrm(n(uuid));
        this.f55878b = mediaDrm;
        this.f55879c = 1;
        if (zm.f.f71931d.equals(uuid) && w()) {
            q(mediaDrm);
        }
    }

    private static byte[] i(byte[] bArr) {
        int indexOf;
        b0 b0Var = new b0(bArr);
        int u10 = b0Var.u();
        short w10 = b0Var.w();
        short w11 = b0Var.w();
        if (w10 == 1 && w11 == 1) {
            short w12 = b0Var.w();
            Charset charset = StandardCharsets.UTF_16LE;
            String F = b0Var.F(w12, charset);
            if (F.contains("<LA_URL>")) {
                return bArr;
            }
            if (F.indexOf("</DATA>") == -1) {
                r.h("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
            }
            String str = F.substring(0, indexOf) + "<LA_URL>https://x</LA_URL>" + F.substring(indexOf);
            int i10 = u10 + 52;
            ByteBuffer allocate = ByteBuffer.allocate(i10);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(i10);
            allocate.putShort(w10);
            allocate.putShort(w11);
            allocate.putShort((short) (str.length() * 2));
            allocate.put(str.getBytes(charset));
            return allocate.array();
        }
        r.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
        return bArr;
    }

    private String j(String str) {
        if ("<LA_URL>https://x</LA_URL>".equals(str)) {
            return "";
        }
        if (m0.f3614a >= 33 && "https://default.url".equals(str)) {
            String r10 = r("version");
            if (Objects.equals(r10, "1.2") || Objects.equals(r10, "aidl-1")) {
                return "";
            }
        }
        return str;
    }

    private static byte[] k(UUID uuid, byte[] bArr) {
        if (zm.f.f71930c.equals(uuid)) {
            return io.bidmachine.media3.exoplayer.drm.a.a(bArr);
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
        if ("AFTT".equals(r0) == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] l(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = zm.f.f71932e
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = vo.p.e(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = i(r4)
            byte[] r4 = vo.p.a(r0, r4)
        L18:
            boolean r1 = o(r3)
            if (r1 == 0) goto L2e
            vo.p$a r1 = vo.p.d(r4)
            if (r1 == 0) goto L2e
            java.util.UUID r4 = zm.f.f71929b
            java.util.UUID[] r2 = r1.f69313d
            byte[] r1 = r1.f69312c
            byte[] r4 = vo.p.b(r4, r2, r1)
        L2e:
            int r1 = cn.m0.f3614a
            r2 = 23
            if (r1 >= r2) goto L3c
            java.util.UUID r1 = zm.f.f71931d
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L6e
        L3c:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L75
            java.lang.String r0 = "Amazon"
            java.lang.String r1 = android.os.Build.MANUFACTURER
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L75
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L6e
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L6e
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L6e
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L75
        L6e:
            byte[] r3 = vo.p.e(r4, r3)
            if (r3 == 0) goto L75
            return r3
        L75:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.drm.n.l(java.util.UUID, byte[]):byte[]");
    }

    private static String m(UUID uuid, String str) {
        if (m0.f3614a < 26 && zm.f.f71930c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) {
            return C.CENC_TYPE_cenc;
        }
        return str;
    }

    private static UUID n(UUID uuid) {
        if (o(uuid)) {
            return zm.f.f71929b;
        }
        return uuid;
    }

    private static boolean o(UUID uuid) {
        if (m0.f3614a < 27 && Objects.equals(uuid, zm.f.f71930c)) {
            return true;
        }
        return false;
    }

    private static void q(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData s(UUID uuid, List<DrmInitData.SchemeData> list) {
        if (!zm.f.f71931d.equals(uuid)) {
            return list.get(0);
        }
        if (m0.f3614a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                DrmInitData.SchemeData schemeData2 = list.get(i11);
                byte[] bArr = (byte[]) cn.a.e(schemeData2.f55110e);
                if (Objects.equals(schemeData2.f55109d, schemeData.f55109d) && Objects.equals(schemeData2.f55108c, schemeData.f55108c) && vo.p.c(bArr)) {
                    i10 += bArr.length;
                }
            }
            byte[] bArr2 = new byte[i10];
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                byte[] bArr3 = (byte[]) cn.a.e(list.get(i13).f55110e);
                int length = bArr3.length;
                System.arraycopy(bArr3, 0, bArr2, i12, length);
                i12 += length;
            }
            return schemeData.b(bArr2);
        }
        for (int i14 = 0; i14 < list.size(); i14++) {
            DrmInitData.SchemeData schemeData3 = list.get(i14);
            int g10 = vo.p.g((byte[]) cn.a.e(schemeData3.f55110e));
            int i15 = m0.f3614a;
            if (i15 < 23 && g10 == 0) {
                return schemeData3;
            }
            if (i15 >= 23 && g10 == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    @RequiresApi(31)
    private boolean t() {
        if (this.f55877a.equals(zm.f.f71931d)) {
            String r10 = r("version");
            if (!r10.startsWith("v5.") && !r10.startsWith("14.") && !r10.startsWith("15.") && !r10.startsWith("16.0")) {
                return true;
            }
            return false;
        }
        return this.f55877a.equals(zm.f.f71930c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(m.b bVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        bVar.a(this, bArr, i10, i11, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m v(UUID uuid) {
        try {
            return x(uuid);
        } catch (UnsupportedDrmException unused) {
            r.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new k();
        }
    }

    private static boolean w() {
        return "ASUS_Z00AD".equals(Build.MODEL);
    }

    public static n x(UUID uuid) throws UnsupportedDrmException {
        try {
            return new n(uuid);
        } catch (UnsupportedSchemeException e10) {
            throw new UnsupportedDrmException(1, e10);
        } catch (Exception e11) {
            throw new UnsupportedDrmException(2, e11);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public int a() {
        return 2;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public boolean c(byte[] bArr, String str) {
        boolean z10;
        MediaCrypto mediaCrypto;
        int securityLevel;
        if (m0.f3614a >= 31 && t()) {
            MediaDrm mediaDrm = this.f55878b;
            securityLevel = mediaDrm.getSecurityLevel(bArr);
            return a.a(mediaDrm, str, securityLevel);
        }
        MediaCrypto mediaCrypto2 = null;
        try {
            try {
                mediaCrypto = new MediaCrypto(n(this.f55877a), bArr);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (MediaCryptoException unused) {
        }
        try {
            z10 = mediaCrypto.requiresSecureDecoderComponent(str);
            mediaCrypto.release();
        } catch (MediaCryptoException unused2) {
            mediaCrypto2 = mediaCrypto;
            z10 = !this.f55877a.equals(zm.f.f71930c);
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            return z10;
        } catch (Throwable th3) {
            th = th3;
            mediaCrypto2 = mediaCrypto;
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            throw th;
        }
        return z10;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void closeSession(byte[] bArr) {
        this.f55878b.closeSession(bArr);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    @SuppressLint({"WrongConstant"})
    public m.a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException {
        DrmInitData.SchemeData schemeData;
        byte[] bArr2;
        String str;
        int i11;
        if (list != null) {
            schemeData = s(this.f55877a, list);
            bArr2 = l(this.f55877a, (byte[]) cn.a.e(schemeData.f55110e));
            str = m(this.f55877a, schemeData.f55109d);
        } else {
            schemeData = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f55878b.getKeyRequest(bArr, bArr2, str, i10, hashMap);
        byte[] k10 = k(this.f55877a, keyRequest.getData());
        String j10 = j(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(j10) && schemeData != null && !TextUtils.isEmpty(schemeData.f55108c)) {
            j10 = schemeData.f55108c;
        }
        if (m0.f3614a >= 23) {
            i11 = keyRequest.getRequestType();
        } else {
            i11 = Integer.MIN_VALUE;
        }
        return new m.a(k10, j10, i11);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void e(byte[] bArr, b2 b2Var) {
        if (m0.f3614a >= 31) {
            try {
                a.b(this.f55878b, bArr, b2Var);
            } catch (UnsupportedOperationException unused) {
                r.h("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void f(@Nullable final m.b bVar) {
        MediaDrm.OnEventListener onEventListener;
        MediaDrm mediaDrm = this.f55878b;
        if (bVar == null) {
            onEventListener = null;
        } else {
            onEventListener = new MediaDrm.OnEventListener() { // from class: ln.o
                @Override // android.media.MediaDrm.OnEventListener
                public final void onEvent(MediaDrm mediaDrm2, byte[] bArr, int i10, int i11, byte[] bArr2) {
                    io.bidmachine.media3.exoplayer.drm.n.this.u(bVar, mediaDrm2, bArr, i10, i11, bArr2);
                }
            };
        }
        mediaDrm.setOnEventListener(onEventListener);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public m.d getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.f55878b.getProvisionRequest();
        return new m.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public byte[] openSession() throws MediaDrmException {
        return this.f55878b.openSession();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    /* renamed from: p */
    public ln.l b(byte[] bArr) throws MediaCryptoException {
        return new ln.l(n(this.f55877a), bArr);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (zm.f.f71930c.equals(this.f55877a)) {
            bArr2 = io.bidmachine.media3.exoplayer.drm.a.b(bArr2);
        }
        return this.f55878b.provideKeyResponse(bArr, bArr2);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.f55878b.provideProvisionResponse(bArr);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.f55878b.queryKeyStatus(bArr);
    }

    public String r(String str) {
        return this.f55878b.getPropertyString(str);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public synchronized void release() {
        int i10 = this.f55879c - 1;
        this.f55879c = i10;
        if (i10 == 0) {
            this.f55878b.release();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.f55878b.restoreKeys(bArr, bArr2);
    }
}
