package com.google.android.exoplayer2.drm;

import a7.h;
import a7.k;
import a7.x;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.drm.m;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.common.collect.ImmutableMap;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* compiled from: HttpMediaDrmCallback.java */
/* loaded from: classes4.dex */
public final class o implements p {

    /* renamed from: a  reason: collision with root package name */
    private final h.a f17598a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f17599b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17600c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f17601d;

    public o(@Nullable String str, boolean z10, h.a aVar) {
        boolean z11;
        if (z10 && TextUtils.isEmpty(str)) {
            z11 = false;
        } else {
            z11 = true;
        }
        b7.a.a(z11);
        this.f17598a = aVar;
        this.f17599b = str;
        this.f17600c = z10;
        this.f17601d = new HashMap();
    }

    private static byte[] c(h.a aVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        x xVar = new x(aVar.createDataSource());
        a7.k a10 = new k.b().i(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        a7.k kVar = a10;
        while (true) {
            try {
                a7.i iVar = new a7.i(xVar, kVar);
                try {
                    byte[] M0 = s0.M0(iVar);
                    s0.m(iVar);
                    return M0;
                } catch (HttpDataSource$InvalidResponseCodeException e10) {
                    String d10 = d(e10, i10);
                    if (d10 != null) {
                        i10++;
                        kVar = kVar.a().i(d10).a();
                        s0.m(iVar);
                    } else {
                        throw e10;
                    }
                }
            } catch (Exception e11) {
                throw new MediaDrmCallbackException(a10, (Uri) b7.a.e(xVar.e()), xVar.getResponseHeaders(), xVar.d(), e11);
            }
        }
    }

    @Nullable
    private static String d(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i10) {
        Map<String, List<String>> map;
        List<String> list;
        int i11 = httpDataSource$InvalidResponseCodeException.f19075d;
        if ((i11 != 307 && i11 != 308) || i10 >= 5 || (map = httpDataSource$InvalidResponseCodeException.f19077f) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.google.android.exoplayer2.drm.p
    public byte[] a(UUID uuid, m.a aVar) throws MediaDrmCallbackException {
        String str;
        String b10 = aVar.b();
        if (this.f17600c || TextUtils.isEmpty(b10)) {
            b10 = this.f17599b;
        }
        if (!TextUtils.isEmpty(b10)) {
            HashMap hashMap = new HashMap();
            UUID uuid2 = o5.l.f63100e;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else if (o5.l.f63098c.equals(uuid)) {
                str = "application/json";
            } else {
                str = "application/octet-stream";
            }
            hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, str);
            if (uuid2.equals(uuid)) {
                hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.f17601d) {
                hashMap.putAll(this.f17601d);
            }
            return c(this.f17598a, b10, aVar.a(), hashMap);
        }
        k.b bVar = new k.b();
        Uri uri = Uri.EMPTY;
        throw new MediaDrmCallbackException(bVar.h(uri).a(), uri, ImmutableMap.q(), 0L, new IllegalStateException("No license URL"));
    }

    @Override // com.google.android.exoplayer2.drm.p
    public byte[] b(UUID uuid, m.d dVar) throws MediaDrmCallbackException {
        return c(this.f17598a, dVar.b() + "&signedRequest=" + s0.A(dVar.a()), null, Collections.emptyMap());
    }

    public void e(String str, String str2) {
        b7.a.e(str);
        b7.a.e(str2);
        synchronized (this.f17601d) {
            this.f17601d.put(str, str2);
        }
    }
}
