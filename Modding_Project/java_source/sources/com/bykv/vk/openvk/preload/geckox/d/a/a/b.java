package com.bykv.vk.openvk.preload.geckox.d.a.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.io.File;
/* compiled from: DownloadFullSingleFileInterceptor.java */
/* loaded from: classes3.dex */
public class b extends d<Pair<Uri, UpdatePackage>, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> {

    /* renamed from: d  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.b f11376d;

    /* renamed from: e  reason: collision with root package name */
    private File f11377e;

    public static String a(UpdatePackage updatePackage, String str) {
        if (!TextUtils.isEmpty(str)) {
            int lastIndexOf = str.lastIndexOf(DomExceptionUtils.SEPARATOR);
            if (lastIndexOf != -1) {
                String substring = str.substring(lastIndexOf + 1);
                if (TextUtils.isEmpty(substring)) {
                    throw new RuntimeException("url path illegal, url:".concat(str));
                }
                return substring;
            }
            throw new RuntimeException("url path illegal, url:".concat(str));
        }
        throw new RuntimeException("url empty, channel:" + updatePackage.getChannel());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        this.f11376d = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.f11377e = (File) objArr[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.b.d
    public Object a(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        GeckoLogger.d("gecko-debug-tag", "start download full single file channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.f11377e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(updatePackage.getAccessKey());
        String str = File.separator;
        sb2.append(str);
        sb2.append(updatePackage.getChannel());
        sb2.append(str);
        sb2.append(updatePackage.getVersion());
        sb2.append("--updating");
        File file2 = new File(file, sb2.toString());
        file2.mkdirs();
        File file3 = new File(file2, "res" + str + a(updatePackage, uri));
        this.f11376d.a();
        com.bykv.vk.openvk.preload.geckox.buffer.a a10 = com.bykv.vk.openvk.preload.geckox.buffer.a.a.a(file3, length);
        try {
            this.f11376d.i().downloadFile(uri, length, new BufferOutputStream(a10));
            try {
                try {
                    Object a11 = bVar.a((com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>>) new Pair<>(a10, updatePackage));
                    try {
                        a10.e();
                    } catch (Exception e10) {
                        GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e10);
                    }
                    return a11;
                } catch (Throwable th2) {
                    try {
                        a10.e();
                    } catch (Exception e11) {
                        GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e11);
                    }
                    throw th2;
                }
            } catch (Exception e12) {
                throw e12;
            }
        } catch (Throwable th3) {
            a10.e();
            throw new com.bykv.vk.openvk.preload.geckox.b.a("download full single file failed! url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th3.getMessage(), th3);
        }
    }
}
