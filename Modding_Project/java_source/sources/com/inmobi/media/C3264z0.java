package com.inmobi.media;

import android.net.Uri;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3264z0 implements InterfaceC3185u1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B0 f25476a;

    public C3264z0(B0 b02) {
        this.f25476a = b02;
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch, byte b10) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        B0 b02 = this.f25476a;
        InterfaceC3269z5 interfaceC3269z5 = b02.f23499f;
        if (interfaceC3269z5 != null) {
            String str = b02.f23497d;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).b(str, "onAssetsFetchFailure of batch " + assetBatch);
        }
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch) {
        String str;
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        B0 b02 = this.f25476a;
        InterfaceC3269z5 interfaceC3269z5 = b02.f23499f;
        if (interfaceC3269z5 != null) {
            String str2 = b02.f23497d;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "onAssetsFetchSuccess of batch " + assetBatch);
        }
        Set set = assetBatch.f24911h;
        Iterator it = assetBatch.f24910g.iterator();
        while (it.hasNext()) {
            C3008j c3008j = (C3008j) it.next();
            if (!c3008j.f24876i) {
                this.f25476a.getClass();
                Iterator it2 = set.iterator();
                while (true) {
                    str = "";
                    if (!it2.hasNext()) {
                        break;
                    }
                    C3243xb c3243xb = (C3243xb) it2.next();
                    if (Intrinsics.areEqual(c3243xb.f25434b, c3008j.f24869b)) {
                        byte b10 = c3243xb.f25433a;
                        if (b10 == 2) {
                            str = "image";
                        } else if (b10 == 1) {
                            str = "gif";
                        } else if (b10 == 0) {
                            str = "video";
                        }
                    }
                }
                Pair a10 = ms.k.a("latency", Long.valueOf(c3008j.f24878k));
                long j10 = 0;
                try {
                    String path = Uri.parse(c3008j.f24870c).getPath();
                    if (path != null) {
                        File file = new File(path);
                        if (file.exists()) {
                            j10 = file.length();
                        }
                    }
                } catch (Exception unused) {
                    Intrinsics.checkNotNullExpressionValue("F4", "TAG");
                }
                Map<String, Object> o10 = kotlin.collections.p0.o(a10, ms.k.a("size", Float.valueOf((((float) j10) * 1.0f) / 1024)), ms.k.a("assetType", str), ms.k.a("networkType", L3.q()));
                String b11 = this.f25476a.f23496c.b();
                if (b11 != null) {
                    o10.put("adType", b11);
                }
                this.f25476a.f23495b.b("AssetDownloaded", o10);
            }
        }
        B0 b03 = this.f25476a;
        InterfaceC3269z5 interfaceC3269z52 = b03.f23499f;
        if (interfaceC3269z52 != null) {
            String str3 = b03.f23497d;
            StringBuilder a11 = H6.a(str3, "access$getTAG$p(...)", "Notifying ad unit with placement ID (");
            a11.append(this.f25476a.f23496c);
            a11.append(')');
            ((A5) interfaceC3269z52).a(str3, a11.toString());
        }
    }
}
