package com.bytedance.sdk.component.Pfn.tB.oJ.oJ;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes3.dex */
final class ex {
    static final Charset oJ = Charset.forName(C.ASCII_NAME);
    static final Charset ZYk = Charset.forName("UTF-8");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void oJ(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    oJ(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
                }
            }
            return;
        }
        throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
    }
}
