package com.bykv.vk.openvk.preload.geckox.utils;

import java.io.File;
import java.io.FileFilter;
/* compiled from: ResVersionUtils.java */
/* loaded from: classes3.dex */
public final class g {
    public static Long a(File file) {
        File[] listFiles = file.listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.utils.g.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        Long l10 = null;
        if (listFiles != null && listFiles.length != 0) {
            for (File file2 : listFiles) {
                try {
                    Long valueOf = Long.valueOf(file2.getName());
                    long longValue = valueOf.longValue();
                    if (l10 == null || longValue > l10.longValue()) {
                        l10 = valueOf;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return l10;
    }
}
