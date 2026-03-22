package r3;

import java.util.LinkedHashSet;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BoundedLinkedHashSet.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f65493a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashSet<E> f65494b;

    public d(int i10) {
        this.f65493a = i10;
        this.f65494b = new LinkedHashSet<>(i10);
    }

    public final synchronized boolean a(E e10) {
        try {
            if (this.f65494b.size() == this.f65493a) {
                LinkedHashSet<E> linkedHashSet = this.f65494b;
                linkedHashSet.remove(linkedHashSet.iterator().next());
            }
            this.f65494b.remove(e10);
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f65494b.add(e10);
    }

    public final synchronized boolean b(E e10) {
        return this.f65494b.contains(e10);
    }
}
