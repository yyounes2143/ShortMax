package ws;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: FilePathComponents.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFilePathComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1557#2:150\n1628#2,3:151\n*S KotlinDebug\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n*L\n134#1:150\n134#1:151,3\n*E\n"})
/* loaded from: classes8.dex */
class g {
    private static final int a(String str) {
        int p02;
        char c10 = File.separatorChar;
        int p03 = StringsKt.p0(str, c10, 0, false, 4, null);
        if (p03 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c10 || (p02 = StringsKt.p0(str, c10, 2, false, 4, null)) < 0) {
                return 1;
            }
            int p04 = StringsKt.p0(str, c10, p02 + 1, false, 4, null);
            if (p04 >= 0) {
                return p04 + 1;
            }
            return str.length();
        } else if (p03 > 0 && str.charAt(p03 - 1) == ':') {
            return p03 + 1;
        } else {
            if (p03 != -1 || !StringsKt.g0(str, ':', false, 2, null)) {
                return 0;
            }
            return str.length();
        }
    }

    public static final boolean b(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        if (a(path) > 0) {
            return true;
        }
        return false;
    }
}
