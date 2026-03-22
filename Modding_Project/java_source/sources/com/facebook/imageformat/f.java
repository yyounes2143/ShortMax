package com.facebook.imageformat;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageFormatCheckerUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageFormatCheckerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n2632#2,3:109\n*S KotlinDebug\n*F\n+ 1 ImageFormatCheckerUtils.kt\ncom/facebook/imageformat/ImageFormatCheckerUtils\n*L\n57#1:109,3\n*E\n"})
/* loaded from: classes3.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f15629a = new f();

    private f() {
    }

    @NotNull
    public static final byte[] a(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            Charset forName = Charset.forName("ASCII");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
            byte[] bytes = value.getBytes(forName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return bytes;
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("ASCII not found!", e10);
        }
    }

    public static final boolean b(@NotNull byte[] byteArray, @NotNull byte[] pattern, int i10) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        if (pattern.length + i10 > byteArray.length) {
            return false;
        }
        IntRange m02 = n.m0(pattern);
        if (!(m02 instanceof Collection) || !((Collection) m02).isEmpty()) {
            Iterator<Integer> it = m02.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                if (byteArray[i10 + nextInt] != pattern[nextInt]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final boolean c(@NotNull byte[] byteArray, @NotNull byte[] pattern) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        return b(byteArray, pattern, 0);
    }
}
