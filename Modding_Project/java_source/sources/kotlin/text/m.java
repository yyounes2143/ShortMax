package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Appendable.kt */
@Metadata
/* loaded from: classes8.dex */
public class m {
    public static <T> void a(@NotNull Appendable appendable, T t10, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        boolean z10;
        Intrinsics.checkNotNullParameter(appendable, "<this>");
        if (function1 != null) {
            appendable.append(function1.invoke(t10));
            return;
        }
        if (t10 == null) {
            z10 = true;
        } else {
            z10 = t10 instanceof CharSequence;
        }
        if (z10) {
            appendable.append((CharSequence) t10);
        } else if (t10 instanceof Character) {
            appendable.append(((Character) t10).charValue());
        } else {
            appendable.append(t10.toString());
        }
    }
}
