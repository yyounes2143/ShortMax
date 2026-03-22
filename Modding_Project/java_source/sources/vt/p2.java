package vt;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p2<ElementKlass, Element extends ElementKlass> extends w<Element, Element[], ArrayList<Element>> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final KClass<ElementKlass> f69490b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69491c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p2(@NotNull KClass<ElementKlass> kClass, @NotNull KSerializer<Element> eSerializer) {
        super(eSerializer, null);
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(eSerializer, "eSerializer");
        this.f69490b = kClass;
        this.f69491c = new d(eSerializer.getDescriptor());
    }

    @Override // vt.w, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69491c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: o */
    public ArrayList<Element> a() {
        return new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: p */
    public int b(@NotNull ArrayList<Element> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: q */
    public void c(@NotNull ArrayList<Element> arrayList, int i10) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: r */
    public Iterator<Element> d(@NotNull Element[] elementArr) {
        Intrinsics.checkNotNullParameter(elementArr, "<this>");
        return ArrayIteratorKt.iterator(elementArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: s */
    public int e(@NotNull Element[] elementArr) {
        Intrinsics.checkNotNullParameter(elementArr, "<this>");
        return elementArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w
    /* renamed from: t */
    public void n(@NotNull ArrayList<Element> arrayList, int i10, Element element) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        arrayList.add(i10, element);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: u */
    public ArrayList<Element> k(@NotNull Element[] elementArr) {
        Intrinsics.checkNotNullParameter(elementArr, "<this>");
        return new ArrayList<>(kotlin.collections.n.g(elementArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: v */
    public Element[] l(@NotNull ArrayList<Element> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        return (Element[]) a2.q(arrayList, this.f69490b);
    }
}
