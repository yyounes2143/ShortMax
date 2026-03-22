package vt;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c1<E> extends x<E, Set<? extends E>, LinkedHashSet<E>> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f69384b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(@NotNull KSerializer<E> eSerializer) {
        super(eSerializer);
        Intrinsics.checkNotNullParameter(eSerializer, "eSerializer");
        this.f69384b = new b1(eSerializer.getDescriptor());
    }

    @Override // vt.w, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69384b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: q */
    public LinkedHashSet<E> a() {
        return new LinkedHashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: r */
    public int b(@NotNull LinkedHashSet<E> linkedHashSet) {
        Intrinsics.checkNotNullParameter(linkedHashSet, "<this>");
        return linkedHashSet.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: s */
    public void c(@NotNull LinkedHashSet<E> linkedHashSet, int i10) {
        Intrinsics.checkNotNullParameter(linkedHashSet, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w
    /* renamed from: t */
    public void n(@NotNull LinkedHashSet<E> linkedHashSet, int i10, E e10) {
        Intrinsics.checkNotNullParameter(linkedHashSet, "<this>");
        linkedHashSet.add(e10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: u */
    public LinkedHashSet<E> k(@NotNull Set<? extends E> set) {
        LinkedHashSet<E> linkedHashSet;
        Intrinsics.checkNotNullParameter(set, "<this>");
        if (set instanceof LinkedHashSet) {
            linkedHashSet = (LinkedHashSet) set;
        } else {
            linkedHashSet = null;
        }
        if (linkedHashSet == null) {
            return new LinkedHashSet<>(set);
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: v */
    public Set<E> l(@NotNull LinkedHashSet<E> linkedHashSet) {
        Intrinsics.checkNotNullParameter(linkedHashSet, "<this>");
        return linkedHashSet;
    }
}
