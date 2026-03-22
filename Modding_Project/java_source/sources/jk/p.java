package jk;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.Resolution;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlayerExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class p {
    public static final int a(@NotNull Resolution resolution) {
        Intrinsics.checkNotNullParameter(resolution, "<this>");
        try {
            return Integer.parseInt(b(resolution));
        } catch (Exception unused) {
            return -1;
        }
    }

    @NotNull
    public static final String b(@NotNull Resolution resolution) {
        Intrinsics.checkNotNullParameter(resolution, "<this>");
        return StringsKt.P(String.valueOf(resolution), TtmlNode.TAG_P, "", false, 4, null);
    }
}
