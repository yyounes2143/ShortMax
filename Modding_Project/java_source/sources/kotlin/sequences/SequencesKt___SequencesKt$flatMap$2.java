package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: _Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class SequencesKt___SequencesKt$flatMap$2<R> extends FunctionReferenceImpl implements Function1<Sequence<? extends R>, Iterator<? extends R>> {

    /* renamed from: a  reason: collision with root package name */
    public static final SequencesKt___SequencesKt$flatMap$2 f61094a = new SequencesKt___SequencesKt$flatMap$2();

    SequencesKt___SequencesKt$flatMap$2() {
        super(1, Sequence.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: b */
    public final Iterator<R> invoke(Sequence<? extends R> p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return (Iterator<? extends R>) p02.iterator();
    }
}
