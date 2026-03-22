package com.facebook.imageutils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import ms.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebpUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebpUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n2632#2,3:183\n*S KotlinDebug\n*F\n+ 1 WebpUtil.kt\ncom/facebook/imageutils/WebpUtil\n*L\n144#1:183,3\n*E\n"})
/* loaded from: classes3.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f16083a = new j();

    private j() {
    }

    private final boolean a(byte[] bArr, String str) {
        if (bArr.length != str.length()) {
            return false;
        }
        IntRange m02 = n.m0(bArr);
        if (!(m02 instanceof Collection) || !((Collection) m02).isEmpty()) {
            Iterator<Integer> it = m02.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                if (((byte) str.charAt(nextInt)) != bArr[nextInt]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final int b(@NotNull InputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        j jVar = f16083a;
        return (jVar.e(stream) << 8) | jVar.e(stream);
    }

    private final String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append((char) (s.b(b10) & 65535));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final int d(InputStream inputStream) throws IOException {
        int e10 = e(inputStream);
        int e11 = e(inputStream);
        return (e(inputStream) << 24) | (e(inputStream) << 16) | (e11 << 8) | e10;
    }

    private final int e(InputStream inputStream) throws IOException {
        return inputStream.read() & 255;
    }

    @Nullable
    public static final Pair<Integer, Integer> f(@NotNull InputStream stream) {
        j jVar;
        Intrinsics.checkNotNullParameter(stream, "stream");
        byte[] bArr = new byte[4];
        try {
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            try {
                stream.read(bArr);
                jVar = f16083a;
            } catch (IOException e11) {
                e11.printStackTrace();
                stream.close();
            }
            if (!jVar.a(bArr, "RIFF")) {
                try {
                    stream.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                return null;
            }
            jVar.d(stream);
            stream.read(bArr);
            if (!jVar.a(bArr, "WEBP")) {
                try {
                    stream.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                return null;
            }
            stream.read(bArr);
            String c10 = jVar.c(bArr);
            int hashCode = c10.hashCode();
            if (hashCode != 2640674) {
                if (hashCode != 2640718) {
                    if (hashCode == 2640730 && c10.equals("VP8X")) {
                        Pair<Integer, Integer> i10 = jVar.i(stream);
                        try {
                            stream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                        return i10;
                    }
                } else if (c10.equals("VP8L")) {
                    Pair<Integer, Integer> h10 = jVar.h(stream);
                    try {
                        stream.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                    return h10;
                }
            } else if (c10.equals("VP8 ")) {
                Pair<Integer, Integer> g10 = jVar.g(stream);
                try {
                    stream.close();
                } catch (IOException e16) {
                    e16.printStackTrace();
                }
                return g10;
            }
            stream.close();
            return null;
        } catch (Throwable th2) {
            try {
                stream.close();
            } catch (IOException e17) {
                e17.printStackTrace();
            }
            throw th2;
        }
    }

    private final Pair<Integer, Integer> g(InputStream inputStream) throws IOException {
        inputStream.skip(7L);
        int e10 = e(inputStream);
        int e11 = e(inputStream);
        int e12 = e(inputStream);
        if (e10 == 157 && e11 == 1 && e12 == 42) {
            return new Pair<>(Integer.valueOf(b(inputStream)), Integer.valueOf(b(inputStream)));
        }
        return null;
    }

    private final Pair<Integer, Integer> h(InputStream inputStream) throws IOException {
        d(inputStream);
        if (e(inputStream) != 47) {
            return null;
        }
        int read = inputStream.read();
        return new Pair<>(Integer.valueOf(((inputStream.read() & 255) | ((read & 63) << 8)) + 1), Integer.valueOf((((inputStream.read() & 15) << 10) | ((inputStream.read() & 255) << 2) | ((read & 192) >> 6)) + 1));
    }

    private final Pair<Integer, Integer> i(InputStream inputStream) throws IOException {
        inputStream.skip(8L);
        return new Pair<>(Integer.valueOf(j(inputStream) + 1), Integer.valueOf(j(inputStream) + 1));
    }

    private final int j(InputStream inputStream) throws IOException {
        return (e(inputStream) << 16) | (e(inputStream) << 8) | e(inputStream);
    }
}
