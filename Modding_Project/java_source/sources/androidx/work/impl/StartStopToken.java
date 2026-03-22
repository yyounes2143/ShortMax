package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StartStopToken.kt */
@Metadata
/* loaded from: classes2.dex */
public final class StartStopToken {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final WorkGenerationalId f1695id;

    public StartStopToken(@NotNull WorkGenerationalId id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f1695id = id2;
    }

    @NotNull
    public final WorkGenerationalId getId() {
        return this.f1695id;
    }
}
