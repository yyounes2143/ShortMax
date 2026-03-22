package jk;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContinuationExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e {
    public static final <T> void a(@NotNull gt.i<? super T> iVar, T t10) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        if (iVar.isActive() && !iVar.isCompleted()) {
            iVar.resumeWith(Result.d(t10));
        }
    }
}
