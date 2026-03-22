package vt;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class x<E, C extends Collection<? extends E>, B> extends w<E, C, B> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@NotNull KSerializer<E> element) {
        super(element, null);
        Intrinsics.checkNotNullParameter(element, "element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: o */
    public Iterator<E> d(@NotNull C c10) {
        Intrinsics.checkNotNullParameter(c10, "<this>");
        return c10.iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: p */
    public int e(@NotNull C c10) {
        Intrinsics.checkNotNullParameter(c10, "<this>");
        return c10.size();
    }
}
