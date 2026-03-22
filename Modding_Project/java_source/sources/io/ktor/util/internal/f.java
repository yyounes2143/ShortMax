package io.ktor.util.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LockFreeLinkedList.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final d f59312a;

    public f(@NotNull d ref) {
        Intrinsics.checkNotNullParameter(ref, "ref");
        this.f59312a = ref;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.f59312a + ']';
    }
}
