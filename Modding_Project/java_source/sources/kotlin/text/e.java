package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: HexFormat.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormatKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,844:1\n1088#2,2:845\n*S KotlinDebug\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormatKt\n*L\n843#1:845,2\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (Intrinsics.compare((int) charAt, 128) >= 0 || Character.isLetter(charAt)) {
                return true;
            }
        }
        return false;
    }
}
