package com.appsflyer.internal;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nStringExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,126:1\n13004#2,3:127\n*S KotlinDebug\n*F\n+ 1 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n*L\n54#1:127,3\n*E\n"})
/* loaded from: classes2.dex */
public final class AFk1xSDK {
    public static final String getMediationNetwork(String str, String str2) {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "");
        byte[] digest = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(digest, "");
        String str3 = "";
        for (byte b10 : digest) {
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "");
            str3 = str3 + format;
        }
        return str3;
    }

    public static final int getMediationNetwork(@NotNull String str) {
        String a10;
        Integer intOrNull;
        String a11;
        Integer intOrNull2;
        String a12;
        Integer intOrNull3;
        Intrinsics.checkNotNullParameter(str, "");
        MatchResult j10 = new Regex("(\\d+).(\\d+).(\\d+).*").j(str);
        if (j10 != null) {
            MatchGroup matchGroup = j10.b().get(1);
            int i10 = 0;
            int intValue = ((matchGroup == null || (a12 = matchGroup.a()) == null || (intOrNull3 = StringsKt.toIntOrNull(a12)) == null) ? 0 : intOrNull3.intValue()) * TTVideoEngineInterface.PLAYER_TIME_BASE;
            MatchGroup matchGroup2 = j10.b().get(2);
            int intValue2 = intValue + (((matchGroup2 == null || (a11 = matchGroup2.a()) == null || (intOrNull2 = StringsKt.toIntOrNull(a11)) == null) ? 0 : intOrNull2.intValue()) * 1000);
            MatchGroup matchGroup3 = j10.b().get(3);
            if (matchGroup3 != null && (a10 = matchGroup3.a()) != null && (intOrNull = StringsKt.toIntOrNull(a10)) != null) {
                i10 = intOrNull.intValue();
            }
            return intValue2 + i10;
        }
        return -1;
    }
}
