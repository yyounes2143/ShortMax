package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringNumberConversionsJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n1#1,274:1\n265#1,7:275\n265#1,7:282\n265#1,7:289\n265#1,7:296\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n142#1:275,7\n149#1:282,7\n229#1:289,7\n240#1:296,7\n*E\n"})
/* loaded from: classes8.dex */
public class v extends u {
    @Nullable
    public static Double r(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (!l.f61234b.k(str)) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Nullable
    public static Float s(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            if (!l.f61234b.k(str)) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
