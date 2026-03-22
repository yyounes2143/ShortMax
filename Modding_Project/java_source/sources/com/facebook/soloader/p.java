package com.facebook.soloader;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Manifest.java */
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public final String f16869a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f16870b;

    p(String str, List<String> list) {
        this.f16869a = str;
        this.f16870b = Collections.unmodifiableList(list);
    }

    public static p a(DataInputStream dataInputStream) throws IOException {
        String c10 = c(dataInputStream);
        int readShort = dataInputStream.readShort() & 65535;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < readShort; i10++) {
            arrayList.add(d(dataInputStream));
        }
        return new p(c10, arrayList);
    }

    public static p b(InputStream inputStream) throws IOException {
        return a(new DataInputStream(inputStream));
    }

    private static String c(DataInputStream dataInputStream) throws IOException {
        byte readByte = dataInputStream.readByte();
        if (readByte != 1) {
            if (readByte != 2) {
                if (readByte != 3) {
                    if (readByte == 4) {
                        return "x86";
                    }
                    throw new RuntimeException("Unrecognized arch id: " + ((int) readByte));
                }
                return "x86_64";
            }
            return "armeabi-v7a";
        }
        return "arm64-v8a";
    }

    private static String d(DataInputStream dataInputStream) throws IOException {
        byte[] bArr = new byte[dataInputStream.readShort() & 65535];
        dataInputStream.readFully(bArr);
        return new String(bArr, StandardCharsets.UTF_8);
    }
}
