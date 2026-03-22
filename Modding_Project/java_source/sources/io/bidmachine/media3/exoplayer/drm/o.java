package io.bidmachine.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableMap;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import en.d;
import en.g;
import io.bidmachine.media3.exoplayer.drm.m;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* compiled from: HttpMediaDrmCallback.java */
/* loaded from: classes8.dex */
public final class o implements p {

    /* renamed from: a  reason: collision with root package name */
    private final d.a f55880a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f55881b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f55882c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f55883d;

    public o(@Nullable String str, boolean z10, d.a aVar) {
        boolean z11;
        if (z10 && TextUtils.isEmpty(str)) {
            z11 = false;
        } else {
            z11 = true;
        }
        cn.a.a(z11);
        this.f55880a = aVar;
        this.f55881b = str;
        this.f55882c = z10;
        this.f55883d = new HashMap();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.p
    public byte[] a(UUID uuid, m.d dVar) throws MediaDrmCallbackException {
        return j.a(this.f55880a.createDataSource(), dVar.b() + "&signedRequest=" + m0.H(dVar.a()), null, Collections.emptyMap());
    }

    @Override // io.bidmachine.media3.exoplayer.drm.p
    public byte[] b(UUID uuid, m.a aVar) throws MediaDrmCallbackException {
        String str;
        String b10 = aVar.b();
        if (this.f55882c || TextUtils.isEmpty(b10)) {
            b10 = this.f55881b;
        }
        if (!TextUtils.isEmpty(b10)) {
            HashMap hashMap = new HashMap();
            UUID uuid2 = zm.f.f71932e;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else if (zm.f.f71930c.equals(uuid)) {
                str = "application/json";
            } else {
                str = "application/octet-stream";
            }
            hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, str);
            if (uuid2.equals(uuid)) {
                hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.f55883d) {
                hashMap.putAll(this.f55883d);
            }
            return j.a(this.f55880a.createDataSource(), b10, aVar.a(), hashMap);
        }
        g.b bVar = new g.b();
        Uri uri = Uri.EMPTY;
        throw new MediaDrmCallbackException(bVar.i(uri).a(), uri, ImmutableMap.q(), 0L, new IllegalStateException("No license URL"));
    }

    public void c(String str, String str2) {
        cn.a.e(str);
        cn.a.e(str2);
        synchronized (this.f55883d) {
            this.f55883d.put(str, str2);
        }
    }
}
