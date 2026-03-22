package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.ByteArrayInputStream;
import java.io.IOException;
/* compiled from: DataFetchProducer.java */
/* loaded from: classes3.dex */
public class p extends k0 {
    public p(n2.g gVar) {
        super(i2.a.a(), gVar);
    }

    @VisibleForTesting
    static byte[] g(String str) {
        k2.h.b(Boolean.valueOf(str.substring(0, 5).equals("data:")));
        int indexOf = str.indexOf(44);
        String substring = str.substring(indexOf + 1, str.length());
        if (h(str.substring(0, indexOf))) {
            return Base64.decode(substring, 0);
        }
        String decode = Uri.decode(substring);
        k2.h.g(decode);
        return decode.getBytes();
    }

    @VisibleForTesting
    static boolean h(String str) {
        if (!str.contains(";")) {
            return false;
        }
        String[] split = str.split(";");
        return split[split.length - 1].equals(TTVideoEngineInterface.PLAY_API_KEY_BASE64);
    }

    @Override // com.facebook.imagepipeline.producers.k0
    protected y3.k d(ImageRequest imageRequest) throws IOException {
        byte[] g10 = g(imageRequest.w().toString());
        return c(new ByteArrayInputStream(g10), g10.length);
    }

    @Override // com.facebook.imagepipeline.producers.k0
    protected String f() {
        return "DataFetchProducer";
    }
}
