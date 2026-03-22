package com.mbridge.msdk.tracker.network.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.p;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.t;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* compiled from: BasicNetwork.java */
/* loaded from: classes6.dex */
public class b implements com.mbridge.msdk.tracker.network.m {

    /* renamed from: a  reason: collision with root package name */
    private final a f30348a;

    /* renamed from: b  reason: collision with root package name */
    protected final c f30349b;

    public b(a aVar) {
        this(aVar, new c(4096));
    }

    private static p b(t<?> tVar) {
        String str;
        if (tVar != null) {
            try {
                if (tVar.a() && !TextUtils.isEmpty(tVar.t())) {
                    if (tVar.g() == 0) {
                        str = ShareTarget.METHOD_GET;
                    } else {
                        str = ShareTarget.METHOD_POST;
                    }
                    p pVar = new p(tVar.p(), str);
                    pVar.d("queue");
                    pVar.e(tVar.d("local_id"));
                    pVar.a(tVar.d("ad_type"));
                    pVar.i(tVar.r());
                    tVar.a(pVar);
                    return pVar;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.mbridge.msdk.tracker.network.m
    public q a(t<?> tVar) throws b0 {
        IOException iOException;
        g gVar;
        byte[] bArr;
        byte[] bArr2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        p b10 = b(tVar);
        while (true) {
            Collections.emptyList();
            try {
                g a10 = this.f30348a.a(tVar, f.a(tVar.d()));
                try {
                    int d10 = a10.d();
                    a(b10, d10);
                    List<com.mbridge.msdk.tracker.network.g> c10 = a10.c();
                    if (d10 == 304) {
                        return k.a(tVar, SystemClock.elapsedRealtime() - elapsedRealtime, c10);
                    }
                    InputStream a11 = a10.a();
                    if (a11 != null) {
                        bArr2 = k.a(a11, a10.b(), this.f30349b, b10);
                    } else {
                        bArr2 = new byte[0];
                    }
                    try {
                        k.a(SystemClock.elapsedRealtime() - elapsedRealtime, tVar, bArr2, d10);
                        if (d10 >= 200 && d10 <= 299) {
                            a(b10, 1, null);
                            return new q(d10, bArr2, false, SystemClock.elapsedRealtime() - elapsedRealtime, c10);
                        }
                        throw new IOException();
                    } catch (IOException e10) {
                        e = e10;
                        gVar = a10;
                        bArr = bArr2;
                        iOException = e;
                        a(b10, TextUtils.equals(iOException.getMessage(), "timeout") ? 3 : 2, iOException);
                        k.a(tVar, k.a(tVar, iOException, elapsedRealtime, gVar, bArr));
                    }
                } catch (IOException e11) {
                    e = e11;
                    bArr = null;
                    gVar = a10;
                }
            } catch (IOException e12) {
                iOException = e12;
                gVar = null;
                bArr = null;
            }
            a(b10, TextUtils.equals(iOException.getMessage(), "timeout") ? 3 : 2, iOException);
            k.a(tVar, k.a(tVar, iOException, elapsedRealtime, gVar, bArr));
        }
    }

    public b(a aVar, c cVar) {
        this.f30348a = aVar;
        this.f30349b = cVar;
    }

    private static void a(p pVar, int i10, Exception exc) {
        if (pVar != null) {
            try {
                pVar.a(exc);
                pVar.a(i10);
            } catch (Exception unused) {
            }
        }
    }

    private static void a(p pVar, int i10) {
        if (pVar != null) {
            try {
                pVar.b(i10);
            } catch (Exception unused) {
            }
        }
    }
}
