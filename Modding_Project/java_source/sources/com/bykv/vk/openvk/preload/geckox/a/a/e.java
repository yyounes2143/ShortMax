package com.bykv.vk.openvk.preload.geckox.a.a;

import java.io.File;
import java.util.List;
/* compiled from: FIFOCachePolicy.java */
/* loaded from: classes3.dex */
final class e extends b {
    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a(a aVar, File file, List<String> list) {
        super.a(aVar, file, list);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a() {
        for (String str : this.f11309e) {
            List<File> b10 = com.bykv.vk.openvk.preload.geckox.utils.b.b(new File(this.f11308d, str));
            if (b10 != null && b10.size() > this.f11307c.f11299a) {
                for (File file : b10.subList(0, b10.size() - this.f11307c.f11299a)) {
                    com.bykv.vk.openvk.preload.geckox.a.c.b(file.getAbsolutePath());
                    if (this.f11307c.f11300b != null) {
                        file.getName();
                    }
                }
            }
        }
    }
}
