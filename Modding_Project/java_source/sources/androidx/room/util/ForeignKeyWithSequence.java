package androidx.room.util;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SchemaInfoUtil.kt */
@Metadata
/* loaded from: classes2.dex */
final class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {
    @NotNull
    private final String from;

    /* renamed from: id  reason: collision with root package name */
    private final int f1647id;
    private final int sequence;
    @NotNull

    /* renamed from: to  reason: collision with root package name */
    private final String f1648to;

    public ForeignKeyWithSequence(int i10, int i11, @NotNull String from, @NotNull String to2) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to2, "to");
        this.f1647id = i10;
        this.sequence = i11;
        this.from = from;
        this.f1648to = to2;
    }

    @NotNull
    public final String getFrom() {
        return this.from;
    }

    public final int getId() {
        return this.f1647id;
    }

    public final int getSequence() {
        return this.sequence;
    }

    @NotNull
    public final String getTo() {
        return this.f1648to;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull ForeignKeyWithSequence other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i10 = this.f1647id - other.f1647id;
        return i10 == 0 ? this.sequence - other.sequence : i10;
    }
}
