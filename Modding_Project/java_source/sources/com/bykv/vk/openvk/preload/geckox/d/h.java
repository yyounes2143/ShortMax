package com.bykv.vk.openvk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.k;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.util.List;
/* compiled from: RetryPatchDownloadInterceptor.java */
/* loaded from: classes3.dex */
public class h extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private int f11398d = 0;

    @Override // com.bykv.vk.openvk.preload.b.k
    protected final boolean a(Throwable th2) {
        GeckoLogger.w("gecko-debug-tag", "patch update failed", th2);
        if (this.f11398d >= g().getPatch().getUrlList().size()) {
            return false;
        }
        return (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.a) || (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.b);
    }

    @Override // com.bykv.vk.openvk.preload.b.k
    protected final /* synthetic */ Pair<Uri, UpdatePackage> a() {
        UpdatePackage g10 = g();
        List<String> urlList = g10.getPatch().getUrlList();
        int i10 = this.f11398d;
        this.f11398d = i10 + 1;
        return new Pair<>(Uri.parse(urlList.get(i10)), g10);
    }
}
