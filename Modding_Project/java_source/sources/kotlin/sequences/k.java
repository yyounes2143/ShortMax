package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SequenceBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public class k {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Sequences.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SequenceBuilder.kt\nkotlin/sequences/SequencesKt__SequenceBuilderKt\n*L\n1#1,22:1\n26#2:23\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements Sequence<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f61131a;

        public a(Function2 function2) {
            this.f61131a = function2;
        }

        @Override // kotlin.sequences.Sequence
        public Iterator<T> iterator() {
            return j.a(this.f61131a);
        }
    }

    @NotNull
    public static <T> Iterator<T> a(@NotNull Function2<? super i<? super T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        h hVar = new h();
        hVar.i(kotlin.coroutines.intrinsics.a.a(block, hVar, hVar));
        return hVar;
    }

    @NotNull
    public static <T> Sequence<T> b(@NotNull Function2<? super i<? super T>, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return new a(block);
    }
}
