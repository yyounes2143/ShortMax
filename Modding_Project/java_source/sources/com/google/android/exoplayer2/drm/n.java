package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p5.t3;
import s5.q;
/* compiled from: FrameworkMediaDrm.java */
@RequiresApi(18)
/* loaded from: classes4.dex */
public final class n implements m {

    /* renamed from: d  reason: collision with root package name */
    public static final m.c f17594d = new m.c() { // from class: s5.m
        @Override // com.google.android.exoplayer2.drm.m.c
        public final com.google.android.exoplayer2.drm.m a(UUID uuid) {
            com.google.android.exoplayer2.drm.m t10;
            t10 = com.google.android.exoplayer2.drm.n.t(uuid);
            return t10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final UUID f17595a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaDrm f17596b;

    /* renamed from: c  reason: collision with root package name */
    private int f17597c;

    /* compiled from: FrameworkMediaDrm.java */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    private static class a {
        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            boolean requiresSecureDecoder;
            requiresSecureDecoder = mediaDrm.requiresSecureDecoder(str);
            return requiresSecureDecoder;
        }

        @DoNotInline
        public static void b(MediaDrm mediaDrm, byte[] bArr, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            MediaDrm.PlaybackComponent playbackComponent;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                playbackComponent = mediaDrm.getPlaybackComponent(bArr);
                q.a(b7.a.e(playbackComponent)).setLogSessionId(a10);
            }
        }
    }

