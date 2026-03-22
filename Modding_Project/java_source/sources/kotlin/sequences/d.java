package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.i0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
final class d implements Sequence, c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f61107a = new d();

    private d() {
    }

    @Override // kotlin.sequences.c
    @NotNull
    /* renamed from: c */
    public d a(int i10) {
        return f61107a;
    }

    @Override // kotlin.sequences.c
    @NotNull
    /* renamed from: d */
    public d b(int i10) {
        return f61107a;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator iterator() {
        return i0.f61005a;
    }
}
