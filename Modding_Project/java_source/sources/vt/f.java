package vt;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f<E> extends x<E, List<? extends E>, ArrayList<E>> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f69406b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@NotNull KSerializer<E> element) {
        super(element);
        Intrinsics.checkNotNullParameter(element, "element");
        this.f69406b = new e(element.getDescriptor());
    }

    @Override // vt.w, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69406b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: q */
    public ArrayList<E> a() {
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: r */
    public int b(@NotNull ArrayList<E> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: s */
    public void c(@NotNull ArrayList<E> arrayList, int i10) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w
    /* renamed from: t */
    public void n(@NotNull ArrayList<E> arrayList, int i10, E e10) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        arrayList.add(i10, e10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: u */
    public ArrayList<E> k(@NotNull List<? extends E> list) {
        ArrayList<E> arrayList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list instanceof ArrayList) {
            arrayList = (ArrayList) list;
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            return new ArrayList<>(list);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: v */
    public List<E> l(@NotNull ArrayList<E> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        return arrayList;
    }
}