    private n(UUID uuid) throws UnsupportedSchemeException {
        b7.a.e(uuid);
        b7.a.b(!o5.l.f63097b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f17595a = uuid;
        MediaDrm mediaDrm = new MediaDrm(n(uuid));
        this.f17596b = mediaDrm;
        this.f17597c = 1;
        if (o5.l.f63099d.equals(uuid) && u()) {
            p(mediaDrm);
        }
    }

    private static byte[] i(byte[] bArr) {
        int indexOf;
        g0 g0Var = new g0(bArr);
        int q10 = g0Var.q();
        short s10 = g0Var.s();
        short s11 = g0Var.s();
        if (s10 == 1 && s11 == 1) {
            short s12 = g0Var.s();
            Charset charset = h7.c.f52597e;
            String B = g0Var.B(s12, charset);
            if (B.contains("<LA_URL>")) {
                return bArr;
            }
            if (B.indexOf("</DATA>") == -1) {
                b7.q.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
            }
            String str = B.substring(0, indexOf) + "<LA_URL>https://x</LA_URL>" + B.substring(indexOf);
            int i10 = q10 + 52;
            ByteBuffer allocate = ByteBuffer.allocate(i10);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(i10);
            allocate.putShort(s10);
            allocate.putShort(s11);
            allocate.putShort((short) (str.length() * 2));
            allocate.put(str.getBytes(charset));
            return allocate.array();
        }
        b7.q.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
        return bArr;
    }

    private static String j(String str) {
        if ("<LA_URL>https://x</LA_URL>".equals(str)) {
            return "";
        }
        if (s0.f2506a == 33 && "https://default.url".equals(str)) {
            return "";
        }
        return str;
    }

    private static byte[] k(UUID uuid, byte[] bArr) {
        if (o5.l.f63098c.equals(uuid)) {
            return com.google.android.exoplayer2.drm.a.a(bArr);
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        if ("AFTT".equals(r0) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] l(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = o5.l.f63100e
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = b6.l.e(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = i(r4)
            byte[] r4 = b6.l.a(r0, r4)
        L18:
            int r1 = b7.s0.f2506a
            r2 = 23
            if (r1 >= r2) goto L26
            java.util.UUID r1 = o5.l.f63099d
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L58
        L26:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L5f
            java.lang.String r0 = "Amazon"
            java.lang.String r1 = b7.s0.f2508c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
            java.lang.String r0 = b7.s0.f2509d
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
        L58:
            byte[] r3 = b6.l.e(r4, r3)
            if (r3 == 0) goto L5f
            return r3
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.n.l(java.util.UUID, byte[]):byte[]");
    }

    private static String m(UUID uuid, String str) {
        if (s0.f2506a < 26 && o5.l.f63098c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) {
            return C.CENC_TYPE_cenc;
        }
        return str;
    }

    private static UUID n(UUID uuid) {
        if (s0.f2506a < 27 && o5.l.f63098c.equals(uuid)) {
            return o5.l.f63097b;
        }
        return uuid;
    }

    private static void p(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData r(UUID uuid, List<DrmInitData.SchemeData> list) {
        if (!o5.l.f63099d.equals(uuid)) {
            return list.get(0);
        }
        if (s0.f2506a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                DrmInitData.SchemeData schemeData2 = list.get(i11);
                byte[] bArr = (byte[]) b7.a.e(schemeData2.f17562e);
                if (s0.c(schemeData2.f17561d, schemeData.f17561d) && s0.c(schemeData2.f17560c, schemeData.f17560c) && b6.l.c(bArr)) {
                    i10 += bArr.length;
                }
            }
            byte[] bArr2 = new byte[i10];
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                byte[] bArr3 = (byte[]) b7.a.e(list.get(i13).f17562e);
                int length = bArr3.length;
                System.arraycopy(bArr3, 0, bArr2, i12, length);
                i12 += length;
            }
            return schemeData.a(bArr2);
        }
        for (int i14 = 0; i14 < list.size(); i14++) {
            DrmInitData.SchemeData schemeData3 = list.get(i14);
            int g10 = b6.l.g((byte[]) b7.a.e(schemeData3.f17562e));
            int i15 = s0.f2506a;
            if (i15 < 23 && g10 == 0) {
                return schemeData3;
            }
            if (i15 >= 23 && g10 == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(m.b bVar, MediaDrm mediaDrm, byte[] bArr, int i10, int i11, byte[] bArr2) {
        bVar.a(this, bArr, i10, i11, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m t(UUID uuid) {
        try {
            return v(uuid);
        } catch (UnsupportedDrmException unused) {
            b7.q.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new k();
        }
    }

    private static boolean u() {
        return "ASUS_Z00AD".equals(s0.f2509d);
    }

    public static n v(UUID uuid) throws UnsupportedDrmException {
        try {
            return new n(uuid);
        } catch (UnsupportedSchemeException e10) {
            throw new UnsupportedDrmException(1, e10);
        } catch (Exception e11) {
            throw new UnsupportedDrmException(2, e11);
        }
    }

    @Override // com.google.android.exoplayer2.drm.m
    public int a() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.drm.m
    public boolean c(byte[] bArr, String str) {
        if (s0.f2506a >= 31) {
            return a.a(this.f17596b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f17595a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void closeSession(byte[] bArr) {
        this.f17596b.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.m
    @SuppressLint({"WrongConstant"})
    public m.a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException {
        DrmInitData.SchemeData schemeData;
        byte[] bArr2;
        String str;
        int i11;
        if (list != null) {
            schemeData = r(this.f17595a, list);
            bArr2 = l(this.f17595a, (byte[]) b7.a.e(schemeData.f17562e));
            str = m(this.f17595a, schemeData.f17561d);
        } else {
            schemeData = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f17596b.getKeyRequest(bArr, bArr2, str, i10, hashMap);
        byte[] k10 = k(this.f17595a, keyRequest.getData());
        String j10 = j(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(j10) && schemeData != null && !TextUtils.isEmpty(schemeData.f17560c)) {
            j10 = schemeData.f17560c;
        }
        if (s0.f2506a >= 23) {
            i11 = keyRequest.getRequestType();
        } else {
            i11 = Integer.MIN_VALUE;
        }
        return new m.a(k10, j10, i11);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void e(@Nullable final m.b bVar) {
        MediaDrm.OnEventListener onEventListener;
        MediaDrm mediaDrm = this.f17596b;
        if (bVar == null) {
            onEventListener = null;
        } else {
            onEventListener = new MediaDrm.OnEventListener() { // from class: s5.n
                @Override // android.media.MediaDrm.OnEventListener
                public final void onEvent(MediaDrm mediaDrm2, byte[] bArr, int i10, int i11, byte[] bArr2) {
                    com.google.android.exoplayer2.drm.n.this.s(bVar, mediaDrm2, bArr, i10, i11, bArr2);
                }
            };
        }
        mediaDrm.setOnEventListener(onEventListener);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void f(byte[] bArr, t3 t3Var) {
        if (s0.f2506a >= 31) {
            try {
                a.b(this.f17596b, bArr, t3Var);
            } catch (UnsupportedOperationException unused) {
                b7.q.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.m
    public m.d getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.f17596b.getProvisionRequest();
        return new m.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.m
    /* renamed from: o */
    public s5.l b(byte[] bArr) throws MediaCryptoException {
        boolean z10;
        if (s0.f2506a < 21 && o5.l.f63099d.equals(this.f17595a) && "L3".equals(q("securityLevel"))) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new s5.l(n(this.f17595a), bArr, z10);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public byte[] openSession() throws MediaDrmException {
        return this.f17596b.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.m
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (o5.l.f63098c.equals(this.f17595a)) {
            bArr2 = com.google.android.exoplayer2.drm.a.b(bArr2);
        }
        return this.f17596b.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.f17596b.provideProvisionResponse(bArr);
    }

    public String q(String str) {
        return this.f17596b.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.f17596b.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.m
    public synchronized void release() {
        int i10 = this.f17597c - 1;
        this.f17597c = i10;
        if (i10 == 0) {
            this.f17596b.release();
        }
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.f17596b.restoreKeys(bArr, bArr2);
    }
}
